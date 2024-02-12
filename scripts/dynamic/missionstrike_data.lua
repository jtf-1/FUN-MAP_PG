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

--MISSIONSTRIKE.drawZones = true -- If true, draw mission zones. default is false

MISSIONSTRIKE.enums.region.qeshm = "Qeshm Island"

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

	------------ AIRFIELD ALPHA ------------
	{ -- Fujairah Intl Airfield-Alpha
		striketype = MISSIONSTRIKE.enums.striketype.airfield,
        strikeregion = MISSIONSTRIKE.enums.region.alpha,
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

	------------ AIRFIELD QESHM ISLAND ------------
	{ -- Qeshm Airfield
		striketype = MISSIONSTRIKE.enums.striketype.airfield,
		strikeregion = MISSIONSTRIKE.enums.region.qeshm,
		strikename = "Qeshm",
		strikeivo = "AFB",
		strikemission = MISSIONSTRIKE.enums.strikemission.airfield, -- text mission description
		strikezone = "ZONE_QeshmStrike",
		striketargetprefix = "TARGET_QESHM",
		zoneprefix = {
			{class = "small", prefix = "ZONE_QeshmSmall"},
			{class = "medium", prefix = "ZONE_QeshmMed"},
		},
		defassets = {
			sam = 2,
			aaa = 4,
			manpad = 2,
			armour = 3,
		},
		spawnobjects = {},
		is_open = true,
	},-- End Qeshm

	------------ AIRFIELD EAST ------------
	{ -- Bandar-e-Jask Airfield-East
		striketype = MISSIONSTRIKE.enums.striketype.airfield,
        strikeregion = MISSIONSTRIKE.enums.region.east,
		strikename = "Bandar-e-Jask",
		strikeivo = "AFB",
		strikemission = MISSIONSTRIKE.enums.strikemission.airfield, -- text mission description
		strikezone = "ZONE_BandareJaskStrike",
		striketargetprefix = "TARGET_BandareJask",
		zoneprefix = {
			{class = "small", prefix = "ZONE_BandareJaskSmall"},
			{class = "medium", prefix = "ZONE_BandareJaskMed"},
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

	------------ AIRFIELD CENTRAL ------------
	{ -- Bandar Abbas Intl Airfield
		striketype = MISSIONSTRIKE.enums.striketype.airfield,
        strikeregion = MISSIONSTRIKE.enums.region.central,
		strikename = "Bandar Abbas Intl",
		strikeivo = "AFB",
		strikemission = MISSIONSTRIKE.enums.strikemission.airfield, -- text mission description
		strikezone = "ZONE_BandarAbbasStrike",
		striketargetprefix = "TARGET_BANDARABBAS",
		zoneprefix = {
			{class = "small", prefix = "ZONE_BandarAbbasSmall"},
			{class = "medium", prefix = "ZONE_BandarAbbasMed"},
		},
		defassets = {
			sam = 2,
			aaa = 4,
			manpad = 2,
			armour = 3,
		},
		spawnobjects = {},
		is_open = true,
	},-- End Bandar Abbas
	{ -- Havadarya Airfield
		striketype = MISSIONSTRIKE.enums.striketype.airfield,
        strikeregion = MISSIONSTRIKE.enums.region.central,
		strikename = "Havadarya",
		strikeivo = "AFB",
		strikemission = MISSIONSTRIKE.enums.strikemission.airfield, -- text mission description
		strikezone = "ZONE_HavadaryaStrike",
		striketargetprefix = "TARGET_HAVADARYA",
		zoneprefix = {
			{class = "small", prefix = "ZONE_HavadaryaSmall"},
			{class = "medium", prefix = "ZONE_HavadaryaMed"},
		},
		defassets = {
			sam = 2,
			aaa = 4,
			manpad = 2,
			armour = 3,
		},
		spawnobjects = {},
		is_open = true,
	},-- End Havadarya
	{ -- Lar Airfield
		striketype = MISSIONSTRIKE.enums.striketype.airfield,
        strikeregion = MISSIONSTRIKE.enums.region.central,
		strikename = "Lar",
		strikeivo = "AFB",
		strikemission = MISSIONSTRIKE.enums.strikemission.airfield, -- text mission description
		strikezone = "ZONE_LarStrike",
		striketargetprefix = "TARGET_LAR",
		zoneprefix = {
			{class = "small", prefix = "ZONE_LarSmall"},
			{class = "medium", prefix = "ZONE_LarMed"},
		},
		defassets = {
			sam = 2,
			aaa = 4,
			manpad = 2,
			armour = 3,
		},
		spawnobjects = {},
		is_open = true,
	},-- End Lar

	------------ AIRFIELD NORTH WEST ------------
	{ -- Shiraz Intl Airfield
		striketype = MISSIONSTRIKE.enums.striketype.airfield,
        strikeregion = MISSIONSTRIKE.enums.region.northwest,
		strikename = "Shiraz Intl",
		strikeivo = "AFB",
		strikemission = MISSIONSTRIKE.enums.strikemission.airfield, -- text mission description
		strikezone = "ZONE_ShirazStrike",
		striketargetprefix = "TARGET_SHIRAZ",
		zoneprefix = {
			{class = "small", prefix = "ZONE_ShirazSmall"},
			{class = "medium", prefix = "ZONE_ShirazMed"},
		},
		defassets = {
			sam = 4,
			aaa = 5,
			manpad = 3,
			armour = 4,
		},
		spawnobjects = {},
		is_open = true,
	},-- End Shiraz

	------------ FACTORY CENTRAL ------------
	{ -- DR30 Factory
		striketype = MISSIONSTRIKE.enums.striketype.factory,
        strikeregion = MISSIONSTRIKE.enums.region.central,                            
		strikename = "DR30",
		strikeivo = "Bandar Abbas",
		strikemission = MISSIONSTRIKE.enums.strikemission.factory.chemical, -- text mission description
		--strikethreats = "RADAR SAM, I/R SAM, AAA, LIGHT ARMOUR",
		strikezone = "ZONE_DR30Strike",
		striketargetprefix = "TARGET_DR30",
		zoneprefix = {
			{class = "small", prefix = "ZONE_DR30Small"},
			{class = "medium", prefix = "ZONE_DR30Med"},
		},
		defassets = { 
			sam = 3, 
			aaa = 3, 
			manpad = 2, 
			armour = 3, 
		},
		spawnobjects = {},
		is_open = true,
	},-- End DR30
	{ -- BR61 Factory
		striketype = MISSIONSTRIKE.enums.striketype.factory,
        strikeregion = MISSIONSTRIKE.enums.region.central,                            
		strikename = "BR61",
		strikeivo = "Chah Banard",
		strikemission = MISSIONSTRIKE.enums.strikemission.factory.chemical, -- text mission description
		--strikethreats = "RADAR SAM, I/R SAM, AAA, LIGHT ARMOUR",
		strikezone = "ZONE_BR61Strike",
		striketargetprefix = "TARGET_BR61",
		zoneprefix = {
			{class = "small", prefix = "ZONE_BR61Small"},
			{class = "medium", prefix = "ZONE_BR61Med"},
		},
		defassets = { 
			sam = 3, 
			aaa = 3, 
			manpad = 2, 
			armour = 3, 
		},
		spawnobjects = {},
		is_open = true,
	},-- End BR61

	------------ PORT EAST ------------
	{ -- Bandar-e-Jask Port-East
		striketype = MISSIONSTRIKE.enums.striketype.port,
        strikeregion = MISSIONSTRIKE.enums.region.east,
		strikename = "EP7366",
		strikeivo = "Bandar-e-Jask",
		strikemission = MISSIONSTRIKE.enums.strikemission.port.docks, -- text mission description
		--strikethreats = "RADAR SAM, I/R SAM, AAA, LIGHT ARMOUR",
		strikezone = "ZONE_BandareJaskPortStrike",
		striketargetprefix = "TARGET_BandareJaskPortStrike",
		zoneprefix = {
			{class = "small", prefix = "ZONE_BandareJaskPortSmall"},
			{class = "medium", prefix = "ZONE_BandareJaskPortMed"},
		},
		defassets = { 
			sam = 2, 
			aaa = 4, 
			manpad = 2, 
			armour = 2, 
		},
		spawnobjects = {},
		is_open = true,
	},-- Bandar-e-Jask Port

	------------ PORT CENTRAL ------------
	{ -- Qeshm Port-Central
		striketype = MISSIONSTRIKE.enums.striketype.port,
        strikeregion = MISSIONSTRIKE.enums.region.central,
		strikename = "DQ2880",
		strikeivo = "Qeshm",
		strikemission = MISSIONSTRIKE.enums.strikemission.port.docks, -- text mission description
		--strikethreats = "RADAR SAM, I/R SAM, AAA, LIGHT ARMOUR",
		strikezone = "ZONE_QeshmPortStrike",
		striketargetprefix = "TARGET_QeshmPort",
		zoneprefix = {
			{class = "small", prefix = "ZONE_QeshmPortSmall"},
			{class = "medium", prefix = "ZONE_QeshmPortMed"},
		},
		defassets = { 
			sam = 2, 
			aaa = 4, 
			manpad = 2, 
			armour = 2, 
		},
		spawnobjects = {},
		is_open = true,
	},-- Qeshm Port
	{ -- Havadarya Port-Central
		striketype = MISSIONSTRIKE.enums.striketype.port,
        strikeregion = MISSIONSTRIKE.enums.region.central,
		strikename = "DR2012",
		strikeivo = "Havadarya",
		strikemission = MISSIONSTRIKE.enums.strikemission.port.docks, -- text mission description
		--strikethreats = "RADAR SAM, I/R SAM, AAA, LIGHT ARMOUR",
		strikezone = "ZONE_HavadaryaPortStrike",
		striketargetprefix = "TARGET_HavadaryaPort",
		zoneprefix = {
			{class = "small", prefix = "ZONE_HavadaryaPortSmall"},
			{class = "medium", prefix = "ZONE_HavadaryaPortMed"},
		},
		defassets = { 
			sam = 2, 
			aaa = 4, 
			manpad = 2, 
			armour = 2, 
		},
		spawnobjects = {},
		is_open = true,
	},-- Bandar-e-Jask Port

	------------ BRIDGE ------------
--[[ 	{ -- EJ19 Bridge-North
		striketype = MISSIONSTRIKE.enums.striketype.bridge,
        strikeregion = MISSIONSTRIKE.enums.region.north,                            
		strikename = "EJ19",
		strikeivo = "Krivenkovskoe",
		strikemission = MISSIONSTRIKE.enums.strikemission.bridge.rail, -- text mission description
		--strikethreats = "RADAR SAM, I/R SAM, AAA, LIGHT ARMOUR",
		strikezone = "ZONE_EJ19Strike",
		striketargetprefix = "TARGET_EJ19",
		zoneprefix = {
			{class = "small", prefix = "ZONE_EJ19Small"},
			{class = "medium", prefix = "ZONE_EJ19Med"},
		},
		defassets = { 
			sam = 2, 
			aaa = 4, 
			manpad = 1, 
			armour = 2, 
		},
		spawnobjects = {},
		is_open = true,
	},-- End EJ19 ]]

	------------ CAMP ------------
	{ -- CAMP REGION ALPHA
		striketype = MISSIONSTRIKE.enums.striketype.camp,
        strikeregion = MISSIONSTRIKE.enums.region.alpha,                            
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
			{ 
				strikezone = "ZONE_camp_a-11",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_a-12",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_a-13",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_a-14",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_a-15",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_a-16",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_a-17",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_a-18",
				is_open = true 
			},
		},
	},-- End CAMP REGION ALPHA
	{ -- CAMP REGION BRAVO
		striketype = MISSIONSTRIKE.enums.striketype.camp,
        strikeregion = MISSIONSTRIKE.enums.region.bravo,                            
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
			{ 
				strikezone = "ZONE_camp_b-8",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_b-9",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_b-10",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_b-11",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_b-12",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_b-13",
				is_open = true 
			},
		},
	},-- End CAMP REGION BRAVO

	------------ CONVOY ------------
	{ -- Convoy-ALPHA
		striketype = MISSIONSTRIKE.enums.striketype.convoy,
        strikeregion = MISSIONSTRIKE.enums.region.alpha,                            
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
			{ 
				strikezone = "ZONE_Convoy_Start_a-6",
				endzone = "ZONE_Convoy_End_a-5",
				destname = "DP2733 Dibba Al-Hisn",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_a-7",
				endzone = "ZONE_Convoy_End_a-5",
				destname = "DP2733 Dibba Al-Hisn",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_a-8",
				endzone = "ZONE_Convoy_End_a-3",
				destname = "DN3377 Fujairah Intl",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_a-9",
				endzone = "ZONE_Convoy_End_a-3",
				destname = "DN3377 Fujairah Intl",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_a-10",
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
        strikeregion = MISSIONSTRIKE.enums.region.bravo,                            
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
	{ -- Convoy-Qeshm
		striketype = MISSIONSTRIKE.enums.striketype.convoy,
        strikeregion = MISSIONSTRIKE.enums.region.qeshm,                            
		strikename = "Add",
		strikeivo = "Convoy Mission",
		strikemission = MISSIONSTRIKE.enums.strikemission.convoy, -- text mission description
		striketargets = {
			{ 
				strikezone = "ZONE_Convoy_Start_q-1",
				endzone = "ZONE_Convoy_End_q-1",
				destname = "DQ2873 Qeshm",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_q-2",
				endzone = "ZONE_Convoy_End_q-2",
				destname = "DQ0883 Dargahan",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_q-2",
				endzone = "ZONE_Convoy_End_q-5",
				destname = "CQ7861",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_q-3",
				endzone = "ZONE_Convoy_End_q-3",
				destname = "DQ0672 Suza",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_q-3",
				endzone = "ZONE_Convoy_End_q-1",
				destname = "DQ2873 Qeshm",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_q-4",
				endzone = "ZONE_Convoy_End_q-4",
				destname = "CQ2479 Basa Idu",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_q-4",
				endzone = "ZONE_Convoy_End_q-1",
				destname = "DQ2873 Qeshm",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_q-5",
				endzone = "ZONE_Convoy_End_q-5",
				destname = "CQ7861",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_q-5",
				endzone = "ZONE_Convoy_End_q-2",
				destname = "DQ0883 Dargahan",
				is_open = true
			},
		},
		options = {
			MISSIONSTRIKE.enums.convoy.supply,
			MISSIONSTRIKE.enums.convoy.armoured,
		},
	},-- End Convoy-EAST
	{ -- Convoy-EAST
		striketype = MISSIONSTRIKE.enums.striketype.convoy,
        strikeregion = MISSIONSTRIKE.enums.region.east,                            
		strikename = "Add",
		strikeivo = "Convoy Mission",
		strikemission = MISSIONSTRIKE.enums.strikemission.convoy, -- text mission description
		striketargets = {
			{ 
				strikezone = "ZONE_Convoy_Start_e-1",
				endzone = "ZONE_Convoy_End_e-1",
				destname = "EP3614 Miski",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_e-1",
				endzone = "ZONE_Convoy_End_e-3",
				destname = "EQ5467 Dar Pahn",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_e-2",
				endzone = "ZONE_Convoy_End_e-2",
				destname = "DQ8979 Teyab",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_e-2",
				endzone = "ZONE_Convoy_End_e-1",
				destname = "EP3614 Miski",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_e-2",
				endzone = "ZONE_Convoy_End_e-4",
				destname = "ER1396 Dehbarez",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_e-3",
				endzone = "ZONE_Convoy_End_e-3",
				destname = "EQ5467 Dar Pahn",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_e-3",
				endzone = "ZONE_Convoy_End_e-2",
				destname = "DQ8979 Teyab",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_e-3",
				endzone = "ZONE_Convoy_End_e-4",
				destname = "ER1396 Dehbarez",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_e-4",
				endzone = "ZONE_Convoy_End_e-4",
				destname = "ER1396 Dehbarez",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_e-4",
				endzone = "ZONE_Convoy_End_e-3",
				destname = "EQ5467 Dar Pahn",
				is_open = true
			},
		},
		options = {
			MISSIONSTRIKE.enums.convoy.supply,
			MISSIONSTRIKE.enums.convoy.armoured,
		},
	},-- End Convoy-EAST
	{ -- Convoy-CENTRAL
		striketype = MISSIONSTRIKE.enums.striketype.convoy,
        strikeregion = MISSIONSTRIKE.enums.region.central,
		strikename = "Add",
		strikeivo = "Convoy Mission",
		strikemission = MISSIONSTRIKE.enums.strikemission.convoy, -- text mission description
		striketargets = {
			{ 
				strikezone = "ZONE_Convoy_Start_c-1",
				endzone = "ZONE_Convoy_End_c-1",
				destname = "DR 25 24",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_c-1",
				endzone = "ZONE_Convoy_End_c-2",
				destname = "CQ 78 54",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_c-2",
				endzone = "ZONE_Convoy_End_c-2",
				destname = "CQ 78 54",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_c-2",
				endzone = "ZONE_Convoy_End_c-1",
				destname = "DR 25 24",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_c-2",
				endzone = "ZONE_Convoy_End_c-3",
				destname = "CR 44 21",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_c-3",
				endzone = "ZONE_Convoy_End_c-3",
				destname = "CR 44 21",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_c-3",
				endzone = "ZONE_Convoy_End_c-2",
				destname = "CQ 78 54",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_c-3",
				endzone = "ZONE_Convoy_End_c-4",
				destname = "BQ 25 98",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_c-5",
				endzone = "ZONE_Convoy_End_c-5",
				destname = "BQ 83 36",
				is_open = true
			},
			{ 
				strikezone = "ZONE_Convoy_Start_c-5",
				endzone = "ZONE_Convoy_End_c-6",
				destname = "BR 61 43",
				is_open = true
			},
		},
		options = {
			MISSIONSTRIKE.enums.convoy.supply,
			MISSIONSTRIKE.enums.convoy.armoured,
		},
	},-- End Convoy-CENTRAL
}

-- Start Strike Attack Module
if MISSIONSTRIKE.Start then
	_msg = MISSIONSTRIKE.traceTitle .. "Call Start() from missionstrike_data."
	BASE:T(_msg)
	MISSIONSTRIKE:Start()
end

-- END STRIKE ATTACK DATA