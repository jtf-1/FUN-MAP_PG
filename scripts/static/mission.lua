env.info( '*** MISSION FILE BUILD DATE: 2023-01-16T14:37:54.23Z ***') 
env.info( '*** JTF-1 STATIC MISSION SCRIPT START ***' )

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- BEGIN INIT
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

---- remove default MOOSE player menu
_SETTINGS:SetPlayerMenuOff()

--- debug on/off
BASE:TraceOnOff(false) 
if BASE:IsTrace() then
  BASE:TraceLevel(1)
  --BASE:TraceAll(true)
  BASE:TraceClass("setGroupGroundActive")
end

JTF = {}
--- activate admin menu option in admin slots if true
JtfAdmin = true 

-- mission flag for triggering reload/loading of missions
flagLoadMission = 9999

-- value for triggering loading of base mission
flagBaseMissionValue = 1

-- value for triggering loading of dev mission
flagDevMissionValue = 99

--- Name of client unit used for admin control
adminUnitName = "XX_" -- prefix to locate within unit name for admin slots

--- Dynamic list of all clients
--JTF.SetClient = SET_CLIENT:New():FilterStart()

-- flag value to trigger reloading of DEV mission
devMission = 99

-- use AIRBOSS and associated functions with non-SC CVN(s)
LegacyCvn = true 

--- END INIT
 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- Check for Static or Dynamic mission file loading flag
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- mission flag for setting dev mode
local devFlag = 8888

-- If missionflag is true, mission file will load from filesystem with an assert
local devState = trigger.misc.getUserFlag(devFlag)

if devState == 1 then
  env.warning('[JTF-1] *** JTF-1 - DEV flag is ON! ***')
  MESSAGE:New("Dev Mode is ON!"):ToAll()
  DEV_MENU = {
    traceOn = true, -- default tracestate false == trace off, true == trace on.
    flagLoadMission = (JTF1.flagLoadMission and JTF1.flagLoadMission or 9999), -- flag for load misison trigger
    missionRestartMsg = (JTF1.missionRestartMsg and JTF1.missionRestartMsg or "ADMIN9999"), -- Message to trigger mission restart via jtf1-hooks
  }
  
  function DEV_MENU:toggleTrace(traceOn)
    if traceOn then
      BASE:TraceOff()
    else
      BASE:TraceOn()
    end
    self.traceOn = not traceOn
  end

  function DEV_MENU:testLua() --check encoding
    local base = _G
    local f = assert( base.loadfile( 'E:/GitHub/FUN-MAP_NTTR/scripts/dynamic/test.lua' ) )
    if f == nil then
      error ("Mission Loader: could not load test.lua." )
          else
      env.info( "[JTF-1] Mission Loader: test.lua dynamically loaded." )
      --return f()
    end
  end

  function DEV_MENU:restartMission()
    trigger.action.setUserFlag(ADMIN.flagLoadMission, 99)
  end

  -- Add Dev submenu to F10 Other
  DEV_MENU.topmenu = MENU_MISSION:New("DEVMENU")
  MENU_MISSION_COMMAND:New("Toggle TRACE.", DEV_MENU.topmenu, DEV_MENU.toggleTrace, DEV_MENU, DEV_MENU.traceOn)
  MENU_MISSION_COMMAND:New("Reload Test LUA.", DEV_MENU.topmenu, DEV_MENU.testLua)
  MENU_MISSION_COMMAND:New("Restart Mission", DEV_MENU.topmenu, DEV_MENU.restartMission)

  -- trace all events
  BASE:TraceAll(true)

  if DEV_MENU.traceOn then
    BASE:TraceOn()
  end  

else
  env.info('[JTF-1] *** JTF-1 - DEV flag is OFF. ***')
end

--- END DEVCHECK
 
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
 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- Default SRS Text-to-Speech
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--
-- Send messages through SRS using STTS
-- Script will try to load the file specified with LocalServerConfigFile [name of settings file] 
-- and LocalServerConfigPath [path to file]. This file should define the path to the SRS installation 
-- directory and the port used by the DCS server instance running the mission. 
--
-- If the settings file is not found, the defaults for srs_path and srs_port will be used.
--
-- Message text will be formatted as a SOUNDTEXT object.
-- 
-- Use MISSIONSRS:SendRadio() to transmit on SRS
--
-- msgText        - [required] STRING. Text of message. Can be plain text or a MOOSE SOUNDTEXT obkect
-- msfFreqs       - [optional] STRING. frequency, or table of frequencies (without any spaces). Default freqs AND modulations will be applied if this is not specified.
-- msgModulations - [optional] STRING. modulation, or table of modulations (without any spaces) if multiple freqs passed. Ignored if msgFreqs is not defined. Default modulations will be applied if this is not specified
--


MISSIONSRS = {
  fileName = "ServerLocalSettings.lua",                           -- name of file containing local server settings
  LocalServerConfigPath = nil,                                    -- path to server srs settings. nil if file is in root of server's savedgames profile.
  LocalServerConfigFile = "LocalServerSettings.txt",              -- srs server settings file name
  defaultSrsPath = "C:/Program Files/DCS-SimpleRadio-Standalone", -- default path to SRS install directory if setting file is not avaialable "C:/Program Files/DCS-SimpleRadio-Standalone"
  defaultSrsPort = 5002,                                          -- default SRS port to use if settings file is not available
  defaultText = "No Message Defined!",                            -- default message if text is nil
  defaultFreqs = "243,251,327,377.8,30",                          -- transmit on guard, CTAF, NTTR TWR, NTTR BLACKJACK and 30FM as default frequencies
  defaultModulations = "AM,AM,AM,AM,FM",                          -- default modulation (count *must* match qty of freqs)
  defaultVol = "1.0",                                             -- default to full volume
  defaultName = "Server",                                         -- default to server as sender
  defaultCoalition = 0,                                           -- default to spectators
  defaultVec3 = nil,                                              -- point from which transmission originates
  defaultSpeed = 2,                                               -- speed at which message should be played
  defaultGender = "female",                                       -- default gender of sender
  defaultCulture = "en-US",                                       -- default culture of sender
  defaultVoice = "",                                              -- default voice to use
}

function MISSIONSRS:LoadSettings()
  local loadFile  = self.LocalServerConfigFile
  if UTILS.CheckFileExists(self.LocalServerConfigPath, self.LocalServerConfigFile) then
    local loadFile, serverSettings = UTILS.LoadFromFile(self.LocalServerConfigPath, self.LocalServerConfigFile)
    BASE:T({"[MISSIONSRS] Load Server Settings",{serverSettings}})
    if not loadFile then
      BASE:E(string.format("[MISSIONSRS] ERROR: Could not load %s", loadFile))
    else
      self.SRS_DIRECTORY = serverSettings[1] or self.defaultSrsPath
      self.SRS_PORT = serverSettings[2] or self.defaultSrsPort
      self:AddRadio()
      BASE:T({"[MISSIONSRS]",{self}})
    end
  else
    BASE:E(string.format("[MISSIONSRS] ERROR: Could not find %s", loadFile))
  end
end

function MISSIONSRS:AddRadio()
  self.Radio = MSRS:New(self.SRS_DIRECTORY, self.defaultFreqs, self.defaultModulations)
  self.Radio:SetPort(self.SRS_PORT)
  self.Radio:SetGender(self.defaultGender)
  self.Radio:SetCulture(self.defaultCulture)
  self.Radio.name = self.defaultName
end

function MISSIONSRS:SendRadio(msgText, msgFreqs, msgModulations)

  BASE:T({"[MISSIONSRS] SendRadio", {msgText}, {msgFreqs}, {msgModulations}})
  if msgFreqs then
    BASE:T("[MISSIONSRS] tx with freqs change.")
    if msgModulations then
      BASE:T("[MISSIONSRS] tx with mods change.")
    end
  end
  if msgText == (nil or "") then 
    msgText = self.defaultText
  end
  local text = msgText
  local tempFreqs = (msgFreqs or self.defaultFreqs)
  local tempModulations = (msgModulations or self.defaultModulations)
  if not msgText.ClassName then
    BASE:T("[MISSIONSRS] msgText NOT SoundText object.")
    text = SOUNDTEXT:New(msgText) -- convert msgText to SOundText object
  end
  self.Radio:SetFrequencies(tempFreqs)
  self.Radio:SetModulations(tempModulations)
  self.Radio:PlaySoundText(text)
  self.Radio:SetFrequencies(self.defaultFreqs) -- reset freqs to default
  self.Radio:SetModulations(self.defaultModulations) -- rest modulation to default

end


MISSIONSRS:LoadSettings()

 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- BEGIN MISSION TIMER
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--- Mission Timer
--
-- Add schedules to display messages at set intervals prior to restarting the base mission.
-- ME switched triggers should be set to a FLAG EQUALS condition for the flag flagLoadMission
-- value (defined in script header). Sending missionRestart text will trigger restarting the
-- current mission via jtf1-hooks.lua.
--

MISSIONTIMER = {
  durationHrs = 13, -- Mission run time in HOURS
  msgSchedule = {60, 30, 10, 5}, -- Schedule for mission restart warning messages. Time in minutes.
  msgWarning = {}, -- schedule container
  missionRestart = ( JTF1.missionRestart and JTF1.missionRestart or "ADMIN9999" ), -- Message to trigger mission restart via jtf1-hooks
  restartDelay =  4, -- time in minutes to delay restart if active clients are present.
}

MISSIONTIMER.durationSecs = MISSIONTIMER.durationHrs * 3600 -- Mission run time in seconds

BASE:T({"[MISSIONTIMER]",{MISSIONTIMER}})

--- add scheduled messages for mission restart warnings and restart at end of mission duration
function MISSIONTIMER:AddSchedules()
  if self.msgSchedule ~= nil then
    for i, msgTime in ipairs(self.msgSchedule) do
      self.msgWarning[i] = SCHEDULER:New( nil, 
        function()
          BASE:T("[MISSIONTIMER] TIMER WARNING CALLED at " .. tostring(msgTime) .. " minutes remaining.")
          local msg = "99 all players, mission is scheduled to restart in  " .. msgTime .. " minutes!"
          if MISSIONSRS.Radio then -- if MISSIONSRS radio object has been created, send message via default broadcast.
            MISSIONSRS:SendRadio(msg)
          else -- otherwise, send in-game text message
            MESSAGE:New(msg):ToAll()
          end
        end,
      {msgTime}, self.durationSecs - (msgTime * 60))
    end
  end
  self.msgWarning["restart"] = SCHEDULER:New( nil,
    function()
      MISSIONTIMER:Restart()
    end,
    { }, self.durationSecs)
end

function MISSIONTIMER:Restart()
  if not self.clientList then
    self.clientList = SET_CLIENT:New()
    self.clientList:FilterActive()
    self.clientList:FilterStart()
  end
  if self.clientList:CountAlive() > 0 then
    local delayTime = self.restartDelay
    local msg  = "99 all players, mission will restart when no active clients are present. Next check will be in " .. tostring(delayTime) .." minutes." 
    if MISSIONSRS.Radio then -- if MISSIONSRS radio object has been created, send message via default broadcast.
      MISSIONSRS:SendRadio(msg)
    else -- otherwise, send in-game text message
      MESSAGE:New(msg):ToAll()
    end
    self.msgWarning["restart"] = SCHEDULER:New( nil,
      function()
        MISSIONTIMER:Restart()
      end,
      { }, (self.restartDelay * 60))
  else
    BASE:T("[MISSIONTIMER] RESTART MISSION")
    MESSAGE:New(self.missionRestart):ToAll()
  end
end

MISSIONTIMER:AddSchedules()

--- END MISSION TIMER
 
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
 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- BEGIN MENU DEFINITIONS
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- ## CAP CONTROL
local EnemyCAPS = MENU_COALITION:New( coalition.side.BLUE, "ENEMY CAP CONTROL" )
  local CAP_Shiraz = MENU_COALITION:New( coalition.side.BLUE, "SHIRAZ", EnemyCAPS )
  local CAP_Lar = MENU_COALITION:New( coalition.side.BLUE, "LAR AB", EnemyCAPS )
  local CAP_BandarA = MENU_COALITION:New( coalition.side.BLUE, "BANDAR ABBAS", EnemyCAPS )

-- ## GROUND ATTACK MISSIONS
local MenuCoalitionTopLevel = MENU_COALITION:New( coalition.side.BLUE, "GROUND ATTACK MISSIONS" )
  local MenuBandarL = MENU_COALITION:New( coalition.side.BLUE, "BANDAR LENGEH/LAR", MenuCoalitionTopLevel )
  local MenuKerman = MENU_COALITION:New( coalition.side.BLUE, "KERMAN", MenuCoalitionTopLevel )
  local MenuShiraz = MENU_COALITION:New( coalition.side.BLUE, "SHIRAZ", MenuCoalitionTopLevel )
  local MenuAsaloyeh = MENU_COALITION:New( coalition.side.BLUE, "ASALOYEH", MenuCoalitionTopLevel )
  

local MenuCoalitionBlue = MENU_COALITION:New(coalition.side.BLUE,"SHIP STRIKE")

--- END MENU DEFINITIONS

 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- BEGIN SUPPORT AIRCRAFT SECTION
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--- table of support aircraft to be spawned
TableSpawnSupport = { -- {spawnobjectname, spawnzone}
  {
    spawnobject = "Tanker_KC135_Arco1", 
    spawnzone = "AAR_1_Zone"
  },
  {
    spawnobject = "Tanker_KC135_Arco2", 
    spawnzone = "AAR_2_Zone"
  },
  {
    spawnobject = "Tanker_KC135_Arco3", 
    spawnzone = "AAR_3_Zone"
  },
  {
    spawnobject = "Tanker_KC135_Arco4", 
    spawnzone = "AAR_4_Zone"
  },
  {
    spawnobject = "Tanker_KC135MPRS_Shell1", 
    spawnzone = "AAR_1_Zone"
  },
  {
    spawnobject = "Tanker_KC135MPRS_Shell2", 
    spawnzone = "AAR_2_Zone"
  },
  {
    spawnobject = "Tanker_KC135MPRS_Shell3", 
    spawnzone = "AAR_3_Zone"
  },
  {
    spawnobject = "Tanker_KC135MPRS_Shell4", 
    spawnzone = "AAR_4_Zone"
  },
  {
    spawnobject = "Tanker_KC135_Texaco1", 
    spawnzone = "AAR_1_Zone"
  },
  {
    spawnobject = "Tanker_KC135_Texaco2", 
    spawnzone = "AAR_2_Zone"
  },
  {
    spawnobject = "Tanker_KC135_Texaco3", 
    spawnzone = "AAR_3_Zone"
  },
  {
    spawnobject = "Tanker_KC135_Texaco4", 
    spawnzone = "AAR_4_Zone"
  },
  {
    spawnobject = "AWACS_Magic", 
    spawnzone = "AWACS_1_Zone"
  },
}

-- ## Spawn Support aircraft
-- Scheduled function on spawn to check for presence of the support aircraft in its spawn zone. Repeat check every 60 seconds. Respawn if ac has left zone. 
-- also respawn on engine shutdown if an airfield is within the support zone.
function SpawnSupport (SupportSpawn) -- spawnobject, spawnzone

  local SupportSpawnObject = SPAWN:New( SupportSpawn.spawnobject )
  SupportSpawnObject.Zone = ZONE:FindByName(SupportSpawn.spawnzone) and ZONE:FindByName(SupportSpawn.spawnzone) or ZONE:New(SupportSpawn.spawnzone)
  

  SupportSpawnObject:InitLimit( 1, 0 )
    :OnSpawnGroup(
      function ( SpawnGroup )
        local SpawnIndex = SupportSpawnObject:GetSpawnIndexFromGroup( SpawnGroup )
        local SpawnZone = SupportSpawnObject.Zone
        local CheckTanker = SCHEDULER:New( nil, 
          function()
            if SpawnGroup then
              if SpawnGroup:IsNotInZone(SpawnZone) then
                SupportSpawnObject:ReSpawn( SpawnIndex )
              end
            end
          end,
        {}, 0, 60 )
      end
    )
    :InitKeepUnitNames(true)
    :InitRepeatOnLanding()
    :Spawn()

end

--- spawn support aircraft
for i, v in ipairs( TableSpawnSupport ) do
  SpawnSupport ( v )
  
end

-- END SUPPORT AIRCRAFT SECTION

 

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- BEGIN HERCULES CARGO SUPPORT SECTION
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Hercules Cargo Drop Events by Anubis Yinepu

-- This script will only work for the Herculus mod by Anubis
-- Payloads carried by pylons 11, 12 and 13 need to be declared in the Herculus_Loadout.lua file
-- Except for Ammo pallets, this script will spawn whatever payload gets launched from pylons 11, 12 and 13
-- Pylons 11, 12 and 13 are moveable within the Herculus cargobay area
-- Ammo pallets can only be jettisoned from these pylons with no benefit to DCS world
-- To benefit DCS world, Ammo pallets need to be off/on loaded using DCS arming and refueling window
-- Cargo_Container_Enclosed = true: Cargo enclosed in container with parachute, need to be dropped from 100m (300ft) or more, except when parked on ground
-- Cargo_Container_Enclosed = false: Open cargo with no parachute, need to be dropped from 10m (30ft) or less

Hercules_Cargo = {}
Hercules_Cargo.Hercules_Cargo_Drop_Events = {}
local GT_DisplayName = ""
local GT_Name = ""
local Cargo_Drop_initiator = ""
local Cargo_Container_Enclosed = false
local SoldierGroup = false
local ParatrooperCount = 1
local ParatrooperGroupSpawnInit = false
local ParatrooperGroupSpawn = false

local Herc_j = 0
local Herc_Cargo = {}
Herc_Cargo.Cargo_Drop_Direction = 0
Herc_Cargo.Cargo_Contents = ""
Herc_Cargo.Cargo_Type_name = ""
Herc_Cargo.Cargo_over_water = false
Herc_Cargo.Container_Enclosed = false
Herc_Cargo.offload_cargo = false
Herc_Cargo.all_cargo_survive_to_the_ground = false
Herc_Cargo.all_cargo_gets_destroyed = false
Herc_Cargo.destroy_cargo_dropped_without_parachute = false
Herc_Cargo.scheduleFunctionID = 0

local CargoHeading = 0
local Cargo_Drop_Position = {}

local SoldierUnitID = 12000
local SoldierGroupID = 12000
local GroupSpacing = 0
--added by wrench
Hercules_Cargo.types = {
        ["ATGM M1045 HMMWV TOW Air [7183lb]"] = {['name'] = "M1045 HMMWV TOW", ['container'] = true},
        ["ATGM M1045 HMMWV TOW Skid [7073lb]"] = {['name'] = "M1045 HMMWV TOW", ['container'] = false},
        ["APC M1043 HMMWV Armament Air [7023lb]"] = {['name'] = "M1043 HMMWV Armament", ['container'] = true},
        ["APC M1043 HMMWV Armament Skid [6912lb]"] = {['name'] = "M1043 HMMWV Armament", ['container'] = false},
        ["SAM Avenger M1097 Air [7200lb]"] = {['name'] = "M1097 Avenger", ['container'] = true},
        ["SAM Avenger M1097 Skid [7090lb]"] = {['name'] = "M1097 Avenger", ['container'] = false},
        ["APC Cobra Air [10912lb]"] = {['name'] = "Cobra", ['container'] = true},
        ["APC Cobra Skid [10802lb]"] = {['name'] = "Cobra", ['container'] = false},
        ["APC M113 Air [21624lb]"] = {['name'] = "M-113", ['container'] = true},
        ["APC M113 Skid [21494lb]"] = {['name'] = "M-113", ['container'] = false},
        ["Tanker M978 HEMTT [34000lb]"] = {['name'] = "M978 HEMTT Tanker", ['container'] = false},
        ["HEMTT TFFT [34400lb]"] = {['name'] = "HEMTT TFFT", ['container'] = false},
        ["SPG M1128 Stryker MGS [33036lb]"] = {['name'] = "M1128 Stryker MGS", ['container'] = false},
        ["AAA Vulcan M163 Air [21666lb]"] = {['name'] = "Vulcan", ['container'] = true},
        ["AAA Vulcan M163 Skid [21577lb]"] = {['name'] = "Vulcan", ['container'] = false},
        ["APC M1126 Stryker ICV [29542lb]"] = {['name'] = "M1126 Stryker ICV", ['container'] = false},
        ["ATGM M1134 Stryker [30337lb]"] = {['name'] = "M1134 Stryker ATGM", ['container'] = false},
        ["APC LAV-25 Air [22520lb]"] = {['name'] = "LAV-25", ['container'] = true},
        ["APC LAV-25 Skid [22514lb]"] = {['name'] = "LAV-25", ['container'] = false},
        ["M1025 HMMWV Air [6160lb]"] = {['name'] = "Hummer", ['container'] = true},
        ["M1025 HMMWV Skid [6050lb]"] = {['name'] = "Hummer", ['container'] = false},
        ["IFV M2A2 Bradley [34720lb]"] = {['name'] = "M-2 Bradley", ['container'] = false},
        ["IFV MCV-80 [34720lb]"] = {['name'] = "MCV-80", ['container'] = false},
        ["IFV BMP-1 [23232lb]"] = {['name'] = "BMP-1", ['container'] = false},
        ["IFV BMP-2 [25168lb]"] = {['name'] = "BMP-2", ['container'] = false},
        ["IFV BMP-3 [32912lb]"] = {['name'] = "BMP-3", ['container'] = false},
        ["ARV BRDM-2 Air [12320lb]"] = {['name'] = "BRDM-2", ['container'] = true},
        ["ARV BRDM-2 Skid [12210lb]"] = {['name'] = "BRDM-2", ['container'] = false},
        ["APC BTR-80 Air [23936lb]"] = {['name'] = "BTR-80", ['container'] = true},
        ["APC BTR-80 Skid [23826lb]"] = {['name'] = "BTR-80", ['container'] = false},
        ["APC BTR-82A Air [24998lb]"] = {['name'] = "BTR-82A", ['container'] = true},
        ["APC BTR-82A Skid [24888lb]"] = {['name'] = "BTR-82A", ['container'] = false},
        ["SAM ROLAND ADS [34720lb]"] = {['name'] = "Roland Radar", ['container'] = false},
        ["SAM ROLAND LN [34720b]"] = {['name'] = "Roland ADS", ['container'] = false},
        ["SAM SA-13 STRELA [21624lb]"] = {['name'] = "Strela-10M3", ['container'] = false},
        ["AAA ZSU-23-4 Shilka [32912lb]"] = {['name'] = "ZSU-23-4 Shilka", ['container'] = false},
        ["SAM SA-19 Tunguska 2S6 [34720lb]"] = {['name'] = "2S6 Tunguska", ['container'] = false},
        ["Transport UAZ-469 Air [3747lb]"] = {['name'] = "UAZ-469", ['container'] = true},
        ["Transport UAZ-469 Skid [3630lb]"] = {['name'] = "UAZ-469", ['container'] = false},
        ["AAA GEPARD [34720lb]"] = {['name'] = "Gepard", ['container'] = false},
        ["SAM CHAPARRAL Air [21624lb]"] = {['name'] = "M48 Chaparral", ['container'] = true},
        ["SAM CHAPARRAL Skid [21516lb]"] = {['name'] = "M48 Chaparral", ['container'] = false},
        ["SAM LINEBACKER [34720lb]"] = {['name'] = "M6 Linebacker", ['container'] = false},
        ["Transport URAL-375 [14815lb]"] = {['name'] = "Ural-375", ['container'] = false},
        ["Transport M818 [16000lb]"] = {['name'] = "M 818", ['container'] = false},
        ["IFV MARDER [34720lb]"] = {['name'] = "Marder", ['container'] = false},
        ["Transport Tigr Air [15900lb]"] = {['name'] = "Tigr_233036", ['container'] = true},
        ["Transport Tigr Skid [15730lb]"] = {['name'] = "Tigr_233036", ['container'] = false},
        ["IFV TPZ FUCH [33440lb]"] = {['name'] = "TPZ", ['container'] = false},
        ["IFV BMD-1 Air [18040lb]"] = {['name'] = "BMD-1", ['container'] = true},
        ["IFV BMD-1 Skid [17930lb]"] = {['name'] = "BMD-1", ['container'] = false},
        ["IFV BTR-D Air [18040lb]"] = {['name'] = "BTR_D", ['container'] = true},
        ["IFV BTR-D Skid [17930lb]"] = {['name'] = "BTR_D", ['container'] = false},
        ["EWR SBORKA Air [21624lb]"] = {['name'] = "Dog Ear radar", ['container'] = true},
        ["EWR SBORKA Skid [21624lb]"] = {['name'] = "Dog Ear radar", ['container'] = false},
        ["ART 2S9 NONA Air [19140lb]"] = {['name'] = "SAU 2-C9", ['container'] = true},
        ["ART 2S9 NONA Skid [19030lb]"] = {['name'] = "SAU 2-C9", ['container'] = false},
        ["ART GVOZDIKA [34720lb]"] = {['name'] = "SAU Gvozdika", ['container'] = false},
        ["APC MTLB Air [26400lb]"] = {['name'] = "MTLB", ['container'] = true},
        ["APC MTLB Skid [26290lb]"] = {['name'] = "MTLB", ['container'] = false},
        --["Generic Crate [20000lb]"] = {['name'] =  "Hercules_Container_Parachute", ['container'] = true}
}
function Hercules_Cargo.Soldier_SpawnGroup(Cargo_Drop_Position, Cargo_Type_name, CargoHeading, Cargo_Country, GroupSpacing)
        SoldierUnitID = SoldierUnitID + 30
        SoldierGroupID = SoldierGroupID + 1
        local Herc_Soldier_Spawn = 
        {
                ["visible"] = false,
                ["tasks"] = 
                {
                }, -- end of ["tasks"]
                ["uncontrollable"] = false,
                ["task"] = "Ground Nothing",
                ["taskSelected"] = true,
                ["groupId"] = SoldierGroupID,
                ["hidden"] = false,
                ["units"] = 
                {
                        [1] = 
                        {
                                ["type"] = Cargo_Type_name,
                                ["transportable"] = 
                                {
                                        ["randomTransportable"] = true,
                                }, -- end of ["transportable"]
                                ["unitId"] = SoldierUnitID + 1,
                                ["skill"] = "Excellent",
                                ["y"] = Cargo_Drop_Position.z + 0.5 + GroupSpacing,
                                ["x"] = Cargo_Drop_Position.x + 0.5 + GroupSpacing,
                                ["name"] = "Soldier Unit "..SoldierUnitID,
                                ["heading"] = CargoHeading,
                                ["playerCanDrive"] = false,
                        }, -- end of [1]
                        [2] = 
                        {
                                ["type"] = Cargo_Type_name,
                                ["transportable"] = 
                                {
                                        ["randomTransportable"] = true,
                                }, -- end of ["transportable"]
                                ["unitId"] = SoldierUnitID + 1,
                                ["skill"] = "Excellent",
                                ["y"] = Cargo_Drop_Position.z + 1.0 + GroupSpacing,
                                ["x"] = Cargo_Drop_Position.x + 1.0 + GroupSpacing,
                                ["name"] = "Soldier Unit "..SoldierUnitID,
                                ["heading"] = CargoHeading,
                                ["playerCanDrive"] = false,
                        }, -- end of [2]
                        [3] = 
                        {
                                ["type"] = Cargo_Type_name,
                                ["transportable"] = 
                                {
                                        ["randomTransportable"] = true,
                                }, -- end of ["transportable"]
                                ["unitId"] = SoldierUnitID + 1,
                                ["skill"] = "Excellent",
                                ["y"] = Cargo_Drop_Position.z + 1.5 + GroupSpacing,
                                ["x"] = Cargo_Drop_Position.x + 1.0 + GroupSpacing,
                                ["name"] = "Soldier Unit "..SoldierUnitID,
                                ["heading"] = CargoHeading,
                                ["playerCanDrive"] = false,
                        }, -- end of [3]
                        [4] = 
                        {
                                ["type"] = Cargo_Type_name,
                                ["transportable"] = 
                                {
                                        ["randomTransportable"] = true,
                                }, -- end of ["transportable"]
                                ["unitId"] = SoldierUnitID + 1,
                                ["skill"] = "Excellent",
                                ["y"] = Cargo_Drop_Position.z + 2.0 + GroupSpacing,
                                ["x"] = Cargo_Drop_Position.x + 2.0 + GroupSpacing,
                                ["name"] = "Soldier Unit "..SoldierUnitID,
                                ["heading"] = CargoHeading,
                                ["playerCanDrive"] = false,
                        }, -- end of [4]
                        [5] = 
                        {
                                ["type"] = Cargo_Type_name,
                                ["transportable"] = 
                                {
                                        ["randomTransportable"] = true,
                                }, -- end of ["transportable"]
                                ["unitId"] = SoldierUnitID + 1,
                                ["skill"] = "Excellent",
                                ["y"] = Cargo_Drop_Position.z + 2.5 + GroupSpacing,
                                ["x"] = Cargo_Drop_Position.x + 2.5 + GroupSpacing,
                                ["name"] = "Soldier Unit "..SoldierUnitID,
                                ["heading"] = CargoHeading,
                                ["playerCanDrive"] = false,
                        }, -- end of [5]
                        [6] = 
                        {
                                ["type"] = Cargo_Type_name,
                                ["transportable"] = 
                                {
                                        ["randomTransportable"] = true,
                                }, -- end of ["transportable"]
                                ["unitId"] = SoldierUnitID + 1,
                                ["skill"] = "Excellent",
                                ["y"] = Cargo_Drop_Position.z + 3.0 + GroupSpacing,
                                ["x"] = Cargo_Drop_Position.x + 3.0 + GroupSpacing,
                                ["name"] = "Soldier Unit "..SoldierUnitID,
                                ["heading"] = CargoHeading,
                                ["playerCanDrive"] = false,
                        }, -- end of [6]
                        [7] = 
                        {
                                ["type"] = "Soldier M249",
                                ["transportable"] = 
                                {
                                        ["randomTransportable"] = true,
                                }, -- end of ["transportable"]
                                ["unitId"] = SoldierUnitID + 1,
                                ["skill"] = "Excellent",
                                ["y"] = Cargo_Drop_Position.z + 3.5 + GroupSpacing,
                                ["x"] = Cargo_Drop_Position.x + 3.5 + GroupSpacing,
                                ["name"] = "Soldier Unit "..SoldierUnitID,
                                ["heading"] = CargoHeading,
                                ["playerCanDrive"] = false,
                        }, -- end of [7]
                        [8] = 
                        {
                                ["type"] = "Soldier M249",
                                ["transportable"] = 
                                {
                                        ["randomTransportable"] = true,
                                }, -- end of ["transportable"]
                                ["unitId"] = SoldierUnitID + 1,
                                ["skill"] = "Excellent",
                                ["y"] = Cargo_Drop_Position.z + 4.0 + GroupSpacing,
                                ["x"] = Cargo_Drop_Position.x + 4.0 + GroupSpacing,
                                ["name"] = "Soldier Unit "..SoldierUnitID,
                                ["heading"] = CargoHeading,
                                ["playerCanDrive"] = false,
                        }, -- end of [8]
                        [9] = 
                        {
                                ["type"] = Cargo_Type_name,
                                ["transportable"] = 
                                {
                                        ["randomTransportable"] = true,
                                }, -- end of ["transportable"]
                                ["unitId"] = SoldierUnitID + 1,
                                ["skill"] = "Excellent",
                                ["y"] = Cargo_Drop_Position.z + 4.5 + GroupSpacing,
                                ["x"] = Cargo_Drop_Position.x + 4.5 + GroupSpacing,
                                ["name"] = "Soldier Unit "..SoldierUnitID,
                                ["heading"] = CargoHeading,
                                ["playerCanDrive"] = false,
                        }, -- end of [9]
                        [10] = 
                        {
                                ["type"] = "Paratrooper RPG-16",
                                ["transportable"] = 
                                {
                                        ["randomTransportable"] = true,
                                }, -- end of ["transportable"]
                                ["unitId"] = SoldierUnitID + 1,
                                ["skill"] = "Excellent",
                                ["y"] = Cargo_Drop_Position.z + 5.0 + GroupSpacing,
                                ["x"] = Cargo_Drop_Position.x + 5.0 + GroupSpacing,
                                ["name"] = "Soldier Unit "..SoldierUnitID,
                                ["heading"] = CargoHeading,
                                ["playerCanDrive"] = false,
                        }, -- end of [10]
                }, -- end of ["units"]
                ["y"] = Cargo_Drop_Position.z,
                ["x"] = Cargo_Drop_Position.x,
                ["name"] = "Soldier_Group_"..SoldierGroupID,
                ["start_time"] = 0,
        }
        coalition.addGroup(Cargo_Country, Group.Category.GROUND, Herc_Soldier_Spawn)
end

local CargoUnitID = 10000
local CargoGroupID = 10000
local CargoStaticGroupID = 11000

function Hercules_Cargo.Cargo_SpawnGroup(Cargo_Drop_Position, Cargo_Type_name, CargoHeading, Cargo_Country)
        CargoUnitID = CargoUnitID + 1
        CargoGroupID = CargoGroupID + 1
        local Herc_Cargo_Spawn = 
        {
                ["visible"] = false,
                ["tasks"] = 
                {
                }, -- end of ["tasks"]
                ["uncontrollable"] = false,
                ["task"] = "Ground Nothing",
                ["groupId"] = CargoGroupID,
                ["hidden"] = false,
                ["units"] = 
                {
                        [1] = 
                        {
                                ["type"] = Cargo_Type_name,
                                ["transportable"] = 
                                {
                                        ["randomTransportable"] = false,
                                }, -- end of ["transportable"]
                                ["unitId"] = CargoUnitID,
                                ["skill"] = "Excellent",
                                ["y"] = Cargo_Drop_Position.z,
                                ["x"] = Cargo_Drop_Position.x,
                                ["name"] = "Cargo Unit "..CargoUnitID,
                                ["heading"] = CargoHeading,
                                ["playerCanDrive"] = true,
                        }, -- end of [1]
                }, -- end of ["units"]
                ["y"] = Cargo_Drop_Position.z,
                ["x"] = Cargo_Drop_Position.x,
                ["name"] = "Cargo Group "..CargoUnitID,
                ["start_time"] = 0,
        }
        coalition.addGroup(Cargo_Country, Group.Category.GROUND, Herc_Cargo_Spawn)
end

function Hercules_Cargo.Cargo_SpawnStatic(Cargo_Drop_Position, Cargo_Type_name, CargoHeading, dead, Cargo_Country)
        CargoStaticGroupID = CargoStaticGroupID + 1
        local Herc_CargoObject_Spawn = 
        {
                ["type"] = Cargo_Type_name,
                ["y"] = Cargo_Drop_Position.z,
                ["x"] = Cargo_Drop_Position.x,
                ["name"] = "Cargo Static Group "..CargoStaticGroupID,
                ["heading"] = CargoHeading,
                ["dead"] = dead,
        }
        coalition.addStaticObject(Cargo_Country, Herc_CargoObject_Spawn)
end

function Hercules_Cargo.Cargo_SpawnObjects(Cargo_Drop_Direction, Cargo_Content_position, Cargo_Type_name, Cargo_over_water, Container_Enclosed, ParatrooperGroupSpawn, offload_cargo, all_cargo_survive_to_the_ground, all_cargo_gets_destroyed, destroy_cargo_dropped_without_parachute, Cargo_Country)
        if offload_cargo == true then
                ------------------------------------------------------------------------------
                if CargoHeading >= 3.14 then
                        CargoHeading = 0
                        Cargo_Drop_Position = {["x"] = Cargo_Content_position.x - (30.0 * math.cos(Cargo_Drop_Direction - 1.0)),
                                                                   ["z"] = Cargo_Content_position.z - (30.0 * math.sin(Cargo_Drop_Direction - 1.0))}
                else
                        if CargoHeading >= 1.57 then
                                CargoHeading = 3.14
                                Cargo_Drop_Position = {["x"] = Cargo_Content_position.x - (20.0 * math.cos(Cargo_Drop_Direction + 0.5)),
                                                                           ["z"] = Cargo_Content_position.z - (20.0 * math.sin(Cargo_Drop_Direction + 0.5))}
                        else
                                if CargoHeading >= 0 then
                                        CargoHeading = 1.57
                                        Cargo_Drop_Position = {["x"] = Cargo_Content_position.x - (10.0 * math.cos(Cargo_Drop_Direction + 1.5)),
                                                                                   ["z"] = Cargo_Content_position.z - (10.0 * math.sin(Cargo_Drop_Direction + 1.5))}
                                end
                        end
                end
                ------------------------------------------------------------------------------
                if ParatrooperGroupSpawn == true then
                        Hercules_Cargo.Soldier_SpawnGroup(Cargo_Drop_Position, Cargo_Type_name, CargoHeading, Cargo_Country, 0)
                        Hercules_Cargo.Soldier_SpawnGroup(Cargo_Drop_Position, Cargo_Type_name, CargoHeading, Cargo_Country, 5)
                        Hercules_Cargo.Soldier_SpawnGroup(Cargo_Drop_Position, Cargo_Type_name, CargoHeading, Cargo_Country, 10)
                else
                        Hercules_Cargo.Cargo_SpawnGroup(Cargo_Drop_Position, Cargo_Type_name, CargoHeading, Cargo_Country, 0)
                end
        else
                ------------------------------------------------------------------------------
                CargoHeading = 0
                Cargo_Drop_Position = {["x"] = Cargo_Content_position.x - (20.0 * math.cos(Cargo_Drop_Direction)),
                                                           ["z"] = Cargo_Content_position.z - (20.0 * math.cos(Cargo_Drop_Direction))}
                ------------------------------------------------------------------------------
                if all_cargo_gets_destroyed == true or Cargo_over_water == true then
                        if Container_Enclosed == true then
                                Hercules_Cargo.Cargo_SpawnStatic(Cargo_Drop_Position, Cargo_Type_name, CargoHeading, true, Cargo_Country)
                                if ParatrooperGroupSpawn == false then
                                        Hercules_Cargo.Cargo_SpawnStatic(Cargo_Drop_Position, "Hercules_Container_Parachute_Static", CargoHeading, true, Cargo_Country)
                                end
                        else
                                Hercules_Cargo.Cargo_SpawnStatic(Cargo_Drop_Position, Cargo_Type_name, CargoHeading, true, Cargo_Country)
                        end
                else
                        ------------------------------------------------------------------------------
                        if all_cargo_survive_to_the_ground == true then
                                if ParatrooperGroupSpawn == true then
                                        Hercules_Cargo.Cargo_SpawnStatic(Cargo_Drop_Position, Cargo_Type_name, CargoHeading, true, Cargo_Country)
                                else
                                        Hercules_Cargo.Cargo_SpawnGroup(Cargo_Drop_Position, Cargo_Type_name, CargoHeading, Cargo_Country)
                                end
                                if Container_Enclosed == true then
                                        if ParatrooperGroupSpawn == false then
                                                Hercules_Cargo.Cargo_SpawnStatic({["z"] = Cargo_Drop_Position.z + 10.0,["x"] = Cargo_Drop_Position.x + 10.0}, "Hercules_Container_Parachute_Static", CargoHeading, false, Cargo_Country)
                                        end
                                end
                        end
                        ------------------------------------------------------------------------------
                        if destroy_cargo_dropped_without_parachute == true then
                                if Container_Enclosed == true then
                                        if ParatrooperGroupSpawn == true then
                                                Hercules_Cargo.Soldier_SpawnGroup(Cargo_Drop_Position, Cargo_Type_name, CargoHeading, Cargo_Country, 0)
                                        else
                                                Hercules_Cargo.Cargo_SpawnGroup(Cargo_Drop_Position, Cargo_Type_name, CargoHeading, Cargo_Country)
                                                Hercules_Cargo.Cargo_SpawnStatic({["z"] = Cargo_Drop_Position.z + 10.0,["x"] = Cargo_Drop_Position.x + 10.0}, "Hercules_Container_Parachute_Static", CargoHeading, false, Cargo_Country)
                                        end
                                else
                                        Hercules_Cargo.Cargo_SpawnStatic(Cargo_Drop_Position, Cargo_Type_name, CargoHeading, true, Cargo_Country)
                                end
                        end
                        ------------------------------------------------------------------------------
                end
        end
end

function Hercules_Cargo.Calculate_Object_Height_AGL(object)
        return object:getPosition().p.y - land.getHeight({x = object:getPosition().p.x, y = object:getPosition().p.z})
end

function Hercules_Cargo.Check_SurfaceType(object)
   -- LAND,--1 SHALLOW_WATER,--2 WATER,--3 ROAD,--4 RUNWAY--5
        return land.getSurfaceType({x = object:getPosition().p.x, y = object:getPosition().p.z})
end

function Hercules_Cargo.Cargo_Track(Arg, time)
        local status, result = pcall(
                function()
                local next = next
                if next(Arg[1].Cargo_Contents) ~= nil then
                        if Hercules_Cargo.Calculate_Object_Height_AGL(Arg[1].Cargo_Contents) < 5.0 then--pallet less than 5m above ground before spawning
                                if Hercules_Cargo.Check_SurfaceType(Arg[1].Cargo_Contents) == 2 or Hercules_Cargo.Check_SurfaceType(Arg[1].Cargo_Contents) == 3 then
                                        Arg[1].Cargo_over_water = true--pallets gets destroyed in water
                                end
                                Arg[1].Cargo_Contents:destroy()--remove pallet+parachute before hitting ground and replace with Cargo_SpawnContents
                                Hercules_Cargo.Cargo_SpawnObjects(Arg[1].Cargo_Drop_Direction, Object.getPoint(Arg[1].Cargo_Contents), Arg[1].Cargo_Type_name, Arg[1].Cargo_over_water, Arg[1].Container_Enclosed, Arg[1].ParatrooperGroupSpawn, Arg[1].offload_cargo, Arg[1].all_cargo_survive_to_the_ground, Arg[1].all_cargo_gets_destroyed, Arg[1].destroy_cargo_dropped_without_parachute, Arg[1].Cargo_Country)
                                timer.removeFunction(Arg[1].scheduleFunctionID)
                                Arg[1] = {}
                        end
                        return time + 0.1
                end
        end) -- pcall
        if not status then
                -- env.error(string.format("Cargo_Spawn: %s", result))
        else
                return result
        end
end

function Hercules_Cargo.Calculate_Cargo_Drop_initiator_NorthCorrection(point)   --correction needed for true north
        if not point.z then --Vec2; convert to Vec3
                point.z = point.y
                point.y = 0
        end
        local lat, lon = coord.LOtoLL(point)
        local north_posit = coord.LLtoLO(lat + 1, lon)
        return math.atan2(north_posit.z - point.z, north_posit.x - point.x)
end

function Hercules_Cargo.Calculate_Cargo_Drop_initiator_Heading(Cargo_Drop_initiator)
        local Heading = math.atan2(Cargo_Drop_initiator:getPosition().x.z, Cargo_Drop_initiator:getPosition().x.x)
        Heading = Heading + Hercules_Cargo.Calculate_Cargo_Drop_initiator_NorthCorrection(Cargo_Drop_initiator:getPosition().p)
        if Heading < 0 then
                Heading = Heading + (2 * math.pi)-- put heading in range of 0 to 2*pi
        end
        return Heading + 0.06 -- rad
end

function Hercules_Cargo.Cargo_Initialize(initiator, Cargo_Contents, Cargo_Type_name, Container_Enclosed)
        local status, result = pcall(
                function()
                Cargo_Drop_initiator = Unit.getByName(initiator:getName())
                local next = next
                if next(Cargo_Drop_initiator) ~= nil then
                        if ParatrooperGroupSpawnInit == true then
                                if (ParatrooperCount == 1 or ParatrooperCount == 2 or ParatrooperCount == 3) then
                                        Herc_j = Herc_j + 1
                                        Herc_Cargo[Herc_j] = {}
                                        Herc_Cargo[Herc_j].Cargo_Drop_Direction = Hercules_Cargo.Calculate_Cargo_Drop_initiator_Heading(Cargo_Drop_initiator)
                                        Herc_Cargo[Herc_j].Cargo_Contents = Cargo_Contents
                                        Herc_Cargo[Herc_j].Cargo_Type_name = Cargo_Type_name
                                        Herc_Cargo[Herc_j].Container_Enclosed = Container_Enclosed
                                        Herc_Cargo[Herc_j].ParatrooperGroupSpawn = ParatrooperGroupSpawnInit
                                        Herc_Cargo[Herc_j].Cargo_Country = initiator:getCountry()
                                ------------------------------------------------------------------------------
                                        if Hercules_Cargo.Calculate_Object_Height_AGL(Cargo_Drop_initiator) < 5.0 then--aircraft on ground
                                                Herc_Cargo[Herc_j].offload_cargo = true
                                                ParatrooperCount = 0
                                                ParatrooperGroupSpawnInit = false
                                        else
                                ------------------------------------------------------------------------------
                                                if Hercules_Cargo.Calculate_Object_Height_AGL(Cargo_Drop_initiator) < 10.0 then--aircraft less than 10m above ground
                                                        Herc_Cargo[Herc_j].all_cargo_survive_to_the_ground = true
                                                else
                                ------------------------------------------------------------------------------
                                                        if Hercules_Cargo.Calculate_Object_Height_AGL(Cargo_Drop_initiator) < 152.4 then--aircraft more than 30ft but less than 500ft above ground
                                                                Herc_Cargo[Herc_j].all_cargo_gets_destroyed = true
                                                        else
                                ------------------------------------------------------------------------------
                                                                Herc_Cargo[Herc_j].destroy_cargo_dropped_without_parachute = true--aircraft more than 152.4m (500ft)above ground
                                                        end
                                                end
                                        end
                                ------------------------------------------------------------------------------
                                        Herc_Cargo[Herc_j].scheduleFunctionID = timer.scheduleFunction(Hercules_Cargo.Cargo_Track, {Herc_Cargo[Herc_j]}, timer.getTime() + 0.1)
                                        ParatrooperCount = ParatrooperCount + 1.0
                                else
                                        if (ParatrooperCount == 30) then
                                                ParatrooperGroupSpawnInit = false
                                                ParatrooperCount = 1
                                        else
                                                ParatrooperCount = ParatrooperCount + 1.0
                                        end
                                end
                        else
                                Herc_j = Herc_j + 1
                                Herc_Cargo[Herc_j] = {}
                                Herc_Cargo[Herc_j].Cargo_Drop_Direction = Hercules_Cargo.Calculate_Cargo_Drop_initiator_Heading(Cargo_Drop_initiator)
                                Herc_Cargo[Herc_j].Cargo_Contents = Cargo_Contents
                                Herc_Cargo[Herc_j].Cargo_Type_name = Cargo_Type_name
                                Herc_Cargo[Herc_j].Container_Enclosed = Container_Enclosed
                                Herc_Cargo[Herc_j].ParatrooperGroupSpawn = ParatrooperGroupSpawnInit
                                Herc_Cargo[Herc_j].Cargo_Country = initiator:getCountry()
                        ------------------------------------------------------------------------------
                                if Hercules_Cargo.Calculate_Object_Height_AGL(Cargo_Drop_initiator) < 5.0 then--aircraft on ground
                                        Herc_Cargo[Herc_j].offload_cargo = true
                                else
                        ------------------------------------------------------------------------------
                                        if Hercules_Cargo.Calculate_Object_Height_AGL(Cargo_Drop_initiator) < 10.0 then--aircraft less than 10m above ground
                                                Herc_Cargo[Herc_j].all_cargo_survive_to_the_ground = true
                                        else
                        ------------------------------------------------------------------------------
                                                if Hercules_Cargo.Calculate_Object_Height_AGL(Cargo_Drop_initiator) < 100.0 then--aircraft more than 10m but less than 100m above ground
                                                        Herc_Cargo[Herc_j].all_cargo_gets_destroyed = true
                                                else
                        ------------------------------------------------------------------------------
                                                        Herc_Cargo[Herc_j].destroy_cargo_dropped_without_parachute = true--aircraft more than 100m above ground
                                                end
                                        end
                                end
                        ------------------------------------------------------------------------------
                                Herc_Cargo[Herc_j].scheduleFunctionID = timer.scheduleFunction(Hercules_Cargo.Cargo_Track, {Herc_Cargo[Herc_j]}, timer.getTime() + 0.1)
                        end
                end
        end) -- pcall
        if not status then
                -- env.error(string.format("Cargo_Initialize: %s", result))
        else
                return result
        end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        -- EventHandlers
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Hercules_Cargo.Hercules_Cargo_Drop_Events:onEvent(Cargo_Drop_Event)
        if Cargo_Drop_Event.id == world.event.S_EVENT_SHOT then
                GT_DisplayName = Weapon.getDesc(Cargo_Drop_Event.weapon).typeName:sub(15, -1)--Remove "weapons.bombs." from string
                 -- trigger.action.outTextForCoalition(coalition.side.BLUE, string.format("Cargo_Drop_Event: %s", Weapon.getDesc(Cargo_Drop_Event.weapon).typeName), 10)
                 -- trigger.action.outTextForCoalition(coalition.side.RED, string.format("Cargo_Drop_Event: %s", Weapon.getDesc(Cargo_Drop_Event.weapon).typeName), 10)
                         ---------------------------------------------------------------------------------------------------------------------------------
                        if (GT_DisplayName == "Squad 30 x Soldier [7950lb]") then
                                GT_Name = "Soldier M4 GRG"
                                SoldierGroup = true
                                ParatrooperGroupSpawnInit = true
                                Hercules_Cargo.Cargo_Initialize(Cargo_Drop_Event.initiator, Cargo_Drop_Event.weapon, GT_Name, SoldierGroup)
                        end
                         ---------------------------------------------------------------------------------------------------------------------------------
                        if Hercules_Cargo.types[GT_DisplayName] then
                                local GT_Name = Hercules_Cargo.types[GT_DisplayName]['name']
                                local Cargo_Container_Enclosed = Hercules_Cargo.types[GT_DisplayName]['container']
                                Hercules_Cargo.Cargo_Initialize(Cargo_Drop_Event.initiator, Cargo_Drop_Event.weapon, GT_Name, Cargo_Container_Enclosed)
                        end
        end
end
world.addEventHandler(Hercules_Cargo.Hercules_Cargo_Drop_Events)

-- trigger.action.outTextForCoalition(coalition.side.BLUE, string.format("Cargo_Drop_Event.weapon: %s", Weapon.getDesc(Cargo_Drop_Event.weapon).typeName), 10)
-- trigger.action.outTextForCoalition(coalition.side.BLUE, tostring('Calculate_Object_Height_AGL: ' .. aaaaa), 10)
-- trigger.action.outTextForCoalition(coalition.side.BLUE, string.format("Speed: %.2f", Calculate_Object_Speed(Cargo_Drop_initiator)), 10)
-- trigger.action.outTextForCoalition(coalition.side.BLUE, string.format("Russian Interceptor Patrol scrambled from Nalchik"), 10)

-- function basicSerialize(var)
        -- if var == nil then
                -- return "\"\""
        -- else
                -- if ((type(var) == 'number') or
                                -- (type(var) == 'boolean') or
                                -- (type(var) == 'function') or
                                -- (type(var) == 'table') or
                                -- (type(var) == 'userdata') ) then
                        -- return tostring(var)
                -- else
                        -- if type(var) == 'string' then
                                -- var = string.format('%q', var)
                                -- return var
                        -- end
                -- end
        -- end
-- end
        
-- function tableShow(tbl, loc, indent, tableshow_tbls) --based on serialize_slmod, this is a _G serialization
        -- tableshow_tbls = tableshow_tbls or {} --create table of tables
        -- loc = loc or ""
        -- indent = indent or ""
        -- if type(tbl) == 'table' then --function only works for tables!
                -- tableshow_tbls[tbl] = loc
                -- local tbl_str = {}
                -- tbl_str[#tbl_str + 1] = indent .. '{\n'
                -- for ind,val in pairs(tbl) do -- serialize its fields
                        -- if type(ind) == "number" then
                                -- tbl_str[#tbl_str + 1] = indent
                                -- tbl_str[#tbl_str + 1] = loc .. '['
                                -- tbl_str[#tbl_str + 1] = tostring(ind)
                                -- tbl_str[#tbl_str + 1] = '] = '
                        -- else
                                -- tbl_str[#tbl_str + 1] = indent
                                -- tbl_str[#tbl_str + 1] = loc .. '['
                                -- tbl_str[#tbl_str + 1] = basicSerialize(ind)
                                -- tbl_str[#tbl_str + 1] = '] = '
                        -- end
                        -- if ((type(val) == 'number') or (type(val) == 'boolean')) then
                                -- tbl_str[#tbl_str + 1] = tostring(val)
                                -- tbl_str[#tbl_str + 1] = ',\n'
                        -- elseif type(val) == 'string' then
                                -- tbl_str[#tbl_str + 1] = basicSerialize(val)
                                -- tbl_str[#tbl_str + 1] = ',\n'
                        -- elseif type(val) == 'nil' then -- won't ever happen, right?
                                -- tbl_str[#tbl_str + 1] = 'nil,\n'
                        -- elseif type(val) == 'table' then
                                -- if tableshow_tbls[val] then
                                        -- tbl_str[#tbl_str + 1] = tostring(val) .. ' already defined: ' .. tableshow_tbls[val] .. ',\n'
                                -- else
                                        -- tableshow_tbls[val] = loc .. '[' .. basicSerialize(ind) .. ']'
                                        -- tbl_str[#tbl_str + 1] = tostring(val) .. ' '
                                        -- tbl_str[#tbl_str + 1] = tableShow(val,       loc .. '[' .. basicSerialize(ind).. ']', indent .. '            ', tableshow_tbls)
                                        -- tbl_str[#tbl_str + 1] = ',\n'
                                -- end
                        -- elseif type(val) == 'function' then
                                -- if debug and debug.getinfo then
                                        -- local fcnname = tostring(val)
                                        -- local info = debug.getinfo(val, "S")
                                        -- if info.what == "C" then
                                                -- tbl_str[#tbl_str + 1] = string.format('%q', fcnname .. ', C function') .. ',\n'
                                        -- else
                                                -- if (string.sub(info.source, 1, 2) == [[./]]) then
                                                        -- tbl_str[#tbl_str + 1] = string.format('%q', fcnname .. ', defined in (' .. info.linedefined .. '-' .. info.lastlinedefined .. ')' .. info.source) ..',\n'
                                                -- else
                                                        -- tbl_str[#tbl_str + 1] = string.format('%q', fcnname .. ', defined in (' .. info.linedefined .. '-' .. info.lastlinedefined .. ')') ..',\n'
                                                -- end
                                        -- end
                                -- else
                                        -- tbl_str[#tbl_str + 1] = 'a function,\n'
                                -- end
                        -- else
                                -- tbl_str[#tbl_str + 1] = 'unable to serialize value type ' .. basicSerialize(type(val)) .. ' at index ' .. tostring(ind)
                        -- end
                -- end
                -- tbl_str[#tbl_str + 1] = indent .. '}'
                -- return table.concat(tbl_str)
        -- end
-- end




-- function F10CargoDrop(GroupId, Unitname)
        -- local rootPath = missionCommands.addSubMenuForGroup(GroupId, "Cargo Drop")
        -- missionCommands.addCommandForGroup(GroupId, "Drop direction", rootPath, CruiseMissilesMessage, {GroupId, Unitname})
        -- missionCommands.addCommandForGroup(GroupId, "Drop distance", rootPath, ForwardConvoy, nil)
        -- local measurementsSetPath = missionCommands.addSubMenuForGroup(GroupId,"Set measurement units",rootPath)
        -- missionCommands.addCommandForGroup(GroupId, "Set to Imperial (feet, knts)",measurementsSetPath,setMeasurements,{GroupId, "imperial"})
        -- missionCommands.addCommandForGroup(GroupId, "Set to Metric (meters, km/h)",measurementsSetPath,setMeasurements,{GroupId, "metric"})
-- end

-- function Calculate_Object_Speed(object)
        -- return math.sqrt(object:getVelocity().x^2 + object:getVelocity().y^2 + object:getVelocity().z^2) * 3600 / 1852 -- knts
-- end

-- function vecDotProduct(vec1, vec2)
        -- return vec1.x*vec2.x + vec1.y*vec2.y + vec1.z*vec2.z
-- end

-- function Calculate_Aircraft_ForwardVelocity(Drop_initiator)
        -- return vecDotProduct(Drop_initiator:getPosition().x, Drop_initiator:getVelocity())
-- end

--- END HERCULES CARGO SUPPORT SECTION



 
---------------------------
--- Rescue Helo Tarawa ---
---------------------------

Spawn_Rescuehelo_Tarawa = RESCUEHELO:New(UNIT:FindByName("CSG_CarrierGrp_Tarawa"), "RescueHelo_Tarawa")

Spawn_Rescuehelo_Tarawa:SetTakeoffAir()
Spawn_Rescuehelo_Tarawa:SetRespawnInAir()
Spawn_Rescuehelo_Tarawa:SetRescueStopBoatOff()
Spawn_Rescuehelo_Tarawa:SetOffsetZ(800)
--Spawn_Rescuehelo_Tarawa:Start()
  

-- END Rescue Helo Tarawa

 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- BEGIN LEGACY CARRIER Support
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

if LegacyCvn then

    env.info("JTF-1 Legacy CVN support enabled")
  
    -- local CVN = {}
    
    -- CVN.forrestal = GROUP:FindByName("CSG_CarrierGrp_Forrestal")
    -- CVN.forrestal:PatrolRoute()
  
    -------------------------------
    --- Recovery Tanker Forrestal ---
    -------------------------------
  
    Spawn_Tanker_S3B_Texaco6 = RECOVERYTANKER:New( UNIT:FindByName( "CSG_CarrierGrp_Forrestal"), "Tanker_S3B_Texaco6" )
  
    Spawn_Tanker_S3B_Texaco6:SetCallsign(CALLSIGN.Tanker.Texaco, 6)
    Spawn_Tanker_S3B_Texaco6:SetTACAN(15, "TEX")
    Spawn_Tanker_S3B_Texaco6:SetRadio(317.775)
    Spawn_Tanker_S3B_Texaco6:SetModex(049)
    Spawn_Tanker_S3B_Texaco6:SetTakeoffAir()
    Spawn_Tanker_S3B_Texaco6:SetAltitude(8000)
    Spawn_Tanker_S3B_Texaco6:SetRespawnInAir()
    Spawn_Tanker_S3B_Texaco6:Start()
  
    --------------------------
    --- Rescue Helo Forrestal ---
    ---------------------------
  
    Spawn_Rescuehelo_Forrestal = RESCUEHELO:New(UNIT:FindByName("CSG_CarrierGrp_Forrestal"), "RescueHelo_Forrestal")
  
    Spawn_Rescuehelo_Forrestal:SetTakeoffAir()
    Spawn_Rescuehelo_Forrestal:SetRespawnInAir()
    Spawn_Rescuehelo_Forrestal:SetRescueStopBoatOff()
    Spawn_Rescuehelo_Forrestal:SetOffsetZ(800)
    --Spawn_Rescuehelo_Forrestal:Start()
  
    -----------------------
    --- Airboss Forrestal ---
    -----------------------
  
    -- Create AIRBOSS object for Forrestal
    airbossForrestal=AIRBOSS:New( "CSG_CarrierGrp_Forrestal", "Forrestal" )
  
    -- Set load and save path/name for persistent LSO grades
    airbossForrestal:Load(nil, "PG_Airboss-USS Forrestal_LSOgrades.csv")
    airbossForrestal:SetAutoSave(nil, "PG_Airboss-USS Forrestal_LSOgrades.csv")
  
    local ForrestalOffset_deg = 0 -- Marshal offset
    local ForrestalDefaultPlayerSkill = AIRBOSS.Difficulty.Normal -- default skill level
    local ForrestalRadioRelayMarshall = UNIT:FindByName("RadioRelayMarshall_Forrestal") -- radio relay unit for Marshal
    local ForrestalRadioRelayPaddles = UNIT:FindByName("RadioRelayPaddles_Forrestal") -- radio relay unit for LSO
    local ForrestalClouds, ForrestalVisibility, ForrestalFog, ForrestalDust = airbossForrestal:_GetStaticWeather() -- get mission weather (assumes static weather is used)
  
    --- Determine Daytime Case
    -- adjust case according to weather state
  
    local ForrestalCase = 1 -- default to Case I
  
    if (ForrestalClouds.base < 305 and ForrestalClouds.density > 8) or ForrestalVisibility < 8000 then -- cloudbase < 1000' or viz < 5 miles, Case III
      ForrestalCase = 3
    elseif ForrestalFog and ForrestalFog.thickness > 60 and ForrestalFog.visibility < 8000 then -- visibility in fog < 5nm, Case III
      ForrestalCase = 3
    elseif (ForrestalClouds.base < 915 and ForrestalClouds.density > 8) and ForrestalVisibility >= 8000 then -- cloudbase < 3000', viz > 5 miles, Case II
      ForrestalCase = 2
    end     
  
    -- Forrestal AIRBOSS configuration
    airbossForrestal:SetMenuRecovery(30, 25, false, 30)
    airbossForrestal:SetSoundfilesFolder("Airboss Soundfiles/")
    --airbossForrestal:SetVoiceOversLSOByRaynor()
    --airbossForrestal:SetVoiceOversMarshalByFF("Airboss Soundpack Marshal FF/")
    airbossForrestal:SetTACAN(74,"X","STN")
    airbossForrestal:SetICLS( 4,"STN" )
    airbossForrestal:SetCarrierControlledArea( 50 )
    airbossForrestal:SetDespawnOnEngineShutdown( true )
    airbossForrestal:SetRecoveryTanker( Spawn_Tanker_S3B_Texaco1 )
    airbossForrestal:SetMarshalRadio( 285.675, "AM" )
    airbossForrestal:SetLSORadio( 308.475, "AM" )
    airbossForrestal:SetRadioRelayLSO( ForrestalRadioRelayPaddles )
    airbossForrestal:SetRadioRelayMarshal( ForrestalRadioRelayMarshall )
    airbossForrestal:SetAirbossNiceGuy( true ) -- allow direct to commence
    airbossForrestal:SetDefaultPlayerSkill(ForrestalDefaultPlayerSkill)
    airbossForrestal:SetRespawnAI()
    airbossForrestal:SetMenuMarkZones(false) -- disable marking zones using smoke or flares
  
    --- Fun Map Recovery Windows 
    -- sunrise and sunset dependant on mission date
    -- https://www.timeanddate.com/sun/united-arab-emirates/abu-dhabi?month=4&year=2011
    -- Sunrise @ 08:00, Sunset @ 19:00, recovery @ sunrise+10 and sunset-10
    -- otherwise, intiate recovery through F10 menu
    airbossForrestal:AddRecoveryWindow( "5:55", "18:35", ForrestalCase, ForrestalOffset_deg, true, 30 ) 
    airbossForrestal:AddRecoveryWindow( "18:35", "5:55+1", 3, ForrestalOffset_deg, true, 30 ) 
    airbossForrestal:AddRecoveryWindow( "5:55+1", "18:35+1", ForrestalCase, ForrestalOffset_deg, true, 30 ) 
  
    -- Start AIRBOSS Forrestal
    airbossForrestal:Start()
  
    -- Set AIRBOSS control of Hawk tanker recovery 
    Spawn_Tanker_S3B_Texaco6:SetRecoveryAirboss(false)
    
end -- legacy CVN support

-- XXX BEGIN BOAT SECTION

tarawa = GROUP:FindByName( "CSG_CarrierGrp_Tarawa" )
tarawa:PatrolRoute()

-- XX BEGIN AIRBOSS TARAWA 

-----------------------
--- Airboss Tarawa ---
-----------------------

airbossTarawa=AIRBOSS:New( "CSG_CarrierGrp_Tarawa", "Tarawa" )

airbossTarawa:Load(nil, "PG_Airboss-USS Tarawa_LSOgrades.csv")
airbossTarawa:SetAutoSave(nil, "PG_Airboss-USS Tarawa_LSOgrades.csv")

local tarawaOffset_deg = 0
local tarawaDefaultPlayerSkill = AIRBOSS.Difficulty.Normal -- default skill level
local tarawaRadioRelayMarshall = UNIT:FindByName("RadioRelayMarshall_Tarawa")
local tarawaRadioRelayPaddles = UNIT:FindByName("RadioRelayPaddles_Tarawa")
local tarawaClouds, tarawaVisibility, tarawaFog, tarawaDust = airbossTarawa:_GetStaticWeather() -- get mission weather (assumes static weather is used)

--- Determine Daytime Case
-- adjust case according to weather state

local tarawaCase = 1 -- default to Case I

if (tarawaClouds.base < 305 and tarawaClouds.density > 8) or tarawaVisibility < 8000 then -- cloudbase < 1000' or viz < 5 miles, Case III
  tarawaCase = 3
elseif tarawaFog and tarawaFog.thickness > 60 and tarawaFog.visibility < 8000 then -- visibility in fog < 5nm, Case III
  tarawaCase = 3
elseif (tarawaClouds.base < 915 and tarawaClouds.density > 8) and tarawaVisibility >= 8000 then -- cloudbase < 3000', viz > 5 miles, Case II
  tarawaCase = 2
end     
  
airbossTarawa:SetMenuRecovery(30, 25, false, 30)
airbossTarawa:SetSoundfilesFolder("Airboss Soundfiles/")
airbossTarawa:SetTACAN(1,"X","TAR")
airbossTarawa:SetICLS( 1,"TAR" )
airbossTarawa:SetCarrierControlledArea( 50 )
airbossTarawa:SetDespawnOnEngineShutdown( true )
airbossTarawa:SetMarshalRadio( 285.675, "AM" )
airbossTarawa:SetLSORadio( 255.725, "AM" )
airbossTarawa:SetRadioRelayLSO( tarawaRadioRelayPaddles )
airbossTarawa:SetRadioRelayMarshal( tarawaRadioRelayMarshall  )
airbossTarawa:SetAirbossNiceGuy( true )
airbossTarawa:SetDefaultPlayerSkill(tarawaDefaultPlayerSkill)
airbossTarawa:SetRespawnAI()
airbossTarawa:SetMenuMarkZones( false ) -- disable marking zones using smoke or flares

--- Fun Map Recovery Windows 
-- sunrise and sunset dependant on mission date
-- https://www.timeanddate.com/sun/united-arab-emirates/abu-dhabi?month=4&year=2011
-- Sunrise @ 05:45, Sunset @ 18:45, recovery sunrise+10 and @ sunset-10
-- otherwise, intiate recovery through F10 menu
airbossTarawa:AddRecoveryWindow( "5:55", "18:35", tarawaCase, tarawaOffset_deg, true, 30 ) 
airbossTarawa:AddRecoveryWindow( "18:35", "5:55+1", 3, tarawaOffset_deg, true, 30 ) 
airbossTarawa:AddRecoveryWindow( "5:55+1", "18:35+1", tarawaCase, tarawaOffset_deg, true, 30 ) 

airbossTarawa:Start()

-- END AIRBOSS SECTION

-- END LEGACY CARRIER Support

 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- BEGIN RANGE SCRIPT SECTION (MOOSE)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local jtf1RangeControlCommon = 250.000

-- BEGIN YG77 Range

local bombtarget_YG77={"RANGE_YG77_EAST_bombing", 
  "RANGE_YG77_WEST_bombing",
  "RANGE_YG77_TAC_01",
  "RANGE_YG77_TAC_02",
  "RANGE_YG77_TAC_03",
  "RANGE_YG77_TAC_04",
  "RANGE_YG77_TAC_05",
  "RANGE_YG77_TAC_06",
  "RANGE_YG77_TAC_07",
  "RANGE_YG77_TAC_08",
  "RANGE_YG77_TAC_09",
  "RANGE_YG77_TAC_10"
  }
local strafepit_YG77_WEST={"RANGE_YG77_strafepit_A",
  "RANGE_YG77_strafepit_B"
  }
local strafepit_YG77_EAST={"RANGE_YG77_strafepit_C",
  "RANGE_YG77_strafepit_D"
  }

Range_YG77 = RANGE:New("YG77 Range")
fouldist_YG77 = Range_YG77:GetFoullineDistance("RANGE_YG77_strafepit_A", "RANGE_YG77_FoulLine_AB")
Range_YG77:AddStrafePit(strafepit_YG77_WEST, 3000, 300, nil, true, 20, fouldist_YG77)
Range_YG77:AddStrafePit(strafepit_YG77_EAST, 3000, 300, nil, true, 20, fouldist_YG77)
Range_YG77:AddBombingTargets(bombtarget_YG77, 50)
Range_YG77:SetDefaultPlayerSmokeBomb(false)
Range_YG77:SetSoundfilesPath("Range Soundfiles/")
--Range_YG77:SetInstructorRadio(jtf1RangeControlCommon)
Range_YG77:SetRangeControl(250.100)
Range_YG77:Start()

-- END YG77 Range

-- BEGIN BM35 Range

local bombtarget_BM35 = {"BM35_village1",
  "BM35_village2",
  "BM35_village3",
  "BM35_village4",
  "BM35_village5",
  "BM35_village6",
  "BM35_village7",
  "BM35_village8",
  "BM35_village9",
  "BM35_village10"
  }

Range_BM35 = RANGE:New("BM35 Range")
Range_BM35:AddBombingTargets(bombtarget_BM35, 50)
Range_BM35:SetSoundfilesPath("Range Soundfiles/")
--Range_BM35:SetInstructorRadio(jtf1RangeControlCommon)
Range_BM35:SetRangeControl(250.200)
Range_BM35:Start()

-- END BM35 Range

-- BEGIN BM54 Range

local strafepit_BM54_WEST={"RANGE_BM54_strafepit_A",
  "RANGE_BM54_strafepit_B"
  }
local strafepit_BM54_EAST={"RANGE_BM54_strafepit_C",
  "RANGE_BM54_strafepit_D"
  }
local bombtarget_BM54={"RANGE_BM54_EAST_bombing", 
  "RANGE_BM54_WEST_bombing"
  }

Range_BM54 = RANGE:New("BM54 Range")
fouldist_BM54 = Range_BM54:GetFoullineDistance("RANGE_BM54_strafepit_A", "RANGE_BM54_FoulLine_AB")
Range_BM54:AddStrafePit(strafepit_BM54_WEST, 3000, 300, nil, true, 20, fouldist_BM54)
Range_BM54:AddStrafePit(strafepit_BM54_EAST, 3000, 300, nil, true, 20, fouldist_BM54)
Range_BM54:AddBombingTargets(bombtarget_BM54, 50)
Range_BM54:SetDefaultPlayerSmokeBomb(false)
Range_BM54:SetSoundfilesPath("Range Soundfiles/")
--Range_BM54:SetInstructorRadio(jtf1RangeControlCommon)
Range_BM54:SetRangeControl(250.300)
Range_BM54:Start()

-- END BM54 Range

-- BEGIN BM64 Range

local bombtarget_BM64={"RANGE_BM64_bombing_01", 
  "RANGE_BM64_bombing_02",
  "RANGE_BM64_bombing_03",
  "RANGE_BM64_bombing_04",
  "RANGE_BM64_TAC_01",
  "RANGE_BM64_TAC_02",
  "RANGE_BM64_TAC_03",
  "RANGE_BM64_TAC_04",
  "RANGE_BM64_TAC_05",
  "RANGE_BM64_TAC_06",
  "RANGE_BM64_TAC_07",
  "RANGE_BM64_TAC_08",
  "RANGE_BM64_TAC_09",
  "RANGE_BM64_TAC_10",
  "RANGE_BM64_TAC_11",
  "RANGE_BM64_TAC_12",
  "RANGE_BM64_TAC_13",
  "RANGE_BM64_TAC_14",
  "RANGE_BM64_TAC_15"
  }
local strafepit_BM64 ={"RANGE_BM64_Strafepit_A",
  "RANGE_BM64_Strafepit_B"
  }

Range_BM64 = RANGE:New("BM64 Range")
fouldist_BM64 = Range_BM64:GetFoullineDistance("RANGE_BM64_Strafepit_A", "RANGE_BM64_FoulLine_AB")
Range_BM64:AddStrafePit(strafepit_BM64, 3000, 300, nil, true, 20, fouldist_BM64)
Range_BM64:AddBombingTargets(bombtarget_BM64, 50)
Range_BM64:SetDefaultPlayerSmokeBomb(false)
Range_BM64:SetSoundfilesPath("Range Soundfiles/")
--Range_BM64:SetInstructorRadio(jtf1RangeControlCommon)
Range_BM64:SetRangeControl(250.400)
Range_BM64:Start()

-- END BM64 Range

-- BEGIN CR94 Range

local bombtarget_CR94={"RANGE_CR94_EAST_bombing", 
  "RANGE_CR94_WEST_bombing"
  }
local strafepit_CR94_WEST={"RANGE_CR94_strafepit_A",
  "RANGE_CR94_strafepit_B"
  }
local strafepit_CR94_EAST={"RANGE_CR94_strafepit_C",
  "RANGE_CR94_strafepit_D"
  }

Range_CR94 = RANGE:New("CR94 Range")
fouldist_CR94 = Range_CR94:GetFoullineDistance("RANGE_CR94_strafepit_A", "RANGE_CR94_FoulLine_AB")
Range_CR94:AddStrafePit(strafepit_CR94_WEST, 3000, 300, nil, true, 20, fouldist_CR94)
Range_CR94:AddStrafePit(strafepit_CR94_EAST, 3000, 300, nil, true, 20, fouldist_CR94)
Range_CR94:AddBombingTargets(bombtarget_CR94, 50)
Range_CR94:SetDefaultPlayerSmokeBomb(false)
Range_CR94:SetSoundfilesPath("Range Soundfiles/")
--Range_CR94:SetInstructorRadio(jtf1RangeControlCommon)
Range_CR94:SetRangeControl(250.600)
Range_CR94:Start()

-- END CR94 Range


-- END RANGE SCRIPT SECTION

 
-- XXX Spawn Anti-Ship Strike

function SpwnShipStrike ()

  SpwnAntiShipStrike_1 = SPAWN:New("AntiShipStrike_1")
  SpwnAntiShipStrike_2 = SPAWN:New("AntiShipStrike_2")
  SpwnAntiShipStrike_3 = SPAWN:New("AntiShipStrike_3")
  
  Rand_AntiShipStrike = math.random (3) --random selection
  
  
  if Rand_AntiShipStrike == 1 then SpwnAntiShipStrike_1:Spawn() MessageShipStrike = MESSAGE:New("Su-24's departed Bandar Abbass loaded with anti-ship missiles. Intelligence suggests their target is the Tarawa!"):ToCoalition(coalition.side.BLUE) end
  if Rand_AntiShipStrike == 2 then SpwnAntiShipStrike_2:Spawn() MessageShipStrike = MESSAGE:New("Su-24's Shiraz International Airport loaded with anti-ship missiles. Intel suggests target is the Tarawa!"):ToCoalition(coalition.side.BLUE)  end
  if Rand_AntiShipStrike == 3 then SpwnAntiShipStrike_3:Spawn() MessageShipStrike = MESSAGE:New("Su-24's Shiraz International Airport loaded with anti-ship missiles. Intel suggests target is the Forrestal!"):ToCoalition(coalition.side.BLUE) end
  
  MenuSpawnAntiShipStrike:Remove()
  Menu_destroyAntiShipStrike = MENU_COALITION_COMMAND:New(coalition.side.BLUE,"Destroy Anti-Ship Strike", MenuCoalitionBlue, destroyAntiShipStrike)

end -- function

-- XXX Destroy Anti-Ship strike

function destroyAntiShipStrike (AntiShipStrike_1)
  local AntiShipStrike_1, Index = SpwnAntiShipStrike_1:GetFirstAliveGroup()
  while AntiShipStrike_1 ~= nil do
    AntiShipStrike_1:Destroy()
    AntiShipStrike_1, Index = SpwnAntiShipStrike_1:GetNextAliveGroup(Index)
    Menu_destroyAntiShipStrike:Remove()
    MenuSpawnAntiShipStrike = MENU_COALITION_COMMAND:New(coalition.side.BLUE,"Spawn Anti-Ship Strike",MenuCoalitionBlue, SpwnShipStrike)
    end
end -- function

-- XXX Spawn CAP aircraft

function SpawnCAP( _args )

    _args[2]:InitRandomizeTemplate(_args[3])
    _args[2]:InitRandomizeZones(_args[1])
    _args[2]:InitRandomizeRoute(1,4,10000)
    _args[2]:Spawn()
end --function

-- XXX PERPETUAL TARGETS ON THE NORTHEASTERN HALF OF QESHM ISLAND
function QeshmIslandHot()

  local qeshmpoly1 = ZONE_POLYGON:New("qeshmpoly1", GROUP:FindByName("qeshmpoly1"))
  local qeshmzones = {qeshmpoly1}

  local qeshmtemplatesarmor = {"armor1",
    "armor2",
    "armor3",
    "armor4",
    "armor5",
    "armor6"
    }

  local qeshmtemplatesad = {"ad1",
    "ad2",
    "ad4",
    "ad1",
    "ad2",
    "ad3",
    "ad4",
    "ad1",
    "ad2",
    "ad5",
    "ad6",
    "armor1",
    "armor2",
    "armor3",
    "armor4",
    "armor5",
    "armor6"
    } --weighted table
  --ad5 = sa15 Tor
  --ad6 = sa19 tunguska
  -----
  battlebuddy = SPAWN:New( "spawnstub2" )
    :InitRandomizeTemplate(qeshmtemplatesad)
    :InitHeading(1,359)

  stationaries = SPAWN:New( "spawnstub1" )
    :InitRandomizeZones(qeshmzones)
    :InitLimit( 20, 3000 )
    :InitHeading(1,359)
    :InitRandomizeTemplate( qeshmtemplatesarmor )
    :OnSpawnGroup(  
      function (SpawnGroup)
        ZonePosition = SpawnGroup --IN THREES
        Zonegroup = ZONE_GROUP:New("SpawnGroup",SpawnGroup,5)
        local ZonePointVec2 = Zonegroup:GetPointVec2()
        local distance = math.random(8,15)
        local ZoneVec2 = Zonegroup:GetVec2()    
          x = ZonePointVec2:GetLat() - distance
          y = ZonePointVec2:GetLon() - distance
          battlebuddy:SpawnFromPointVec2( POINT_VEC2:New( x,y )) --bottom
          local distance2 = math.random(14,19)
          x = ZonePointVec2:GetLat() - distance2
          y = ZonePointVec2:GetLon() + distance2
          battlebuddy:SpawnFromPointVec2( POINT_VEC2:New( x,y )) --bottom
      end)
    :SpawnScheduled(60,1)

end --function

-- XXX GENERIC FUNCTION THAT CAN BE CALLED TO SPAWN ENEMY POSITIONS ANYWHERE
function SpawnCamps(_args) --args is a table containing two tables

  local zonetable = _args[1] 
  local camptemps = _args[2]

  SpawnTent = SPAWNSTATIC:NewFromStatic( "tent2", country.id.IRAN )
  
   SpawnHouse1 = SPAWNSTATIC:NewFromStatic( "house1", country.id.IRAN )
   SpawnHouse2 = SPAWNSTATIC:NewFromStatic( "house2", country.id.IRAN )
   SpawnHouse3 = SPAWNSTATIC:NewFromStatic( "house3", country.id.IRAN )
   SpawnHouse4 = SPAWNSTATIC:NewFromStatic( "house4", country.id.IRAN )
   SpawnHouse5 = SPAWNSTATIC:NewFromStatic( "house5", country.id.IRAN )  
  
  local spawnhouse = {SpawnHouse1,SpawnHouse2,SpawnHouse3,SpawnHouse4}
  
  SpawnTower = SPAWN:New( "tower" )

  local EnemyInf = SPAWN:New("inf")

  local infsingle = SPAWN:New("infsingle")
 
  local campheavy = SPAWN:New("campheavy")
  :InitRandomizeTemplate(camptemps)
  :InitRandomizeZones(zonetable)
  :InitHeading(1,359)
  :OnSpawnGroup(
   function( SpawnGroup )
  local ZonePointVec2 = SpawnGroup:GetPointVec2()
    --towers
   for Heading = 0, 360,90 do
    local randheading = math.random(1,90)
    local Radial = Heading * ( math.pi*2 ) / 360
    local x = ZonePointVec2:GetLat() + math.cos( Radial ) * 87
    local y = ZonePointVec2:GetLon() + math.sin( Radial ) * 97
    SpawnTower:SpawnFromPointVec2( POINT_VEC2:New( x, y ), Heading + randheading )
   end
   --outer ring
   for Heading = 0, 270,30 do
    local randheading = math.random(1,90)
    local Radial = Heading * ( math.pi*2 ) / 360
    local x = ZonePointVec2:GetLat() + math.cos( Radial ) * 77
    local y = ZonePointVec2:GetLon() + math.sin( Radial ) * 77
    SpawnTent:SpawnFromPointVec2( POINT_VEC2:New( x, y ), Heading + randheading )
   end
   
   --inner ring
   for Heading = 60, 300,50 do
    local randdistance = math.random(45,60)
    local Radial = Heading * ( math.pi*2 ) / 360
    local x = ZonePointVec2:GetLat() + math.cos( Radial ) * randdistance
    local y = ZonePointVec2:GetLon() + math.sin( Radial ) * randdistance
    local house = spawnhouse[math.random(#spawnhouse)]
    house:SpawnFromPointVec2( POINT_VEC2:New( x, y ), Heading + randdistance )
    
   end

      EnemyCampZone = ZONE_UNIT:New("bgzone", SpawnGroup, 59)
     
     for i=1,5 do 
      einf1 = infsingle:SpawnInZone(EnemyCampZone,true)
     end

   end)
  
  for i=1,3 do
    camps = campheavy:Spawn()
  end
  
  local count = 0
  for i in pairs(zonetable) do count = count + 1 end
      --MESSAGE:New("count = " .. count .. "" ,245,""):ToAll()
  
  if count == 7 then --Forrestal/Bandar
      MESSAGE:New("ENEMY CAMPS ARE LOCATED OFF THE COAST, IN GRID SQUARES 40 R CQ05 & CQ15, EAST OF BANDAR LENGEH" ,60,""):ToAll()
  end

  if count == 8 then --Kerman
      MESSAGE:New("ENEMY CAMPS ARE LOCATED NE OF KERMAN IN GRID 40 R EU 17",60 ,""):ToAll()
  end

      --errbody ;-D
      MESSAGE:New("LOCATE AND DESTROY THESE HEAVILY ARMED FACILITIES.  THREATS CAN INCLUDE INFANTRY, HEAVY MG, RPG, I/R SAM, LIGHT ARMOR, AAA" ,60,""):ToAll()
      
end --function

-- XXX TakurGhar Mission
function TakurGhar()

  local tgpoly1 = ZONE_POLYGON:New("tgpoly1", GROUP:FindByName("tgpoly1"))
  
  local bunkerzones = {tgpoly1}

  local tgmanpad = SPAWN:New("tgmanpad")
  :InitRandomizeZones(bunkerzones)
  --:InitRandomizeRoute(1,6,150)
  tgmanpadspawn = nil
   for i=1,4 do
    tgmanpad:Spawn()
   end

  local DSHK = SPAWN:New("DSHK")
  :InitRandomizeZones(bunkerzones)
  :InitHeading(180,359)
   for i=1,4 do
    DSHK:Spawn()
   end

  local tgbunker = SPAWN:New("tgbunker")
  :InitRandomizeZones(bunkerzones)
  :InitHeading(180,359)
   for i=1,4 do
    tgbunker:Spawn()
   end

  local tgaaa = SPAWN:New("tgaaa")
  :InitRandomizeZones(bunkerzones)
  :InitHeading(180,359)
  tgaaa:Spawn()
  tgaaa:Spawn()
  
  local nswteam = SPAWN:New("nswteam"):Spawn()
    
  local msg = "CH-47 HAS CRASHED ON TAKUR GHAR MOUNTAIN. TROOPS IN CONTACT\n"
    .. "MGRS: 40 EU 402 749\n"
    .. "LL: N 30 30 32 | E 057 25 15\n"
    .. "ALTITUDE 12,000ft\n"
    .. "TEAM IS IN COVER BEHIND A HILL WEST OF THE PEAK\n"
    .. "HEAVY FIRE FROM HARDENED BUNKERS ON THE PEAK, ALSO AAA POSSIBLE\n"
    .. "NUMEROUS INFANTRY INCLUDING MANPADS, AAA\n"
    .. "DESTROY THE ENEMY AND BUNKERS"
  MESSAGE:New(msg, 60, ""):ToAll()
    
end --function

-- XXX POPULATE LAVAN ISLAND WITH A MIX OF THREATS
function LavanIsland ()

  local lavanpoly1 = ZONE_POLYGON:New("lavan1poly", GROUP:FindByName("lavan1poly"))
  local lavanpoly2 = ZONE_POLYGON:New("lavan2poly", GROUP:FindByName("lavan2poly"))
  local lavanpoly3 = ZONE_POLYGON:New("lavan3poly", GROUP:FindByName("lavan3poly"))
  local lavan4 = ZONE:New("lavan4")

  local lavanzones = {lavanpoly1, lavanpoly2, lavanpoly3, lavan4}

  local lavanconvoy1 = SPAWN:New("lavanpatrol1")
  :InitRandomizeRoute(0,7,400)
  :Spawn()
  local lavanconvoy2 = SPAWN:New("lavanpatrol2")
  :InitRandomizeRoute(0,7,400)
  :Spawn()
  

  local lavantable = {"lavan4","lavan1","lavan2","lavan3","lavan5","lavan6","lavan1","lavan2","lavan3","lavan5","lavan6",}

  local lavandefense = SPAWN:New("lavan1")
  :InitRandomizeZones(lavanzones)
  :InitRandomizeTemplate(lavantable)
  :InitHeading(1,359)
  :InitLimit(10,10)
  :SpawnScheduled(2,1)


  local msg = "LAVAN ISLAND IS DEFENDED BY POSSIBLE SAM, APCs AND AAA GUNS.\n"
    .. "ENEMY IS CONCENTRATED AROUND THE AIRFIELD AND REFINERY BUT COULD BE ELSEWHERE ON THE ISLAND AS WELL.\n"
    .. "INTEL: TWO CONVOYS HAVE BEEN SPOTTED RESUPPLYING TROOPS PERIODICALLY ON THE WEST SIDE OF THE ISLAND.\n"

  MESSAGE:New(msg ,60,""):ToAll()
  
end --function

-- XXX STAND UP A FULLY OPERATIONAL SA6 SITE ON LAVAN ISLAND
function LavanIslandSA6()
  local lavantable = {"lavan1","lavan2","lavan3","lavan5"}
  local lavansa6poly1 = ZONE_POLYGON:New("lavansa6poly1", GROUP:FindByName("lavansa6poly1"))
  local lavansa6zones = {lavansa6poly1}
  local lavansa6 = SPAWN:New("lavansa6"):Spawn()
  
  local lavansa6support = SPAWN:New("lavan1")
  :InitRandomizeZones(lavansa6zones)
  :InitRandomizeTemplate(lavantable)
  :InitHeading(1,359)
  :InitLimit(8,8)
  :SpawnScheduled(1,1)
  
  local lavansa6inf = SPAWN:New("inf")
  :InitRandomizeZones(lavansa6zones)
  :InitHeading(1,359)
  :InitLimit(11,10)
  :SpawnScheduled(1,1)

  local msg = "IRAN HAS STAGED AN SA6 SYSTEM ON CENTRAL LAVAN ISLAND AND HAS BEEN PROVOKING COALITION FLIGHTS WITH TRACKING AND LOCKUPS\n"
    .. "IT IS SUPPORTED BY A BATTERY OF ARMOR AND AAA GUNS\n"
    .. "DESTROY THE SA6 SITE ENTIRELY AND AS MANY SUPPORT UNITS AS POSSIBLE"

  MESSAGE:New(msg ,60,""):ToAll()
      
end --function

-- XXX START EWR ZONES IN SOUTHERN IRAN FOR RADAR DETECTION/SEAD
function IranEWR()
  local IranEWRZones = {ZONE:New("IranEWR001"),ZONE:New("IranEWR002"),ZONE:New("IranEWR003"),ZONE:New("IranEWR004"),ZONE:New("IranEWR005"), }
  
  ewrinfantry = SPAWN:New("infsquad")
    :InitHeading(1,359)
  
  IranEWR = SPAWN:New("IranEWR")
    :InitHeading(1,359)
    :OnSpawnGroup(
      function( SpawnGroup )
        ZonePosition = SpawnGroup
        Zonegroup = ZONE_GROUP:New("SpawnGroup",SpawnGroup,5)
        local ZonePointVec2 = Zonegroup:GetPointVec2()
        local ZoneVec2 = Zonegroup:GetVec2()    
        x = ZonePointVec2:GetLat() - 10
        y = ZonePointVec2:GetLon() - 10
        ewrinfantry:SpawnFromPointVec2( POINT_VEC2:New( x,y )) 
      end )
  
  for i=1,#IranEWRZones do
    IranEWR:SpawnInZone(IranEWRZones[i],true)
  end

end --function

-- XXX SPAWN AN SA-15 TOR IN RANDOM POSITIONS NEAR BL AIRBASE
function BLSEAD ()
  local blseadzones = {ZONE:New("blsead1"),ZONE:New("blsead2"),ZONE:New("blsead3"),}
  
  MESSAGE:New("AN SA-15 TOR IS OPERATING IN THE AREA OF 4O R BQ 67.  ENGAGE AND DESTROY IT." ,60,""):ToAll()
  
  blsead1:InitRandomizeZones(blseadzones)
  blsead1:Spawn()
  
end --function

-- XXX Lar Airfield Attack
function airfieldattacklar()
  -- COMPLEX MISSION IN WHICH INGRESS TOWARD LAR WILL PRODUCE CAP AIRCRAFT THAT WILL COME AFTER YOU.
  -- IF THEIR EWR SITE SPECIFIC TO THIS MISSION IS ACTIVE, THEY WILL DETECT YOU FROM FURTHER AWAY.
  -- IF NOT, THE DETECTION RADIUS IS MUCH SHORTER. 
  -- CAP LAUNCHES CONTINUE UNTIL THE AIRFIELD IS ATTACKED AND THE COMMAND AND CONTROL VEHICLE IS
  -- DESTROYED. AIRFIELD IS WELL DEFENDED WITH RANDOM ARMOR AND AIR THREATS.
  
  bogeys = SPAWN:New("larair1")
    :InitLimit(1,16)
    :InitRandomizeRoute(0,2,10000,10000):SpawnScheduled(30,1)
          
  ewrzone = ZONE:New("larewrzone")
  
  defensezone = ZONE:New("lardefensezone")
  
  staticplane = SPAWN:New("larcommandpost")
    :SpawnInZone(ZONE:New("larcpzone"),true)
  
  staticplaneGroupName = "larcommandpost" .. "#001"
  
  staticplanegroup = GROUP:FindByName(staticplaneGroupName)
  
  local airbase_ewr1 = SPAWN:New("ewr1"):Spawn()
  
  local larpoly1 = ZONE_POLYGON:New("larpoly1", GROUP:FindByName("larpoly1"))
  
  local zonetable_lar = {larpoly1}
  
  local larairfieldtemplates = {
    "armor1",
    "armor2",
    "armor3",
    "ad1",
    "ad2",
    "ad3",
    "ad4",
    }
  
  local armor1 = SPAWN:New("armor1")
    :InitLimit(5,5)
    :InitHeading(1,359)
    :InitRandomizeZones(zonetable_lar)
    :InitRandomizeTemplate(larairfieldtemplates)
    :SpawnScheduled(1,1)
  
  local ad1 = SPAWN:New("ad1")
    :InitLimit(5,5)
    :InitHeading(1,359)
    :InitRandomizeZones(zonetable_lar)
    :InitRandomizeTemplate(larairfieldtemplates)
    :SpawnScheduled(1,1)
  
  
  BlueGroups = SET_GROUP:New()
  
  BlueGroups:FilterCoalitions("blue")
    :FilterStart()
  
  inzone = 0
  spawnstarted = 0
  
  ewr1GroupString = "ewr1" .. "#001"
  
  ewr1Group = GROUP:FindByName(ewr1GroupString)
  
  zonecheck = SCHEDULER:New( nil,
    function()
      keyGroupAlive = staticplanegroup:IsAlive()
      if (keyGroupAlive) then
        BlueGroups:ForEachGroupCompletelyInZone( ewrzone,
          function( GroupObject )   
            if ewr1Group:IsAlive() then
              --MESSAGE:New("Lar scrambling a jet for intercept...."):ToAll()
              inzone = 1
            else
              inzone = 0
              bogeys:SpawnScheduleStop()
              -- MESSAGE:New("ewr1 is DEAD. No spawn based on this zone."):ToAll()
            end
          end
          ) --bgfunction
        BlueGroups:ForEachGroupCompletelyInZone( defensezone,
          function( GroupObject )     
            inzone = 1
            bogeys:SpawnScheduleStart()
            -- MESSAGE:New("inside lar defense zone. startspawn."):ToAll()
          end
          ) --func
      else --ifalive
        MESSAGE:New("Lar Air Command Post Neutralized. Lar is unable to launch further aircraft." ,60,""):ToAll()
        bogeys:SpawnScheduleStop()
        ScheduleStop(zonecheck)
      end
    end,
    {}, 0, 120 ) --sch
  
    
  local msg = "Attack Lar Air Base, which operates a MiG-21 Squadron.\n"
    .. "Lar will launch intercept AC if incursion detected by its EWR system\n"
    .. "located at N:27 08 39, E:054 00 30.\n"
    .. "** Without the EWR site it will not launch AC until the airfield itself can detect them.\n"
    .. "Airfield is well defended with AAA/IR SAM, Manpads and Heavy Armor.\n"
    .. "Air Ops are controlled from a mobile skp-11 command unit located near the control tower.\n"
    .. "If that is destroyed, they can no longer launch aircraft."

  MESSAGE:New(msg ,60,""):ToAll()
  
end --function

-- XXX Shiraz Airfield Attack
function airfieldattackshiraz()
  -- COMPLEX MISSION IN WHICH INGRESS TOWARD SHIRAZ WILL PRODUCE CAP AIRCRAFT THAT WILL COME AFTER YOU.
  -- IF THEIR EWR SITE SPECIFIC TO THIS MISSION IS ACTIVE, THEY WILL DETECT YOU FROM FURTHER AWAY.
  -- IF NOT, THE DETECTION RADIUS IS MUCH SHORTER. 
  -- CAP LAUNCHES CONTINUE UNTIL THE AIRFIELD IS ATTACKED AND THE COMMAND AND CONTROL VEHICLE IS
  -- DESTROYED. AIRFIELD IS WELL DEFENDED WITH RANDOM ARMOR AND AIR THREATS.
  
  bogeys = SPAWN:New("shirazair1")
    :InitLimit(1,16)
    :InitRandomizeRoute(0,2,10000,10000)
    :SpawnScheduled(30,1)
          
  ewrzone = ZONE:New("shirazewrzone")
  
  defensezone = ZONE:New("ShirazCAPZone")
  
  staticplane = SPAWN:New("shirazcommandpost")
  
  staticplane:SpawnInZone(ZONE:New("shirazcpzone"),true)
  
  staticplaneGroupName = "shirazcommandpost" .. "#001"
  
  staticplanegroup = GROUP:FindByName(staticplaneGroupName)
  
  local airbase_ewr1 = SPAWN:New("shirazewr1"):Spawn()
  
  local shirazpoly1 = ZONE_POLYGON:New("shirazpoly1", GROUP:FindByName("shirazpoly1"))
  
  local zonetable_shiraz = {shirazpoly1}
  
  local shirazairfieldtemplates = {
    "ad1",
    "ad2",
    "ad3",
    "ad4",
    "armor1",
    "armor2",
    "armor3",
    "ad1",
    "ad2",
    "ad3",
    "ad4",
    }
  
  local armor1 = SPAWN:New("armor1")
    :InitLimit(5,5)
    :InitHeading(1,359)
    :InitRandomizeZones(zonetable_shiraz)
    :InitRandomizeTemplate(shirazairfieldtemplates)
    :SpawnScheduled(1,1)
  
  local ad1 = SPAWN:New("ad1")
    :InitLimit(8,8)
    :InitHeading(1,359)
    :InitRandomizeZones(zonetable_shiraz)
    :InitRandomizeTemplate(shirazairfieldtemplates)
    :SpawnScheduled(1,1)
  
  BlueGroups = SET_GROUP:New()
  
  BlueGroups:FilterCoalitions("blue")
    :FilterStart()
  
  inzone = 0
  spawnstarted = 0
  
  ewr1GroupString = "shirazewr1" .. "#001"
  
  ewr1Group = GROUP:FindByName(ewr1GroupString)
  
  zonecheck = SCHEDULER:New( nil,
    function()
      keyGroupAlive = staticplanegroup:IsAlive()
      if (keyGroupAlive) then
        BlueGroups:ForEachGroupCompletelyInZone( ewrzone,
          function( GroupObject )   
            if ewr1Group:IsAlive() then
              --MESSAGE:New("Lar scrambling a jet for intercept...."):ToAll()
              inzone = 1
            else
              inzone = 0
              bogeys:SpawnScheduleStop()
              -- MESSAGE:New("ewr1 is DEAD. No spawn based on this zone."):ToAll()
            end
           end
           ) --bgfunction
          BlueGroups:ForEachGroupCompletelyInZone( defensezone,
            function( GroupObject )     
              inzone = 1
              bogeys:SpawnScheduleStart()
              -- MESSAGE:New("inside lar defense zone. startspawn."):ToAll()
            end
            ) --func
      else --ifalive
        MESSAGE:New("Shiraz Air Command Post Neutralized. Lar is unable to launch further aircraft." ,60,""):ToAll()
        bogeys:SpawnScheduleStop()
        ScheduleStop(zonecheck)
      end
    end,
    {}, 0, 120 ) --sch
  
    local msg = "Attack Shiraz Air Base, which operates a Fighter Squadron.\n"
      .. "Shiraz will launch intercept AC if incursion detected by its EWR system\n"
      .. "located at N:28 42 28, E:053 13 42.\n"
      .. "** Without the EWR site it will not launch AC until the airfield itself can detect them.\n"
      .. "Airfield is well defended with AAA/IR SAM, Manpads and Heavy Armor.\n"
      .. "Air Ops are controlled from a mobile skp-11 command unit located near the control tower.\n"
      .. "If that is destroyed, they can no longer launch aircraft."

    MESSAGE:New(msg ,60,""):ToAll()
  
end --function

-- XXX Factory strike - Gannon 11/1
-- Factory strike Easy
function FactoryStrikeEasy ()

-- Spawn AAA & Manpad at Gate
  local FactoryPatrol = SPAWN:New("FactoryGate")
  local FactoryPatrolGroup = FactoryPatrol:Spawn()

-- Spawn AAA and SAM patrol around factory
  local FactoryPatrol = SPAWN:New("FactoryPatrol")
  local FactoryPatrolGroup = FactoryPatrol:Spawn()
  FactoryPatrolGroup:PatrolRoute()
  
-- Spawn AAA and SAM road patrol on North/South route  
  local FactorySAPatrol = SPAWN:New("FactorySAPatrol")
  local FactorySAPatrolGroup = FactorySAPatrol:Spawn()
  FactorySAPatrolGroup:PatrolRoute()

-- Spawn Zones  
  local SpawnZones = {
    ZONE:New("FactoryZone1"), 
    ZONE:New("FactoryZone2"), 
    ZONE:New("FactoryZone3"), 
    ZONE:New("FactoryZone4"), 
    ZONE:New("FactoryZone5"), 
    ZONE:New("FactoryZone6"), 
    ZONE:New("FactoryZone7"), 
    ZONE:New("FactoryZone8"), 
    ZONE:New("FactoryZone9"), 
    ZONE:New("FactoryZone10"), 
    ZONE:New("FactoryZone11"),
    }
    
  local FactorySA6 = SPAWN:New("FactorySA6")
    :InitLimit(50, 3)
    :InitRandomizeZones(SpawnZones)
    :SpawnScheduled(.5, .5)
  
  local msg = "Asaloyeh Factory Strike EASY\n"
    .. "We have received intelligence that Iran is developing chemical weapons in a new\n"
    .. "facility on the Iranian coast NW of Lavan Island.\n"
    .. "Grid: 'XL'\n"
    .. "LL: N 27.33.27  E 52.33.22.\n"
    .. "Our satellite intel suggests that the factory is guarded by multiple SA-6 and AAA sites.\n"
    .. "Destroy the factory and limit the air defenses in the region to allow for follow up strikes."

  MESSAGE:New(msg ,60,""):ToAll()
  
end --function

-- Factory strike Medium
function FactoryStrikeMedium ()

-- Spawn AAA & Manpad at Gate
  local FactoryPatrol = SPAWN:New("FactoryGate")
  local FactoryPatrolGroup = FactoryPatrol:Spawn()

-- Spawn AAA and SAM patrol around factory
  local FactoryPatrol = SPAWN:New("FactoryPatrol")
  local FactoryPatrolGroup = FactoryPatrol:Spawn()
  FactoryPatrolGroup:PatrolRoute()
  
-- Spawn AAA and SAM road patrol on North/South route  
  local FactorySAPatrol = SPAWN:New("FactorySAPatrol")
  local FactorySAPatrolGroup = FactorySAPatrol:Spawn()
  FactorySAPatrolGroup:PatrolRoute()

-- Spawn Zones  
  local SpawnZones = {
    ZONE:New("FactoryZone1"), 
    ZONE:New("FactoryZone2"), 
    ZONE:New("FactoryZone3"), 
    ZONE:New("FactoryZone4"), 
    ZONE:New("FactoryZone5"), 
    ZONE:New("FactoryZone6"), 
    ZONE:New("FactoryZone7"), 
    ZONE:New("FactoryZone8"), 
    ZONE:New("FactoryZone9"), 
    ZONE:New("FactoryZone10"), 
    ZONE:New("FactoryZone11"),
    }
    
  local FactorySA6 = SPAWN:New("FactorySA6")
    :InitLimit(50, 2)
    :InitRandomizeZones(SpawnZones)
    :SpawnScheduled(.5, .5)

  local FactorySA6 = SPAWN:New("FactorySA11")
    :InitLimit(50, 1)
    :InitRandomizeZones(SpawnZones)
    :SpawnScheduled(.5, .5)   
  
  local msg = "Asaloyeh Factory Strike MEDIUM\n"
    .. "We have received intelligence that Iran is developing chemical weapons in a new\n"
    .. "facility on the Iranian coast NW of Lavan Island.\n"
    .. "Grid: 'XL'\n"
    .. "LL: N 27.33.27  E 52.33.22.\n"
    .. "Our satellite intel suggests that the factory is guarded by multiple SA-6, SA-11, and AAA sites.\n"
    .. "Destroy the factory and limit the air defenses in the region to allow for follow up strikes."

  MESSAGE:New(msg ,60,""):ToAll()
  
end --function

-- Factory strike Hard
function FactoryStrikeHard ()

-- Spawn AAA & Manpad at Gate
  local FactoryPatrol = SPAWN:New("FactoryGate")
  local FactoryPatrolGroup = FactoryPatrol:Spawn()

-- Spawn AAA and SAM patrol around factory
  local FactoryPatrol = SPAWN:New("FactoryPatrol")
  local FactoryPatrolGroup = FactoryPatrol:Spawn()
  FactoryPatrolGroup:PatrolRoute()
  
-- Spawn AAA and SAM road patrol on North/South route  
  local FactorySAPatrol = SPAWN:New("FactorySAPatrol")
  local FactorySAPatrolGroup = FactorySAPatrol:Spawn()
  FactorySAPatrolGroup:PatrolRoute()

-- Spawn Zones  
  local SpawnZones = {
    ZONE:New("FactoryZone1"), 
    ZONE:New("FactoryZone2"), 
    ZONE:New("FactoryZone3"), 
    ZONE:New("FactoryZone4"), 
    ZONE:New("FactoryZone5"), 
    ZONE:New("FactoryZone6"), 
    ZONE:New("FactoryZone7"), 
    ZONE:New("FactoryZone8"), 
    ZONE:New("FactoryZone9"), 
    ZONE:New("FactoryZone10"), 
    ZONE:New("FactoryZone11"),
    }
    
  local FactorySA6 = SPAWN:New("FactorySA6")
    :InitLimit(50, 1)
    :InitRandomizeZones(SpawnZones)
    :SpawnScheduled(.5, .5)
    
  local FactorySA6 = SPAWN:New("FactorySA11")
    :InitLimit(50, 2)
    :InitRandomizeZones(SpawnZones)
    :SpawnScheduled(.5, .5)
  
  local FactorySA6 = SPAWN:New("FactorySA10")
    :InitLimit(50, 1)
    :InitRandomizeZones(SpawnZones)
    :SpawnScheduled(.5, .5)  
  
  local msg = "Asaloyeh Factory Strike HARD\n"
    .. "We have received intelligence that Iran is developing chemical weapons in a new\n"
    .. "facility on the Iranian coast NW of Lavan Island.\n"
    .. "Grid: 'XL'\n"
    .. "LL: N 27.33.27  E 52.33.22.\n"
    .. "Our satellite intel suggests that the factory is guarded by multiple SA-6, SA-10, SA-11, and AAA sites.\n"
    .. "Destroy the factory and limit the air defenses in the region to allow for follow up strikes."

  MESSAGE:New(msg ,60,""):ToAll()
  
end --function

FactoryStrikeEasy = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"ASALOYEH FACTORY STRIKE EASY - 1-2 planes",MenuAsaloyeh,FactoryStrikeEasy, "")
FactoryStrikeMedium = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"ASALOYEH FACTORY STRIKE MEDIUM - 2-4 planes",MenuAsaloyeh,FactoryStrikeMedium, "")
FactoryStrikeHard = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"ASALOYEH FACTORY STRIKE HARD - 4+ planes",MenuAsaloyeh,FactoryStrikeHard, "")

-- END FUNCTIONS SECTION

-- XXX BEGIN ON DEMAND CAP SECTION

IranCAPAircraft = {"Iran_Mig31","Iran_Mig29","Iran_Mig21","Iran_Mig21","Iran_Mig29"}
-- IranCAPAircraft = {"Iran_F14","Iran_Mig29","Iran_Mig21","Iran_Mig21","Iran_Mig29"}



-- END ON DEMAND CAP SECTION
-- XXX BEGIN ANTI-SHIP STRIKE SECTION

--Spawn MENU Display
MenuSpawnAntiShipStrike = MENU_COALITION_COMMAND:New(coalition.side.BLUE,"Spawn Anti-Ship Strike", MenuCoalitionBlue , SpwnShipStrike)

-- END ANTI-SHIP STRIKE SECTION


-- XXX BEGIN GROUND MISSION SECTION

QeshmIslandHot()

blsead1 = SPAWN:New("blsead1") --sa15 tor, defined outside the function by design

BandarCampZones = {
  ZONE:New("bc1"),
  ZONE:New("bc2"), 
  ZONE:New("bc3"),
  ZONE:New("bc4"),
  ZONE:New("bc5"),
  ZONE:New("bc6"),
  ZONE:New("bc7"),
  }

campsBandarEnemy = {
  "campheavy5" ,
  "campheavy6",
  "campheavy7", 
  "campheavy8",
  "campheavy5",
  "campheavy6",
  "campheavy7",
  "campheavy8",
  } 

_argsBandar = {
  BandarCampZones,
  campsBandarEnemy
  }

campsBandar = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"TERRORIST TRAINING CAMPS HARD",MenuBandarL,SpawnCamps, _argsBandar)

LavanIsland = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"LAVAN ISLAND DEFENSE",MenuBandarL,LavanIsland, "")

SA6LavanIsland = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"LAVAN ISLAND SA6 SITE",MenuBandarL,LavanIslandSA6, "")

FactoryStrike = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"ASALOYEH FACTORY STRIKE",MenuBandarL,FactoryStrike, "") --Added Gannon 8/20

LIVESEAD = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"BANDAR LENGEH SEAD",MenuBandarL,BLSEAD, "")

--EWR Sites 
EWRIran = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"ACTIVATE IRAN EWR SITES",MenuCoalitionTopLevel,IranEWR, "")

--CAP menu items
--Shiraz
ShirazZones = {
  ZONE:New("ShirazCAPZone"),
  }

ShirazCAP1 = SPAWN:New("ShirazCAP1")

ShirazCAPAircraft = {
  "Iran_Mig31",
  "Iran_Mig31",
  "Iran_Mig29",
  "Iran_Mig21",
  "Iran_Mig31",
  }

_Shiraz_args = {
  ShirazZones,
  ShirazCAP1,
  ShirazCAPAircraft,
  }

ShirazCAPs = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"Spawn Shiraz CAP",CAP_Shiraz,SpawnCAP, _Shiraz_args)
shirazattack1 = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"AIRFIELD ATTACK SHIRAZ",MenuShiraz,airfieldattackshiraz, "mission")

--Lar
m1 = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"AIRFIELD ATTACK LAR",MenuBandarL,airfieldattacklar, "mission")

--Lar AB
LarCAPZones = {
  ZONE:New("LarCAPZone"),
  }
  
LARCAP1 = SPAWN:New("LarCAP1")

LarCAPAircraft = {
  "Iran_Mig29", 
  "Iran_Mig21",
  "Iran_Mig21",
  "Iran_Mig29",
  }

_Lar_args = {
  LarCAPZones,
  LARCAP1,
  LarCAPAircraft,
  }

LARCAPs = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"Spawn LAR CAP",CAP_Lar,SpawnCAP, _Lar_args)

--Bandar Abbas
BandarZones = {
  ZONE:New("BandarCAPZone"),
  }

BandarACAP1 = SPAWN:New("BandarAbbasCAP1")

BACAPAircraft = {
  "Iran_Mig29",
  "Iran_Mig21",
  "Iran_Mig21",
  "Iran_Mig29",
  }
  
_BandarA_args = {
  BandarZones,
  BandarACAP1,
  BACAPAircraft,
  }

BandarACAPs = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"Spawn Bandar Abbas CAP",CAP_BandarA,SpawnCAP, _BandarA_args)

--kerman

KermanCamps = {
  ZONE:New("k1"), 
  ZONE:New("k2"), 
  ZONE:New("k3"),
  ZONE:New("k4"),
  ZONE:New("k5"),
  ZONE:New("k6"),
  ZONE:New("k7"),
  ZONE:New("k8"),
  }
 
camptemps = {
  "campheavy5",
  "campheavy6",
  "campheavy7",
  "campheavy8",
  }
   
_args = {
  KermanCamps,
  camptemps,
  }

campKerman = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"TERRORIST TRAINING CAMPS",MenuKerman,SpawnCamps, _args)
takurghar = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"TAKUR GHAR CAS",MenuKerman,TakurGhar, "")

-- ## Set trace on/off (true, false)
BASE:TraceOnOff(false)

--env.info( '*** CSG-1 MOOSE MISSION SCRIPT END *** ' )

 
env.info( '*** JTF-1 MOOSE MISSION SCRIPT END ***' )
 
