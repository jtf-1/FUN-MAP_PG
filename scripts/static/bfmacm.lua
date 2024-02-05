------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- BEGIN ACM/BFM SECTION
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--- AI ACM/BFM
--
-- ZONES: if zones are MOOSE polygon zones, zone name in mission editor MUST be suffixed with ~ZONE_POLYGON
-- 

BFMACM = {
  menuAdded = {},
  menuF10 = {},
  zoneBfmAcmName = "ZONE_BFMACM01", -- The BFM/ACM Zone
  zonesNoSpawnName = { -- zones inside BFM/ACM zone within which adversaries may NOT be spawned.
  },
  adversary = {
    menu = { -- Adversary menu
      {template = "ADV_F16", menuText = "Adversary F-16"},
      {template = "ADV_F18", menuText = "Adversary F-18"},
      {template = "ADV_F4", menuText = "Adversary A-4"},
      {template = "ADV_MiG23", menuText = "Adversary MiG-23"},
      {template = "ADV_MiG29", menuText = "Adversary MiG-29"},
      {template = "ADV_Su27", menuText = "Adversary Su-27"},
    },
    range = {5, 10, 20}, -- ranges at which to spawn adversaries in nautical miles
    spawn = {}, -- container for aversary spawn objects
    defaultRadio = "377.8",
  },
}

BFMACM.rangeRadio = (JTF1.rangeRadio and JTF1.rangeRadio or BFMACM.defaultRadio)

-- add event handler
BFMACM.eventHandler = EVENTHANDLER:New()
BFMACM.eventHandler:HandleEvent(EVENTS.PlayerEnterAircraft)
BFMACM.eventHandler:HandleEvent(EVENTS.PlayerLeaveUnit)

-- check player is present and unit is alive
function BFMACM:GetPlayerUnitAndName(unitname)
  if unitname ~= nil then
    local DCSunit = Unit.getByName(unitname)
    if DCSunit then
      local playername=DCSunit:getPlayerName()
      local unit = UNIT:Find(DCSunit)
      if DCSunit and unit and playername then
        return unit, playername
      end
    end
  end
  -- Return nil if we could not find a player.
  return nil,nil
end

-- Add main BFMACM zone
 _zone = ( ZONE:FindByName(BFMACM.zoneBfmAcmName) and ZONE:FindByName(BFMACM.zoneBfmAcmName) or ZONE_POLYGON:FindByName(BFMACM.zoneBfmAcmName))
if _zone == nil then
  _msg = "[BFMACM] ERROR: BFM/ACM Zone: " .. tostring(BFMACM.zoneBfmAcmName) .. " not found!"
  BASE:E(_msg)
else
  BFMACM.zoneBfmAcm = _zone
  _msg = "[BFMACM] BFM/ACM Zone: " .. tostring(BFMACM.zoneBfmAcmName) .. " added."
  BASE:T(_msg)
end

-- Add spawn exclusion zone(s)
if BFMACM.zonesNoSpawnName then
  BFMACM.zonesNoSpawn = {}
  for i, zoneNoSpawnName in ipairs(BFMACM.zonesNoSpawnName) do
    _zone = (ZONE:FindByName(zoneNoSpawnName) and ZONE:FindByName(zoneNoSpawnName) or ZONE_POLYGON:FindByName(zoneNoSpawnName))
    if _zone == nil then
      _msg = "[BFMACM] ERROR: Exclusion zone: " .. tostring(zoneNoSpawnName) .. " not found!"
      BASE:E(_msg)
    else
      BFMACM.zonesNoSpawn[i] = _zone
      _msg = "[BFMACM] Exclusion zone: " .. tostring(zoneNoSpawnName) .. " added."
      BASE:T(_msg)
    end
  end
else
  BASE:T("[BFMACM] No exclusion zones defined")
end

-- Add spawn objects
for i, adversaryMenu in ipairs(BFMACM.adversary.menu) do
  _adv = GROUP:FindByName(adversaryMenu.template)
  if _adv then
    BFMACM.adversary.spawn[adversaryMenu.template] = SPAWN:New(adversaryMenu.template)
  else
    _msg = "[BFMACM] ERROR: spawn template: " .. tostring(adversaryMenu.template) .. " not found!" .. tostring(zoneNoSpawnName) .. " not found!"
    BASE:E(_msg)
  end
end

-- Spawn adversaries
function BFMACM.SpawnAdv(adv,qty,group,rng,unit)
  local playerName = (unit:GetPlayerName() and unit:GetPlayerName() or "Unknown") 
  local range = rng * 1852
  local hdg = unit:GetHeading()
  local pos = unit:GetPointVec2()
  local spawnPt = pos:Translate(range, hdg, true)
  local spawnVec3 = spawnPt:GetVec3()

  -- check player is in BFM ACM zone.
  local spawnAllowed = unit:IsInZone(BFMACM.zoneBfmAcm)
  local msgNoSpawn = ", Cannot spawn adversary aircraft if you are outside the BFM/ACM zone!"

  -- Check spawn location is not in an exclusion zone
  if spawnAllowed then
    if BFMACM.zonesNoSpawn then
      for i, zoneExclusion in ipairs(BFMACM.zonesNoSpawn) do
        spawnAllowed = not zoneExclusion:IsVec3InZone(spawnVec3)
      end
      msgNoSpawn = ", Cannot spawn adversary aircraft in an exclusion zone. Change course, or increase your range from the zone, and try again."
    end
  end

  -- Check spawn location is inside the BFM/ACM zone
  if spawnAllowed then
    spawnAllowed = BFMACM.zoneBfmAcm:IsVec3InZone(spawnVec3)
    msgNoSpawn = ", Cannot spawn adversary aircraft outside the BFM/ACM zone. Change course and try again."
  end

  -- Spawn the adversary, if not in an exclusion zone or outside the BFM/ACM zone.
  if spawnAllowed then
    BFMACM.adversary.spawn[adv]:InitGrouping(qty)
    :InitHeading(hdg + 180)
    :OnSpawnGroup(
      function ( SpawnGroup )
        local CheckAdversary = SCHEDULER:New( SpawnGroup, 
        function (CheckAdversary)
          if SpawnGroup then
            if SpawnGroup:IsNotInZone( BFMACM.zoneBfmAcm ) then
              local msg = "All players, BFM Adversary left BFM Zone and was removed!"
              if MISSIONSRS.Radio then -- if MISSIONSRS radio object has been created, send message via default broadcast.
                MISSIONSRS:SendRadio(msg,BFMACM.rangeRadio)
              else -- otherwise, send in-game text message
                MESSAGE:New(msg):ToAll()
              end
              --MESSAGE:New("Adversary left BFM Zone and was removed!"):ToAll()
              SpawnGroup:Destroy()
              SpawnGroup = nil
            end
          end
        end,
        {}, 0, 5 )
      end
    )
    :SpawnFromVec3(spawnVec3)
    local msg = "All players, " .. playerName .. " has spawned BFM Adversary."
    if MISSIONSRS.Radio then -- if MISSIONSRS radio object has been created, send message via default broadcast.
      MISSIONSRS:SendRadio(msg,BFMACM.rangeRadio)
    else -- otherwise, send in-game text message
      MESSAGE:New(msg):ToAll()
    end
    --MESSAGE:New(playerName .. " has spawned Adversary."):ToGroup(group)
  else
    local msg = playerName .. msgNoSpawn
    if MISSIONSRS.Radio then -- if MISSIONSRS radio object has been created, send message via default broadcast.
      MISSIONSRS:SendRadio(msg,BFMACM.rangeRadio)
    else -- otherwise, send in-game text message
      MESSAGE:New(msg):ToAll()
    end
    --MESSAGE:New(playerName .. msgNoSpawn):ToGroup(group)
  end
end
  
function BFMACM:AddMenu(unitname)
  BASE:T("[BFMACM] AddMenu called.")
  local unit, playername = BFMACM:GetPlayerUnitAndName(unitname)
  if unit and playername then
    local group = unit:GetGroup()
    local gid = group:GetID()
    local uid = unit:GetID()
    if group and gid then
      -- only add menu once!
      if BFMACM.menuAdded[uid] == nil then
        -- add GROUP menu if not already present
        if BFMACM.menuF10[gid] == nil then
          BASE:T("[BFMACM] Adding menu for group: " .. group:GetName())
          BFMACM.menuF10[gid] = MENU_GROUP:New(group, "AI BFM/ACM")
        end
        if BFMACM.menuF10[gid][uid] == nil then
          -- add playername submenu
          BASE:T("[BFMACM] Add submenu for player: " .. playername)
          BFMACM.menuF10[gid][uid] = MENU_GROUP:New(group, playername, BFMACM.menuF10[gid])
          -- add adversary submenus and range selectors
          BASE:T("[BFMACM] Add submenus and range selectors for player: " .. playername)
          for iMenu, adversary in ipairs(BFMACM.adversary.menu) do
            -- Add adversary type menu
            BFMACM.menuF10[gid][uid][iMenu] = MENU_GROUP:New(group, adversary.menuText, BFMACM.menuF10[gid][uid])
            -- Add single or pair selection for adversary type
            BFMACM.menuF10[gid][uid][iMenu].single = MENU_GROUP:New(group, "Single", BFMACM.menuF10[gid][uid][iMenu])
            BFMACM.menuF10[gid][uid][iMenu].pair = MENU_GROUP:New(group, "Pair", BFMACM.menuF10[gid][uid][iMenu])
            -- select range at which to spawn adversary
            for iCommand, range in ipairs(BFMACM.adversary.range) do
                MENU_GROUP_COMMAND:New(group, tostring(range) .. " nm", BFMACM.menuF10[gid][uid][iMenu].single, BFMACM.SpawnAdv, adversary.template, 1, group, range, unit)
                MENU_GROUP_COMMAND:New(group, tostring(range) .. " nm", BFMACM.menuF10[gid][uid][iMenu].pair, BFMACM.SpawnAdv, adversary.template, 2, group, range, unit)
            end
          end
        end
        BFMACM.menuAdded[uid] = true
      end
    else
      BASE:T(string.format("[BFMACM] ERROR: Could not find group or group ID in AddMenu() function. Unit name: %s.", unitname))
    end
  else
    BASE:T(string.format("[BFMACM] ERROR: Player unit does not exist in AddMenu() function. Unit name: %s.", unitname))
  end
end
  
-- handler for PlayEnterAircraft event.
-- call function to add GROUP:UNIT menu.
function BFMACM.eventHandler:OnEventPlayerEnterAircraft(EventData)
  BASE:T("[BFMACM] PlayerEnterAircraft called.")
  local unitname = EventData.IniUnitName
  local unit, playername = BFMACM:GetPlayerUnitAndName(unitname)
  if unit and playername then
    BASE:T("[BFMACM] Player entered Aircraft: " .. playername)
    SCHEDULER:New(nil, BFMACM.AddMenu, {BFMACM, unitname},0.1)
  end
end

-- handler for PlayerLeaveUnit event.
-- remove GROUP:UNIT menu.
function BFMACM.eventHandler:OnEventPlayerLeaveUnit(EventData)
  local playername = EventData.IniPlayerName
  local unit = EventData.IniUnit
  local gid = EventData.IniGroup:GetID()
  local uid = EventData.IniUnit:GetID()
  BASE:T("[BFMACM] " .. playername .. " left unit:" .. unit:GetName() .. " UID: " .. uid)
  if gid and uid then
    if BFMACM.menuF10[gid] then
      BASE:T("[BFMACM] Removing menu for unit UID:" .. uid)
      BFMACM.menuF10[gid][uid]:Remove()
      BFMACM.menuF10[gid][uid] = nil
      BFMACM.menuAdded[uid] = nil
    end
  end
end

--- END ACMBFM SECTION