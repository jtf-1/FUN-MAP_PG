-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- BEGIN SUPPORT AIRCRAFT SECTION
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--- Support Aircraft

-- **NOTE** THIS FILE MUST BE LOADED BEFORE SUPPORTAIRCRAFT_DATA.LUA IS LOADED

-- Spawn support aircraft (tankers, awacs) at zone markers placed in the mission editor.

-- This file contains all functions and key values
-- supportaircraft_data.lua contains the config data specific to the miz 
-- in which it will be used.

-- In the mission editor, place a zone where you want the support aircraft to spawn.
-- Under SUPPORTAC.missions, add a config block for the aircraft you intend to spawn.
-- See the comments in the example block for explanations of each config option.

-- A late activated template is required for each support type that is to be spawned.
-- The template should have a base airfield set as its base airfield

SUPPORTAC = {}

SUPPORTAC.useSRS = false -- if true, messages will be sent over SRS using the MISSIONSRS module. If false, messages will be sent as in-game text.

-- inherit everything from BASE class
-- SUPPORTAC = BASE:Inherit(SUPPORTAC, BASE:New()) -- #SUPPORTAC

-- if SUPPORTAC.trace then
--   SUPPORTAC:TraceOnOff(true)
--   SUPPORTAC:TraceAll()
--   _msg = string.format("[SUPPORTAC] Tracing is %s.", tostring(SUPPORTAC:IsTrace()))
--   BASE:I(_msg)
-- end

-- function to create new support mission and flightGroup
function SUPPORTAC:NewMission(mission, initDelay)
  local _msg = string.format("[SUPPORTAC] Create new mission for %s", mission.name)
  BASE:I(_msg)

  -- create new mission
  local newMission = {}
  local missionCoordinate = ZONE:FindByName(mission.zone):GetCoordinate()
  local missionAltitude = mission.flightLevel * 100
  local missionSpeed = mission.speed
  local missionHeading = mission.heading
  
  -- use appropriate AUFTRAG type for mission
  if mission.category == SUPPORTAC.category.tanker then
    local missionLeg = (mission.leg and mission.leg or SUPPORTAC.default.tankerLeg) -- set leg length. Either mission defined or use default for tanker.
    -- create new tanker AUFTRAG mission
    newMission = AUFTRAG:NewTANKER(
      missionCoordinate, 
      missionAltitude, 
      missionSpeed, 
      missionHeading, 
      missionLeg
      )
    _msg = string.format("[SUPPORTAC] New mission created: %s", newMission:GetName())
    BASE:I(_msg)
  elseif mission.category == SUPPORTAC.category.awacs then
    local missionLeg = (mission.leg and mission.leg or SUPPORTAC.default.awacsLeg) -- set leg length. Either mission defined or use default for AWACS.
    -- create new AWACS AUFTRAG mission
    newMission = AUFTRAG:NewAWACS(
      missionCoordinate,
      missionAltitude,
      missionSpeed,
      missionHeading,
      missionLeg
      )
    _msg = string.format("[SUPPORTAC] New mission created: %s", newMission:GetName())
    BASE:I(_msg)
  else
    _msg = "[SUPPORTAC] Mission category not defined!"
    BASE:E(_msg)
  end

  if mission.tacan ~= nil then
    newMission:SetTACAN(mission.tacan, mission.tacanid)
  end

  newMission:SetRadio(mission.radio)

  local despawnDelay = SUPPORTAC.default.despawnDelay
  local activateDelay = SUPPORTAC.default.activateDelay + despawnDelay

  -- spawn new group
  local spawnGroup = mission.missionSpawnTemplate:Spawn()
  _msg = string.format("[SUPPORTAC] New late activated group %s spawned.", spawnGroup:GetName())
  BASE:I(_msg)

  -- create new flightGroup
  local flightGroup = FLIGHTGROUP:New(spawnGroup)
    :SetDefaultCallsign(mission.callsign, mission.callsignNumber)
    :SetDefaultRadio(SUPPORTAC.default.radio)
    --:SetDefaultAltitude(mission.flightLevel * 100)
    :SetDefaultSpeed(mission.speed) -- mission.speed + (mission.flightLevel / 2)
    
  if initDelay then  
    _msg = string.format("[SUPPORTAC] Activation of %s set to instant.", flightGroup:GetName())
    BASE:I(_msg)
    flightGroup:Activate()
  else
    _msg = string.format("[SUPPORTAC] Activation delay of %s set to %d.", flightGroup:GetName(), activateDelay)
    BASE:I(_msg)
    flightGroup:Activate(activateDelay)
  end

  -- function call after flightGroup is spawned
  -- assign mission to new ac
  function flightGroup:OnAfterSpawned()
    local _msg = string.format("[SUPPORTAC] Flightgroup %s activated.", self:GetName())
    BASE:I(_msg)
    -- assign mission to flightGroup
    self:AddMission(newMission)
  end

  -- function called after flightGroup starts mission
  -- set RTB criteria
  function flightGroup:OnAfterMissionStart()
    local _msg = string.format("[SUPPORTAC] Mission %s for Flightgroup %s, %s has started.", self:GetMissionCurrent():GetName(), self:GetName(), self:GetCallsignName(true))
    BASE:I(_msg)
    self:SetFuelLowRTB()
    self:SetFuelLowRefuel(false)
    local fuelLowThreshold = (mission.fuelLowThreshold and mission.fuelLowThreshold or SUPPORTAC.default.fuelLowThreshold)

    if fuelLowThreshold > 0 then
      self:SetFuelLowThreshold(fuelLowThreshold) -- tune fuel RTB trigger for each support mission
    end

    -- function called after mission has started
    function flightGroup:OnAfterMissionCancel(From, Event, To, Mission)
      local _msg = string.format("[SUPPORTAC] OnAfterMissionCancel - Mission %s cancelled for Flightgroup %s with event: ", Mission:GetName(), self:GetName())
      local _array = {_msg, Event}
      BASE:I(_array)

      local msgText = "All players, %s is going off station. A new aircraft will be on station shortly."

      if self.group:IsAlive() == true then
        _msg = string.format("[SUPPORTAC] OnAfterMissionCancel - group %s IsAlive == true with health %d.",  self:GetName(), self.group:GetLife())
        BASE:I(_msg)
        if self.group:GetLife() <= 1 then -- the flightgroup has been killed!
          msgText = "All  players, %s is dead! A new aircraft will be on station shortly."
        else -- the flightgroup is in good health
          _msg = string.format("[SUPPORTAC] OnAfterMissionCancel - despawn of group %s set to %d.",  self:GetName(), SUPPORTAC.default.despawnDelay)
          BASE:I(_msg)
          -- turn off the flightgroup's TACAN
          self:TurnOffTACAN()
          -- despawn current flightgroup if still alive
          self:Despawn(SUPPORTAC.default.despawnDelay)
        end
      elseif self:IsAlive() == false then
        _msg = string.format("[SUPPORTAC] OnAfterMissionCancel - group %s IsAlive == false!",  self:GetName())
        BASE:E(_msg)
      else -- IsAlive == nil
        _msg = string.format("[SUPPORTAC] OnAfterMissionCancel - group %s IsAlive == nil!",  self:GetName())
        BASE:E(_msg)
      end

      -- send off station advisory message
      local msgText = string.format(msgText, self:GetCallsignName(true))
      local msgFreq = self:GetRadio()
      SUPPORTAC:SendMessage(msgText, msgFreq, noSRS)

      -- create a new mission to replace the departing support aircraft 
      SUPPORTAC:NewMission(mission)

    end

  end

end

-- function called to send message
-- if MISSIONSRS is loaded, message will be sent on aupport aircraft freq.
-- Otherwise, message will be sent as text to all.
function SUPPORTAC:SendMessage(msgText, msgFreq)
  local _msg = string.format("[SUPPORTAC] SendMessage: %s", msgText)
  BASE:I(_msg)
  if MISSIONSRS.Radio and SUPPORTAC.useSRS then
    MISSIONSRS:SendRadio(msgText, msgFreq)
  else
    MESSAGE:New(msgText):ToAll()
  end
end  

-- step through SUPPORTAC.aircraft
function SUPPORTAC:Start()
  local _msg = string.format("[SUPPORTAC] Start")
  BASE:I(_msg)

  for index, mission in ipairs(SUPPORTAC.missions) do
    _msg = "[SUPPORTAC] Start - mission"
    BASE:I({_msg, mission})

    -- check zone is present in miz
    if ZONE:FindByName(mission.zone) then 
      -- if trace is on, draw the zone on the map
      if BASE:IsTrace() then 
        -- draw mission zone on map
        ZONE:FindByName(mission.zone):DrawZone()
      end
      local missionSpawnType = mission.type
      -- check spawn template is present in miz
      if GROUP:FindByName(missionSpawnType) then
      
      end
      -- set spawn prefix unique to support mission
      local missionSpawnAlias = string.format("M%02d_%s_%s", index, mission.name, mission.type)
      -- spawn location
      local spawnAltitude = UTILS.FeetToMeters(mission.flightLevel * 100)
      local spawnDistance = UTILS.NMToMeters((mission.spawnDistance and mission.spawnDistance or SUPPORTAC.default.spawnDistance))
      local spawnHeading = (mission.heading and mission.heading or SUPPORTAC.default.heading)
      local spawnAngle = spawnHeading + 180
      if spawnAngle > 360 then 
        spawnAngle = spawnHeading - 180
      end
      local spawnCoordinate = ZONE:FindByName(mission.zone):GetCoordinate()
      spawnCoordinate:SetAltitude(spawnAltitude, true)
      spawnCoordinate:Translate(spawnDistance, spawnAngle, true, true)
      mission.missionSpawnTemplate = SPAWN:NewWithAlias(missionSpawnType, missionSpawnAlias)
        :InitLateActivated()
        :InitPositionCoordinate(spawnCoordinate)
        :InitHeading(mission.heading)
        _msg = string.format("[SUPPORTAC] New late activated mission spawn template added %s", missionSpawnAlias)
        BASE:I(_msg)
      -- create new mission
      SUPPORTAC:NewMission(mission, 0) -- create new mission with specified delay to flightgroup activation
    else
      _msg = string.format("[SUPPORTAC] DrawZone - Zone %s not found!", mission.zone)
      BASE:E(_msg)
    end

  end

end

-- END SUPPORT AIRCRAFT SECTION