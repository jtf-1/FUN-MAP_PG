-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- BEGIN MISSILE TRAINER
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Create event handler
MissileTrainer = EVENTHANDLER:New()
MissileTrainer:HandleEvent(EVENTS.PlayerEnterAircraft)   --(EVENTS.Birth)
MissileTrainer:HandleEvent(EVENTS.PlayerLeaveUnit)  -- (EVENTS.Dead)


-- Create MissileTrainer container and defaults
MissileTrainer.menuadded = {}
MissileTrainer.MenuF10   = {}
MissileTrainer.safeZone = "ZONE_FOX"
MissileTrainer.launchZone = "ZONE_FOX"


function MissileTrainer:GetPlayerUnitAndName(unitName)
  if unitName ~= nil then
    -- Get DCS unit from its name.
    local DCSunit = Unit.getByName(unitName)
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

MissileTrainer.fox = FOX:New() -- add new FOX class to the Missile Trainer

--- FOX Default Settings
MissileTrainer.fox:SetDefaultLaunchAlerts(false) -- launcher alerts OFF
  :SetDefaultMissileDestruction(false) -- missile destruction off
  :SetDefaultLaunchMarks(false) -- launch map marks OFF
  :SetExplosionDistance(300) -- distance from uit at which to destroy incoming missiles
  :SetDebugOnOff() -- set debug on if true
  :SetDisableF10Menu() -- remove default F10 menu as a custom menu will be used
  -- :AddSafeZone(ZONE:New(MissileTrainer.safeZone)) -- zone in which players will be protected
  -- :AddLaunchZone(ZONE:New(MissileTrainer.launchZone)) -- zone in which launches will be tracked
  :Start() -- start the missile trainer

--- Toggle Launch Alerts and Destroy Missiles on/off
-- @param #MissileTrainer self
-- @param #string unitName name of client unit
function MissileTrainer:ToggleMissileTrainer(unitName)
  self.fox:_ToggleLaunchAlert(unitName)
  self.fox:_ToggleDestroyMissiles(unitName)
end

--- Add Missile Trainer F10 root menu.
-- @param #MissileTrainer self
-- @param #wrapper.Unit unit Unit object occupied by client
-- @param #string unitName Name of unit occupied by client
function MissileTrainer:AddMenu(unit, unitName, state)
  local group = unit:GetGroup()
  local gid = group:GetID()

  if state then
    if not self.MenuF10[gid] then
      self.MenuF10[gid] = missionCommands.addSubMenuForGroup(gid, "Missile Trainer")
      local rootPath = self.MenuF10[gid]
      missionCommands.addCommandForGroup(gid, "Missile Trainer On/Off", rootPath, self.ToggleMissileTrainer, MissileTrainer, unitName)
    end
  else
    self.MenuF10[gid]:Remove()
    self.MenuF10[gid] = nil
  end
end

function MissileTrainer:OnEventPlayerEnterAircraft(EventData)
  local unitName = EventData.IniUnitName
  local unit, playername = MissileTrainer:GetPlayerUnitAndName(unitName)
  
  if unit and playername then
    SCHEDULER:New(nil, MissileTrainer.AddMenu, {MissileTrainer, unit, unitName, true},0.1)
  end
end

function MissileTrainer:OnEventPlayerLeaveUnit(EventData)
  local unitName = EventData.IniUnitName
  local unit, playername = MissileTrainer:GetPlayerUnitAndName(unitname)

  if unit and playername then
    MissileTrainer:AddMenu(unit, unitname, false)
  end
end

--- END MISSILE TRAINER