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

ADMIN.defaultMissionRestart = "MISSION_RESTART"
ADMIN.defaultMissionLoad = "MISSION_LOAD"
ADMIN.adminUnitName = "XX_" -- String to locate within unit name for admin slots
ADMIN.missionRestart = (JTF1.missionRestart and JTF1.missionRestart or ADMIN.defaultMissionRestart)
ADMIN.missionLoad = (JTF1.missionLoad and JTF1.missionLoad or ADMIN.defaultMissionLoad)
ADMIN.flagLoadMission = 9999
ADMIN.menuAllSlots = false -- Set to true for admin menu to appear for all players

local devState = trigger.misc.getUserFlag(8888)

-- add admin menu to all slots if dev mode is active
if devState == 1 then
  ADMIN.menuAllSlots = true
end

if JTF1.missionList then
  ADMIN.missionList = JTF1.missionList
  BASE:T(ADMIN.missionList)
end

if JTF1.missionPath then
  ADMIN.missionPath = JTF1.missionPath
  BASE:T(ADMIN.missionPath)
else
  if lfs then
    ADMIN.missionPath = (lfs.writedir() .. "\\missions")
  else
    ADMIN.missionPath = ""
  end
end


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
  local unitName = EventData.IniUnitName
  local unit, playername = ADMIN:GetPlayerUnitAndName(unitName)
  if unit and playername then
    --local adminCheck = (string.find(unitName, ADMIN.adminUnitName) and "true" or "false")
    if string.find(unitName, ADMIN.adminUnitName) or ADMIN.menuAllSlots then
      SCHEDULER:New(nil, ADMIN.BuildAdminMenu, {self, unit, playername}, 0.5)
    end
  end
end

--- Load mission requested from menu
function ADMIN:LoadMission(playerName, missionFile)
  local adminMessage = ADMIN.missionRestart
  if playerName then
    BASE:E("[JTF1] ADMIN Restart or load called by player name: " .. playerName)
  else
    BASE:E("[JTF1] ADMIN Restart or load called by non-player!")
  end
  if missionFile then
    adminMessage = ADMIN.missionLoad .. "-" .. missionFile
  end
  MESSAGE:New(adminMessage):ToAll()
end

--- Add admin menu and commands if client is in an ADMIN spawn
function ADMIN:BuildAdminMenu(unit,playername)
  local adminGroup = unit:GetGroup()
  -- add ADMIN menu to F10
  adminMenu = MENU_GROUP:New(adminGroup, "Admin")
  -- add command to restart current mission  
  MENU_GROUP_COMMAND:New( adminGroup, "Restart Current Mission", adminMenu, ADMIN.LoadMission, self, playername)
  if ADMIN.missionList then
    BASE:T("[JTF1] ADMIN Build missionList.")
    -- add menus to load missions
    for i, missionList in ipairs(ADMIN.missionList) do
      BASE:E(missionList)
      -- add menu for mission group  
      local missionName = MENU_GROUP:New(adminGroup, missionList.missionName, adminMenu)
      -- add menus for each mission file in the group
      for j, missionMenu in ipairs(missionList.missionMenu) do
        BASE:E(missionMenu)
        -- add full path to mission file if defined
        local missionFile = ADMIN.missionPath .. "\\" .. missionMenu.missionFile
        -- add command to load mission
        MENU_GROUP_COMMAND:New( adminGroup, missionMenu.menuText, missionName, ADMIN.LoadMission, self, playername, missionFile )
      end
    end
  end

end

--- END ADMIN MENU SECTION