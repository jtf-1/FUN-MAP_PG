env.info( "[JTF-1] MISSIONEGCICAP_data.lua" )
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- MISSION AUTO CAP SETTINGS FOR MIZ
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--
-- This file MUST be loaded AFTER MISSIONEGCICAP.lua
--
-- These values are specific to the miz
--

-- Error prevention. Create empty container if module core lua not loaded.
if not MISSIONEGCICAP then 
	MISSIONEGCICAP = {}
	MISSIONEGCICAP.traceTitle = "[JTF-1 MISSIONEGCICAP] "
	_msg = self.traceTitle .. "CORE FILE NOT LOADED!"
	BASE:E(_msg)
	-- EXIT MODULE DATA
	return
end

----------------------------------
--- MISSION AUTO CAP Data ---
----------------------------------

MISSIONEGCICAP.acceptZones = {
    {alias = "Red_Border", name = "ZONE_Red"}, -- use GROUP for ZONE_POLYGON
}
    
MISSIONEGCICAP.rejectZones = {
    {alias = "Blue_Border",name = "ZONE_Blue"}, -- use GROUP for ZONE_POLYGON
}

MISSIONEGCICAP.patrolPoints = { --AddPatrolPointCAP(AirbaseName, Coordinate, Altitude, Speed, Heading, LegLength)
    patrolBandar_1 = {
        AirbaseName = AIRBASE.PersianGulf["Bandar_Abbas_Intl"],
        zoneName = "ZONE_CapBandar_1",
        Altitude = nil,
        Speed = nil,
        Heading = 272,
        LegLength = 30
    },
    patrolBandar_2 = {
        AirbaseName = AIRBASE.PersianGulf["Bandar_Abbas_Intl"],
        zoneName = "ZONE_CapBandar_2",
        Altitude = nil,
        Speed = nil,
        Heading = 120,
        LegLength = 30
    },
    patrolLar_1 = {
        AirbaseName = AIRBASE.PersianGulf["Lar"],
        zoneName = "ZONE_CapLar_1",
        Altitude = nil,
        Speed = nil,
        Heading = 270,
        LegLength = 30
    },
    patrolLar_2 = {
        AirbaseName = AIRBASE.PersianGulf["Lar"],
        zoneName = "ZONE_CapLar_2",
        Altitude = nil,
        Speed = nil,
        Heading = 300,
        LegLength = 30
    },
    patrolShiraz_1 = {
        AirbaseName = AIRBASE.PersianGulf["Shiraz_Intl"],
        zoneName = "ZONE_CapShiraz_1",
        Altitude = nil,
        Speed = nil,
        Heading = 110,
        LegLength = 30
    },
}

MISSIONEGCICAP.squadrons = { --AddSquadron(TemplateName, SquadName, AirbaseName, AirFrames, Skill, Modex, Livery)
    capBandar_1 = {
        TemplateName = "BVR_F4", 
        SquadName =  "CAP_Bandar_1", 
        AirbaseName = AIRBASE.PersianGulf["Bandar_Abbas_Intl"], 
        AirFrames = 20, 
        Skill = nil, 
        Modex = nil, 
        Livery = nil
    },
}

MISSIONEGCICAP.tankerSquadrons = {}

MISSIONEGCICAP.awacsSquadrons = {}

-- first Wing is added used for the master object. Further wings will be added to the master.
MISSIONEGCICAP.wings = { --New(Alias, AirbaseName, Coalition, EWRName)
    {
        alias = "wingBandar",
        airBaseName = AIRBASE.PersianGulf["Bandar_Abbas_Intl"],
        coalition = "red",
        ewrName = "ewr1",
        acceptZones = {MISSIONEGCICAP.zones.acceptZone},
        rejectZones = {MISSIONEGCICAP.zones.rejectZone},
        patrolPoints = {
            MISSIONEGCICAP.patrolPoints.patrolBandar_1,
            MISSIONEGCICAP.patrolPoints.patrolBandar_2,
        },
        squadrons = {MISSIONEGCICAP.squadrons.capBandar_1},
        tankerSquadrons = {},
        awacsSquadrons = {},
    }
}

-- Start AUTO CAP Module
if MISSIONEGCICAP.Start then
	_msg = MISSIONEGCICAP.traceTitle .. "Call Start() from MISSIONEGCICAP_data."
	BASE:T(_msg)
	MISSIONEGCICAP:Start()
end

-- END MISSION AUTO CAP DATA