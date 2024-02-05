env.info( "[JTF-1] staticranges_data" )
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- STRIKE MISSION SETTINGS FOR MIZ
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--
-- This file MUST be loaded AFTER missionstrike.lua
--
-- These values are specific to the miz and will override the default values in MISSIONSTRIKE.default
--

-- Error prevention. Create empty container if module core lua not loaded.
if not MISSIONSTRIKE then 
	MISSIONSTRIKE = {}
	MISSIONSTRIKE.traceTitle = "[JTF-1 MISSIONSTRIKE] "
	_msg = self.traceTitle .. "CORE FILE NOT LOADED!"
	BASE:E(_msg)
	-- EXIT MODULE DATA
	return
end

----------------------------------
--- Strike Attack Mission Data ---
----------------------------------

--- MISSIONSTRIKE.mission table 
-- @type MISSIONSTRIKE.mission
-- @field #string striketype type of strike; Airfield, Factory, Bridge, Communications, C2
-- @field #string strikeregion Region in which mission is located (East, Central, West)
-- @field #string strikename Friendly name for the location used in briefings, menus etc. Currently the same as the key, but will probably change
-- @field #string strikeivo "in the vacinity of" ("AFB" if airfield, "[TOWN/CITY]" other targets)
-- @field #string strikecoords LatLong
-- @field #string strikemission mission description
-- @field #string strikethreats threats description
-- @field #string ME zone at center of strike location
-- @field #table striketargets static objects to be respawned for object point strikes (Factory, refinery etc)
-- @field #table medzones ME zones in which medium assets will be spawned. (AAA batteries, vehicle groups, infantry groups etc)
-- @field #string loc ME defence zone at location
-- @field #boolean is_open tracks whether defence zone is occupied
-- @field #table ME zones in which small assets will be spawned
-- @field #string loc ME defence zone at location
-- @field #boolean is_open tracks whether defence zone is occupied
-- @field #table defassets max number of each defence asset. sum of zone types used must not exceed number of zone type available
-- @field #number sam uses medzones
-- @field #number aaa uses smallzones
-- @field #number manpads uses smallzones
-- @field #number armour uses medzones
-- @field #table spawnobjects table holding names of the spawned objects relating the mission
-- @field #boolean is_open mission status. true if mission is avilable for spawning. false if it is in-progress

-- XXX: MISSIONSTRIKE.mission


MISSIONSTRIKE.missions = { -- TableStrikeAttack
	------------ AIRFIELD ------------
	{ -- Fujairah Intl Airfield-Alpha
		striketype = MISSIONSTRIKE.enums.striketype.airfield,
        strikeregion = "Alpha",
		strikename = "Fujairah",
		strikeivo = "AFB",
		strikemission = MISSIONSTRIKE.enums.strikemission.airfield, -- text mission description
		strikezone = "ZONE_FujairahStrike",
		striketargetprefix = "TARGET_FUJAIRAH",
		zoneprefix = {
			{class = "small", prefix = "ZONE_FujairahSmall"},
			{class = "medium", prefix = "ZONE_FujairahMed"},
		},
		defassets = {
			sam = 2,
			aaa = 4,
			manpad = 2,
			armour = 3,
		},
		spawnobjects = {},
		is_open = true,
	},-- End Fujairah
	{ -- Bandar-e-Jask Airfield-East
		striketype = MISSIONSTRIKE.enums.striketype.airfield,
        strikeregion = "East",
		strikename = "Bandar-e-Jask",
		strikeivo = "AFB",
		strikemission = MISSIONSTRIKE.enums.strikemission.airfield, -- text mission description
		strikezone = "ZONE_Bandar-e-JaskStrike",
		striketargetprefix = "TARGET_Bandar-e-Jask",
		zoneprefix = {
			{class = "small", prefix = "ZONE_Bandar-e-JaskSmall"},
			{class = "medium", prefix = "ZONE_Bandar-e-JaskMed"},
		},
		defassets = {
			sam = 2,
			aaa = 4,
			manpad = 2,
			armour = 3,
		},
		spawnobjects = {},
		is_open = true,
	},-- End Bandar-e-Jask Airfield-East

	------------ FACTORY ------------
	-- { -- LN83 Factory-Central
	-- 	striketype = MISSIONSTRIKE.enums.striketype.factory,
    --     strikeregion = MISSIONSTRIKE.enums.region.central,                            
	-- 	strikename = "LN83",
	-- 	strikeivo = "Chiora",
	-- 	strikemission = MISSIONSTRIKE.enums.strikemission.factory.weapons, -- text mission description
	-- 	--strikethreats = "RADAR SAM, I/R SAM, AAA, LIGHT ARMOUR",
	-- 	strikezone = "ZONE_LN83Strike",
	-- 	striketargetprefix = "TARGET_CHIORA",
	-- 	zoneprefix = {
	-- 		{class = "small", prefix = "ZONE_LN83Small"},
	-- 		{class = "medium", prefix = "ZONE_LN83Med"},
	-- 	},
	-- 	defassets = { 
	-- 		sam = 2, 
	-- 		aaa = 3, 
	-- 		manpad = 2, 
	-- 		armour = 2, 
	-- 	},
	-- 	spawnobjects = {},
	-- 	is_open = true,
	-- },-- End LN83

	------------ PORT ------------
	-- { -- DK05 Port-North
	-- 	striketype = MISSIONSTRIKE.enums.striketype.port,
    --     strikeregion = MISSIONSTRIKE.enums.region.north,                            
	-- 	strikename = "DK05",
	-- 	strikeivo = "Novorossiysk",
	-- 	strikemission = MISSIONSTRIKE.enums.strikemission.port.docks, -- text mission description
	-- 	--strikethreats = "RADAR SAM, I/R SAM, AAA, LIGHT ARMOUR",
	-- 	strikezone = "ZONE_DK05Strike",
	-- 	striketargetprefix = "TARGET_DK05",
	-- 	zoneprefix = {
	-- 		{class = "small", prefix = "ZONE_DK05Small"},
	-- 		{class = "medium", prefix = "ZONE_DK05Med"},
	-- 	},
	-- 	defassets = { 
	-- 		sam = 2, 
	-- 		aaa = 4, 
	-- 		manpad = 2, 
	-- 		armour = 2, 
	-- 	},
	-- 	spawnobjects = {},
	-- 	is_open = true,
	-- },-- End DK05

	------------ BRIDGE ------------
	-- { -- EJ19 Bridge-North
	-- 	striketype = MISSIONSTRIKE.enums.striketype.bridge,
    --     strikeregion = MISSIONSTRIKE.enums.region.north,                            
	-- 	strikename = "EJ19",
	-- 	strikeivo = "Krivenkovskoe",
	-- 	strikemission = MISSIONSTRIKE.enums.strikemission.bridge.rail, -- text mission description
	-- 	--strikethreats = "RADAR SAM, I/R SAM, AAA, LIGHT ARMOUR",
	-- 	strikezone = "ZONE_EJ19Strike",
	-- 	striketargetprefix = "TARGET_EJ19",
	-- 	zoneprefix = {
	-- 		{class = "small", prefix = "ZONE_EJ19Small"},
	-- 		{class = "medium", prefix = "ZONE_EJ19Med"},
	-- 	},
	-- 	defassets = { 
	-- 		sam = 2, 
	-- 		aaa = 4, 
	-- 		manpad = 1, 
	-- 		armour = 2, 
	-- 	},
	-- 	spawnobjects = {},
	-- 	is_open = true,
	-- },-- End EJ19

	------------ CAMP ------------
	{ -- CAMP REGION ALPHA
		striketype = MISSIONSTRIKE.enums.striketype.camp,
        strikeregion = "Alpha",                            
		strikename = "Add",
		strikeivo = "Mission",
		strikemission = MISSIONSTRIKE.enums.strikemission.camp, -- text mission description
		striketargets = {
			{ 
				strikezone = "ZONE_camp_a-1",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_a-2",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_a-3",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_a-4",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_a-5",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_a-6",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_a-7",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_a-8",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_a-9",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_a-10",
				is_open = true 
			},
		},
	},-- End CAMP REGION ALPHA
	{ -- CAMP REGION BRAVO
		striketype = MISSIONSTRIKE.enums.striketype.camp,
        strikeregion = "Bravo",                            
		strikename = "Add",
		strikeivo = "Mission",
		strikemission = MISSIONSTRIKE.enums.strikemission.camp, -- text mission description
		striketargets = {
			{ 
				strikezone = "ZONE_camp_b-1",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_b-2",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_b-3",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_b-4",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_b-5",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_b-6",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_b-7",
				is_open = true 
			},
		},
	},-- End CAMP REGION BRAVO

	------------ CONVOY ------------
	{ -- Convoy-ALPHA
		striketype = MISSIONSTRIKE.enums.striketype.convoy,
        strikeregion = "Alpha",                            
		strikename = "Add",
		strikeivo = "Convoy Mission",
		strikemission = MISSIONSTRIKE.enums.strikemission.convoy, -- text mission description
		striketargets = {
			{ 
				strikezone = "ZONE_Convoy_Start_a-1",
				endzone = "ZONE_Convoy_End_a-1",
				destname = "DP1717",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_a-2",
				endzone = "ZONE_Convoy_End_a-2",
				destname = "DP3426 Rul Dadna",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_a-3",
				endzone = "ZONE_Convoy_End_a-3",
				destname = "DN3377 Fujairah Intl",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_a-4",
				endzone = "ZONE_Convoy_End_a-3",
				destname = "DN3377 Fujairah Intl",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_a-5",
				endzone = "ZONE_Convoy_End_a-3",
				destname = "DN3377 Fujairah Intl",
				is_open = true
			},
		},
		options = {
			MISSIONSTRIKE.enums.convoy.supply,
			MISSIONSTRIKE.enums.convoy.armoured,
		},
	},-- End Convoy-ALPHA
	{ -- Convoy-BRAVO
		striketype = MISSIONSTRIKE.enums.striketype.convoy,
        strikeregion = "Bravo",                            
		strikename = "Add",
		strikeivo = "Convoy Mission",
		strikemission = MISSIONSTRIKE.enums.strikemission.convoy, -- text mission description
		striketargets = {
			{ 
				strikezone = "ZONE_Convoy_Start_b-1",
				endzone = "ZONE_Convoy_End_b-1",
				destname = "DP2184 Al Jowar",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_b-2",
				endzone = "ZONE_Convoy_End_b-2",
				destname = "DP2489 Al Haqt",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_b-3",
				endzone = "ZONE_Convoy_End_b-1",
				destname = "DP2184 Al Jowar",
				is_open = true
			},
		},
		options = {
			MISSIONSTRIKE.enums.convoy.supply,
			MISSIONSTRIKE.enums.convoy.armoured,
		},
	},-- End Convoy-BRAVO
}

-- Start Strike Attack Module
if MISSIONSTRIKE.Start then
	_msg = MISSIONSTRIKE.traceTitle .. "Call Start() from missionstrike_data."
	BASE:T(_msg)
	MISSIONSTRIKE:Start()
end

-- END STRIKE ATTACK DATA