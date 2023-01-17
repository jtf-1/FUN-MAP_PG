-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- BEGIN ADMIN MENU SECTION
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--- Admin menu
--
-- Add F10 command menus for selecting a mission to load, or restarting the current mission.
--
-- In the Mission Editor, add (a) switched condition trigger(s) with a 
-- FLAG EQUALS condition, where flag number is ADMIN.flagLoadMission value
-- and flag value is the ADMIN.missionList[x].missionFlagValue (see below).
-- A missionFlagValue == 0 is used to trigger restart of the current
-- mission using jtf1-hooks.lua.
--
-- If the menu should only appear for restricted client slots, set
-- ADMIN.menuAllSlots to FALSE and add a client slot with the group name
-- *prefixed* with the value set in ADMIN.adminMenuName.
--
-- If the menu should be available in all mission slots, set ADMIN.menuAllSlots
-- to TRUE.
--
-- 

ADMIN = EVENTHANDLER:New()
ADMIN:HandleEvent(EVENTS.PlayerEnterAircraft)

ADMIN.adminUnitName = "XX_" -- String to locate within unit name for admin slots
ADMIN.missionRestart = (JTF1.missionRestart and JTF1.missionRestart or "ADMIN9999") -- Message to trigger mission restart via jtf1-hooks
ADMIN.flagLoadMission = 9999
ADMIN.menuAllSlots = false -- Set to true for admin menu to appear for all players

ADMIN.missionList = { -- List of missions for load mission menu commands
  {menuText = "Restart current mission", missionFlagValue = 0},
  {menuText = "Load DAY PG", missionFlagValue = 1},
  {menuText = "Load NIGHT PG", missionFlagValue = 2},
  {menuText = "Load WEATHER PG", missionFlagValue = 3},
  {menuText = "Load NIGHT WEATHER PG", missionFlagValue = 4},
  {menuText = "Load DEV MISSION PG", missionFlagValue = 99},
}

function ADMIN:GetPlayerUnitAndName(unitName)
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

function ADMIN:OnEventPlayerEnterAircraft(EventData)
  if not ADMIN.menuAllSlots then
    local unitName = EventData.IniUnitName
    local unit, playername = ADMIN:GetPlayerUnitAndName(unitName)
    if unit and playername then
      local adminCheck = (string.find(unitName, ADMIN.adminUnitName) and "true" or "false")
      if string.find(unitName, ADMIN.adminUnitName) then
        SCHEDULER:New(nil, ADMIN.BuildAdminMenu, {self, unit, playername}, 0.5)
      end
    end
  end
end

--- Set mission flag to load a new mission.
--- If mapFlagValue is current mission, restart the mission via jtf1-hooks
-- @param #string playerName Name of client calling restart command.
-- @param #number mapFlagValue Mission number to which flag should be set.
function ADMIN:LoadMission(playerName, mapFlagValue)
  if playerName then
    env.info("[JTF-1] ADMIN Restart player name: " .. playerName)
  end
  if mapFlagValue == 0 then -- use jtf1-hooks to restart current mission
    MESSAGE:New(ADMIN.missionRestart):ToAll()
  else
    trigger.action.setUserFlag(ADMIN.flagLoadMission, mapFlagValue)
  end
end

--- Add admin menu and commands if client is in an ADMIN spawn
-- @param #object unit Unit of player.
-- @param #string playername Name of player
function ADMIN:BuildAdminMenu(unit,playername)
  if not (unit or playername) then
    -- create menu at Mission level
    local adminMenu = MENU_MISSION:New("Admin")
    for i, menuCommand in ipairs(ADMIN.missionList) do
      MENU_MISSION_COMMAND:New( menuCommand.menuText, adminMenu, ADMIN.LoadMission, self, playername, menuCommand.missionFlagValue )
    end
  else
    -- Create menu for admin slot
    local adminGroup = unit:GetGroup()
    local adminMenu = MENU_GROUP:New(adminGroup, "Admin")
    local testMenu = MENU_GROUP:New(adminGroup, "Test", adminMenu)
    for i, menuCommand in ipairs(ADMIN.missionList) do
      MENU_GROUP_COMMAND:New( adminGroup, menuCommand.menuText, adminMenu, ADMIN.LoadMission, self, playername, menuCommand.missionFlagValue )
      MENU_GROUP_COMMAND:New( adminGroup, "SRS Broadcast test", testMenu, MISSIONSRS.SendRadio, "All players, test broadcast over default radio.")
    end
  end
end

if ADMIN.menuAllSlots then
  ADMIN:BuildAdminMenu()
end

--- END ADMIN MENU SECTION