env.info( "*** JTF-1 MOOSE MISSION SCRIPT START ***" )
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- BEGIN INIT
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


---- remove default MOOSE player menu
_SETTINGS:SetPlayerMenuOff()

--- debug on/off
BASE:TraceOnOff(false)

JTF1 = {
    missionRestart = "ADMIN9999", -- Message to trigger mission restart via jtf1-hooks
    flagLoadMission = 9999, -- flag for load misison trigger
    defaultServerConfigFile = "LocalServerSettings.lua", -- srs server settings file name
    defaultMissionList = "missions.lua"
}

if not lfs then
    BASE:E( "[JTF1] WARNING: lfs not desanitized. Loading will look into your DCS installation root directory rather than the \"Saved Games\\DCS\" folder.")
else

    -- load local server settings file
    local settingsFile = lfs.writedir() .. JTF1.defaultServerConfigFile

    if UTILS.CheckFileExists(lfs.writedir(), JTF1.defaultServerConfigFile) then
        BASE:E( "[JTF1] Mission INIT settingsFile = " .. settingsFile )
        dofile(settingsFile)
        for _name, _value in pairs(LOCALSERVER) do
            JTF1[_name] = _value
        end
        BASE:E("[JTF1] Local server settings to follow...")
        BASE:E(JTF1)
    else
        BASE:E("[JTF1] Error! Server config file not found. Using mission defaults")
    end

    -- load server mission list
    local missionPath = (JTF1.missionPath and JTF1.missionPath or (lfs.writedir() .. "\\missions"))
    local missionList = (JTF1.missionList and JTF1.missionList or JTF1.defaultMissionList)
    local missionListFile = missionPath .. "\\" .. missionList
    BASE:T("[JTF1] mission list file: " .. missionListFile)

    if UTILS.CheckFileExists(missionPath, missionList) then
        BASE:E( "[JTF1] Mission list file exists")
        dofile(missionListFile)
        JTF1.missionList = MISSIONLIST
        BASE:E(JTF1.missionList)
    else
        BASE:E("[JTF1] Error! Mission list file not found.")        
    end

end

--- END INIT