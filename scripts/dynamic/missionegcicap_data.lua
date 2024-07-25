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

MISSIONEGCICAP.debug = {
    traceOn = true, -- if true, activate module tracing
    traceLevel = 3, -- depth for tracing methods
    classes = {
        "EASYGCICAP",
    }
}

MISSIONEGCICAP.zones = {
    redBorder = "border_RED",
    blueBorder = "border_BLUE",
    zonePatrol_1 = "ZONE_redcap_charlie_1",
    zonePatrol_2 = "ZONE_redcap_charlie_2",
    zonePatrol_3 = "ZONE_redcap_delta_1",
    zonePatrol_4 = "ZONE_redcap_delta_2",
    zonePatrol_5 = "ZONE_redcap_echo_1",
    zonePatrol_6 = "ZONE_redcap_foxtrot_1",
}


MISSIONEGCICAP.patrolPoints = { --AddPatrolPointCAP(AirbaseName, Coordinate, Altitude, Speed, Heading, LegLength)
    pointPatrol_1 = {
        type = "cap",
        AirbaseName = AIRBASE.PersianGulf["Bandar_Abbas_Intl"],
        zoneName = MISSIONEGCICAP.zones.zonePatrol_1,
        Altitude = 25000,
        Speed = 300,
        Heading = 157,
        LegLength = 40
    },
    pointPatrol_2 = {
        type = "cap",
        AirbaseName = AIRBASE.PersianGulf["Bandar_e_Jask"],
        zoneName = MISSIONEGCICAP.zones.zonePatrol_2,
        Altitude = 25000,
        Speed = 300,
        Heading = 105,
        LegLength = 40
    },
    pointPatrol_3 = {
        type = "cap",
        AirbaseName = AIRBASE.PersianGulf["Lar"],
        zoneName = MISSIONEGCICAP.zones.zonePatrol_3,
        Altitude = 25000,
        Speed = 300,
        Heading = 287,
        LegLength = 40
    },
    pointPatrol_4 = {
        type = "cap",
        AirbaseName = AIRBASE.PersianGulf["Bandar_Abbas_Intl"],
        zoneName = MISSIONEGCICAP.zones.zonePatrol_4,
        Altitude = 25000,
        Speed = 300,
        Heading = 257,
        LegLength = 40
    },
    pointPatrol_5 = {
        type = "cap",
        AirbaseName = AIRBASE.PersianGulf["Lar"],
        zoneName = MISSIONEGCICAP.zones.zonePatrol_5,
        Altitude = 25000,
        Speed = 300,
        Heading = 302,
        LegLength = 40
    },
    pointPatrol_6 = {
        type = "cap",
        AirbaseName = AIRBASE.PersianGulf["Shiraz_Intl"],
        zoneName = MISSIONEGCICAP.zones.zonePatrol_6,
        Altitude = 25000,
        Speed = 300,
        Heading = 272,
        LegLength = 40
    },
}

MISSIONEGCICAP.squadrons = { --AddSquadron(TemplateName, SquadName, AirbaseName, AirFrames, Skill, Modex, Livery)
    capBandar_1 = {
        type = "cap",
        TemplateName = "BVR_F4", 
        SquadName =  "sqnBandarF4", 
        AirbaseName = AIRBASE.PersianGulf["Bandar_Abbas_Intl"], 
        AirFrames = 20, 
        Skill = nil, 
        Modex = nil, 
        Livery = nil
    },
    capLar_1 = {
        type = "cap",
        TemplateName = "BVR_F4", 
        SquadName =  "sqnLarF4", 
        AirbaseName = AIRBASE.PersianGulf["Lar"], 
        AirFrames = 20, 
        Skill = nil, 
        Modex = nil, 
        Livery = nil
    },
    capShiraz_1 = {
        type = "cap",
        TemplateName = "BVR_F4", 
        SquadName =  "sqnShirazF4", 
        AirbaseName = AIRBASE.PersianGulf["Shiraz_Intl"], 
        AirFrames = 20, 
        Skill = nil, 
        Modex = nil, 
        Livery = nil
    },
}

-- first Wing is added used for the master object. Further wings will be added to the master.
MISSIONEGCICAP.wings = { --New(Alias, AirbaseName, Coalition, EWRName)
    {
        alias = "Red CAP Ops",
        airBaseName = AIRBASE.PersianGulf["Bandar_Abbas_Intl"],
        coalition = "red",
        ewrPrefix = "red_ewr",
        subwings = {
            capLar = {
                alias = "CAP Lar",
                airBaseName = AIRBASE.PersianGulf["Lar"]
            },
            capShiraz = {
                alias = "CAP Shiraz",
                airBaseName = AIRBASE.PersianGulf["Shiraz_Intl"]
            },
        },
        acceptZones = {
            MISSIONEGCICAP.zones.redBorder
        },
        rejectZones = {
            MISSIONEGCICAP.zones.blueBorder
                },
        patrolPoints = {
            MISSIONEGCICAP.patrolPoints.pointPatrol_1,
            MISSIONEGCICAP.patrolPoints.pointPatrol_3,
            MISSIONEGCICAP.patrolPoints.pointPatrol_4,
            MISSIONEGCICAP.patrolPoints.pointPatrol_5,
            MISSIONEGCICAP.patrolPoints.pointPatrol_6,
        },
        squadrons = {
            MISSIONEGCICAP.squadrons.capBandar_1,
            MISSIONEGCICAP.squadrons.capLar_1,
            MISSIONEGCICAP.squadrons.capShiraz_1,
        },
        tankerSquadrons = {},
        awacsSquadrons = {},
        maxAliveMissions = 10,
        engageRange = 75,
        debug = true,
        Monitor = true,
    }
}

-- Start AUTO CAP Module
if MISSIONEGCICAP.Start then
	_msg = MISSIONEGCICAP.traceTitle .. "Call Start() from MISSIONEGCICAP_data."
	BASE:I(_msg)
	MISSIONEGCICAP:Start()
end

-- END MISSION AUTO CAP DATA