env.info( "[JTF-1] missionautocap_data.lua" )
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- MISSION AUTO CAP SETTINGS FOR MIZ
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--
-- This file MUST be loaded AFTER missionautocap.lua
--
-- These values are specific to the miz
--

-- Error prevention. Create empty container if module core lua not loaded.
if not MISSIONAUTOCAP then 
	MISSIONAUTOCAP = {}
	MISSIONAUTOCAP.traceTitle = "[JTF-1 MISSIONAUTOCAP] "
	_msg = self.traceTitle .. "CORE FILE NOT LOADED!"
	BASE:E(_msg)
	-- EXIT MODULE DATA
	return
end

----------------------------------
--- MISSION AUTO CAP Data ---
----------------------------------

MISSIONAUTOCAP.wings = {
    {
        alias = "Red CAP",
        airBaseName = AIRBASE.PersianGulf["Lar"],
        coalition = "red",
        ewrName = "ewr1",
        acceptZones = {
            "ZONE_Red",
        },
        rejectZones = {
            "Zone_Blue",
        },
        patrolPoints = {
            "ZONE_redCAP1",
        },
        squadrons = {
            {
                templateName = "",
                squadName = "",
            },

        },
        --tkrSquadrons = {},
        --awacsSquadrons = {},
        --addWings = {},

    }
}

-- Start AUTO CAP Module
if MISSIONAUTOCAP.Start then
	_msg = MISSIONAUTOCAP.traceTitle .. "Call Start() from missionautocap_data."
	BASE:T(_msg)
	MISSIONAUTOCAP:Start()
end

-- END MISSION AUTO CAP DATA