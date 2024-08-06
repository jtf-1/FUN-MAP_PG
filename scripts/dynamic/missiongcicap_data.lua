env.info( "[JTF-1] MISSIONGCICAP_data" )
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- MISSION AUTO CAP SETTINGS FOR MIZ
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--
-- This file MUST be loaded AFTER MISSIONGCICAP.lua
--
-- Load order in miz MUST be;
--     1. missiongcicap.lua
--     2. missiongcicap_data.lua
--
-- These values are specific to the miz
--

-- Error prevention. Create empty container if module core lua not loaded.
if not MISSIONGCICAP then 
	MISSIONGCICAP = {}
	MISSIONGCICAP.traceTitle = "[JTF-1 MISSIONGCICAP] "
	_msg = MISSIONGCICAP.traceTitle .. "CORE FILE NOT LOADED!"
	BASE:E(_msg)
	-- EXIT MODULE DATA
	return
end

----------------------------------
--- MISSION AUTO CAP Data ---
----------------------------------

MISSIONGCICAP.debug = {
    traceOn = true, -- if true, activate module tracing
    traceLevel = 3, -- depth for tracing methods
    classes = {
        "EASYGCICAP",
    }
}

MISSIONGCICAP.zones = {
    redBorder = "border_RED",
    blueBorder = "border_BLUE",
    zonePatrol_1 = "ZONE_redcap_charlie_1",
    zonePatrol_2 = "ZONE_redcap_charlie_2",
    zonePatrol_3 = "ZONE_redcap_delta_1",
    zonePatrol_4 = "ZONE_redcap_delta_2",
    zonePatrol_5 = "ZONE_redcap_echo_1",
    zonePatrol_6 = "ZONE_redcap_foxtrot_1",
}


MISSIONGCICAP.patrolPoints = {
    pointPatrol_1 = {
        type = "cap", --cap, tkr, awacs
        AirbaseName = AIRBASE.PersianGulf["Bandar_Abbas_Intl"],
        zoneName = MISSIONGCICAP.zones.zonePatrol_1,
        --Altitude = 17000, -- random 15000-2500 if not defined
        Speed = 350, -- 350 if not defined
        Heading = 157, -- random if not defined
        LegLength = 40 -- 15 if not defined
    },
    pointPatrol_2 = {
        type = "cap",
        AirbaseName = AIRBASE.PersianGulf["Bandar_Abbas_Intl"],
        zoneName = MISSIONGCICAP.zones.zonePatrol_2,
        --Altitude = 17000,
        Speed = 350,
        Heading = 105,
        LegLength = 40
    },
    pointPatrol_3 = {
        type = "cap",
        AirbaseName = AIRBASE.PersianGulf["Bandar_Abbas_Intl"],
        zoneName = MISSIONGCICAP.zones.zonePatrol_3,
        --Altitude = 17000,
        Speed = 350,
        Heading = 287,
        LegLength = 40
    },
    pointPatrol_4 = {
        type = "cap",
        AirbaseName = AIRBASE.PersianGulf["Bandar_Abbas_Intl"],
        zoneName = MISSIONGCICAP.zones.zonePatrol_4,
        --Altitude = 17000,
        Speed = 350,
        Heading = 257,
        LegLength = 40
    },
    pointPatrol_5 = {
        type = "cap",
        AirbaseName = AIRBASE.PersianGulf["Shiraz_Intl"],
        zoneName = MISSIONGCICAP.zones.zonePatrol_5,
        --Altitude = 17000,
        Speed = 350,
        Heading = 302,
        LegLength = 40
    },
    pointPatrol_6 = {
        type = "cap",
        AirbaseName = AIRBASE.PersianGulf["Shiraz_Intl"],
        zoneName = MISSIONGCICAP.zones.zonePatrol_6,
        --Altitude = 17000,
        Speed = 350,
        Heading = 272,
        LegLength = 40
    },
}

MISSIONGCICAP.squadrons = { --AddSquadron(TemplateName, SquadName, AirbaseName, AirFrames, Skill, Modex, Livery)
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
    -- capLar_1 = {
    --     type = "cap",
    --     TemplateName = "BVR_F4", 
    --     SquadName =  "sqnLarF4", 
    --     AirbaseName = AIRBASE.PersianGulf["Lar"], 
    --     AirFrames = 20, 
    --     Skill = nil, 
    --     Modex = nil, 
    --     Livery = nil
    -- },
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
MISSIONGCICAP.wings = { --New(Alias, AirbaseName, Coalition, EWRName)
    {
        alias = "Red CAP Ops",
        airBaseName = AIRBASE.PersianGulf["Bandar_Abbas_Intl"],
        coalition = "red",
        ewrPrefix = "red_ewr",
        subwings = {
            -- capLar = {
            --     alias = "CAP Lar",
            --     airBaseName = AIRBASE.PersianGulf["Lar"]
            -- },
            capShiraz = {
                alias = "CAP Shiraz",
                airBaseName = AIRBASE.PersianGulf["Shiraz_Intl"]
            },
        },
        acceptZones = {
            MISSIONGCICAP.zones.redBorder
        },
        rejectZones = {
            MISSIONGCICAP.zones.blueBorder
                },
        patrolPoints = {
            MISSIONGCICAP.patrolPoints.pointPatrol_1,
            MISSIONGCICAP.patrolPoints.pointPatrol_2,
            MISSIONGCICAP.patrolPoints.pointPatrol_3,
            MISSIONGCICAP.patrolPoints.pointPatrol_4,
            MISSIONGCICAP.patrolPoints.pointPatrol_5,
            MISSIONGCICAP.patrolPoints.pointPatrol_6,
        },
        squadrons = {
            MISSIONGCICAP.squadrons.capBandar_1,
            -- MISSIONGCICAP.squadrons.capLar_1,
            MISSIONGCICAP.squadrons.capShiraz_1,
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
if MISSIONGCICAP.Start then
	_msg = MISSIONGCICAP.traceTitle .. "Call Start() from MISSIONGCICAP_data."
	BASE:I(_msg)
	MISSIONGCICAP:Start()
end

-- END MISSION AUTO CAP DATA