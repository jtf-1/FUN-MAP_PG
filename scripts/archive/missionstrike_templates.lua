env.info( "[JTF-1] missionstrike_templates" )
--------------------------------------------
--- MISSIONSTRIKE Spawn Templates Defined in this file
--------------------------------------------
--
-- **NOTE**: MISSIONSTRIKE.LUA MUST BE LOADED BEFORE THIS FILE IS LOADED!
--
-- This file contains the built-in templates used for spawn objects created 
-- for MARKSPAWN.
--
-- All functions and key values are in MARKSPAWN.LUA, which should be loaded first.
--
-- If MARKSPAWN_DATA.LUA is used it should be loaded after MARKSPAWN.LUA and 
-- MARKSPAWN_TEMPLATES.LUA and the call to MARKSPAWN:Start() at the end of this file
-- should be commented out.
--
-- Load order in miz MUST be;
--     1. missionstrike.lua
--     2. missionstrike_templates.lua
--     3. missionstrike_data.lua
--

-- Error prevention. Create empty container if SUPPORTAIRCRAFT.LUA is not loaded or has failed.
if not MISSIONSTRIKE then 
	MISSIONSTRIKE = {}
	MISSIONSTRIKE.traceTitle = "[JTF-1 MISSIONSTRIKE] "
	_msg = MISSIONSTRIKE.traceTitle .. "CORE FILE NOT LOADED!"
	BASE:E(_msg)
end

-- ["TEMPLATE"] = {}, -- end of [TEMPLATE]
-- ["category"] = Group.Category.GROUND,

MISSIONSTRIKE.template = {
	------------------------ SAM ------------------------
	["SAM_Sa3Battery"] = {
		["category"] = Group.Category.GROUND,
		["visible"] = false,
		["lateActivation"] = true,
		["tasks"] = 
		{
		}, -- end of ["tasks"]
		["uncontrollable"] = false,
		["route"] = 
		{
			["spans"] = 
			{
			}, -- end of ["spans"]
			["points"] = 
			{
				[1] = 
				{
					["alt"] = 35,
					["type"] = "Turning Point",
					["ETA"] = 0,
					["alt_type"] = "BARO",
					["formation_template"] = "",
					["y"] = 573114.92135768,
					["x"] = 153604.67378327,
					["ETA_locked"] = true,
					["speed"] = 0,
					["action"] = "Off Road",
					["task"] = 
					{
						["id"] = "ComboTask",
						["params"] = 
						{
							["tasks"] = 
							{
								[1] = 
								{
									["number"] = 1,
									["auto"] = false,
									["id"] = "WrappedAction",
									["enabled"] = true,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 0,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [1]
								[2] = 
								{
									["number"] = 2,
									["auto"] = false,
									["id"] = "WrappedAction",
									["enabled"] = true,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 2,
												["name"] = 9,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [2]
							}, -- end of ["tasks"]
						}, -- end of ["params"]
					}, -- end of ["task"]
					["speed_locked"] = true,
				}, -- end of [1]
			}, -- end of ["points"]
			["routeRelativeTOT"] = true,
		}, -- end of ["route"]
		["groupId"] = 574,
		["hidden"] = false,
		["units"] = 
		{
			[1] = 
			{
				["skill"] = "High",
				["coldAtStart"] = false,
				["type"] = "snr s-125 tr",
				["unitId"] = 1552,
				["y"] = 573114.92135768,
				["x"] = 153604.67378327,
				["name"] = "SA6-1-12",
				["heading"] = 6.2641478001644,
				["playerCanDrive"] = false,
			}, -- end of [1]
			[2] = 
			{
				["skill"] = "High",
				["coldAtStart"] = false,
				["type"] = "5p73 s-125 ln",
				["unitId"] = 1553,
				["y"] = 573135.33272216,
				["x"] = 153550.27823879,
				["name"] = "SA6-1-13",
				["heading"] = 3.1590459461097,
				["playerCanDrive"] = false,
			}, -- end of [2]
			[3] = 
			{
				["skill"] = "High",
				["coldAtStart"] = false,
				["type"] = "5p73 s-125 ln",
				["unitId"] = 1554,
				["y"] = 573099.80572107,
				["x"] = 153549.0222337,
				["name"] = "SA6-1-14",
				["heading"] = 3.1590459461097,
				["playerCanDrive"] = false,
			}, -- end of [3]
			[4] = 
			{
				["skill"] = "High",
				["coldAtStart"] = false,
				["type"] = "5p73 s-125 ln",
				["unitId"] = 1555,
				["y"] = 573153.45508131,
				["x"] = 153578.26920935,
				["name"] = "SA6-1-15",
				["heading"] = 3.1590459461097,
				["playerCanDrive"] = false,
			}, -- end of [4]
			[5] = 
			{
				["skill"] = "High",
				["coldAtStart"] = false,
				["type"] = "5p73 s-125 ln",
				["unitId"] = 1556,
				["y"] = 573078.81249316,
				["x"] = 153576.29548706,
				["name"] = "SA6-1-16",
				["heading"] = 3.1590459461097,
				["playerCanDrive"] = false,
			}, -- end of [5]
			[6] = 
			{
				["skill"] = "High",
				["coldAtStart"] = false,
				["type"] = "p-19 s-125 sr",
				["unitId"] = 1557,
				["y"] = 573041.63524492,
				["x"] = 153638.42740326,
				["name"] = "SA6-1-17",
				["heading"] = 6.2641478001644,
				["playerCanDrive"] = false,
			}, -- end of [6]
			[7] = 
			{
				["skill"] = "High",
				["coldAtStart"] = false,
				["type"] = "ZIL-131 KUNG",
				["unitId"] = 1558,
				["y"] = 573131.33903364,
				["x"] = 153604.47659312,
				["name"] = "SA6-1-18",
				["heading"] = 1.5707963267949,
				["playerCanDrive"] = false,
			}, -- end of [7]
			[8] = 
			{
				["skill"] = "High",
				["coldAtStart"] = false,
				["type"] = "ZiL-131 APA-80",
				["unitId"] = 1559,
				["y"] = 573128.615675,
				["x"] = 153611.35397283,
				["name"] = "SA6-1-19",
				["heading"] = 3.1241393610699,
				["playerCanDrive"] = false,
			}, -- end of [8]
			[9] = 
			{
				["skill"] = "High",
				["coldAtStart"] = false,
				["type"] = "GAZ-66",
				["unitId"] = 1560,
				["y"] = 573139.09924472,
				["x"] = 153677.82188039,
				["name"] = "SA6-1-20",
				["heading"] = 1.6057029118348,
				["playerCanDrive"] = false,
			}, -- end of [9]
			[10] = 
			{
				["skill"] = "High",
				["coldAtStart"] = false,
				["type"] = "GAZ-66",
				["unitId"] = 1561,
				["y"] = 573139.14210189,
				["x"] = 153672.09668672,
				["name"] = "SA6-1-21",
				["heading"] = 1.6406094968747,
				["playerCanDrive"] = false,
			}, -- end of [10]
			[11] = 
			{
				["skill"] = "High",
				["coldAtStart"] = false,
				["type"] = "GAZ-66",
				["unitId"] = 1562,
				["y"] = 573139.44830985,
				["x"] = 153667.40149797,
				["name"] = "SA6-1-22",
				["heading"] = 1.5707963267949,
				["playerCanDrive"] = false,
			}, -- end of [11]
			[12] = 
			{
				["skill"] = "High",
				["coldAtStart"] = false,
				["type"] = "ZiL-131 APA-80",
				["unitId"] = 1563,
				["y"] = 573048.41890609,
				["x"] = 153644.47684558,
				["name"] = "SA6-1-23",
				["heading"] = 1.6406094968747,
				["playerCanDrive"] = false,
			}, -- end of [12]
		}, -- end of ["units"]
		["y"] = 573114.92135768,
		["x"] = 153604.67378327,
		["name"] = "SA3_X",
		["start_time"] = 0,
	}, -- end of [SAM_Sa3Battery]
	["SAM_Sa6Battery"] = {
		["category"] = Group.Category.GROUND,
		["visible"] = false,
		["lateActivation"] = true,
		["tasks"] = 
		{
		}, -- end of ["tasks"]
		["uncontrollable"] = false,
		["route"] = 
		{
			["spans"] = 
			{
			}, -- end of ["spans"]
			["points"] = 
			{
				[1] = 
				{
					["alt"] = 35,
					["type"] = "Turning Point",
					["ETA"] = 0,
					["alt_type"] = "BARO",
					["formation_template"] = "",
					["y"] = 575462.13928984,
					["x"] = 153514.10246575,
					["ETA_locked"] = true,
					["speed"] = 5.5555555555556,
					["action"] = "Off Road",
					["task"] = 
					{
						["id"] = "ComboTask",
						["params"] = 
						{
							["tasks"] = 
							{
								[1] = 
								{
									["number"] = 1,
									["auto"] = false,
									["id"] = "WrappedAction",
									["enabled"] = true,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 0,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [1]
								[2] = 
								{
									["number"] = 2,
									["auto"] = false,
									["id"] = "WrappedAction",
									["enabled"] = true,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 2,
												["name"] = 9,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [2]
								[3] = 
								{
									["number"] = 3,
									["auto"] = false,
									["id"] = "WrappedAction",
									["enabled"] = true,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = true,
												["name"] = 20,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [3]
								[4] = 
								{
									["number"] = 4,
									["auto"] = false,
									["id"] = "WrappedAction",
									["enabled"] = true,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 90,
												["name"] = 24,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [4]
							}, -- end of ["tasks"]
						}, -- end of ["params"]
					}, -- end of ["task"]
					["speed_locked"] = true,
				}, -- end of [1]
			}, -- end of ["points"]
			["routeRelativeTOT"] = true,
		}, -- end of ["route"]
		["groupId"] = 550,
		["hidden"] = false,
		["units"] = 
		{
			[1] = 
			{
				["skill"] = "High",
				["coldAtStart"] = false,
				["type"] = "Kub 1S91 str",
				["unitId"] = 1455,
				["y"] = 575462.13928984,
				["x"] = 153514.10246575,
				["name"] = "SA6-1-1",
				["heading"] = 3.1415926535898,
				["playerCanDrive"] = false,
			}, -- end of [1]
			[2] = 
			{
				["skill"] = "High",
				["coldAtStart"] = false,
				["type"] = "Kub 2P25 ln",
				["unitId"] = 1456,
				["y"] = 575366.42777193,
				["x"] = 153530.31343414,
				["name"] = "SA6-1-2",
				["heading"] = 1.5707963267949,
				["playerCanDrive"] = false,
			}, -- end of [2]
			[3] = 
			{
				["skill"] = "High",
				["coldAtStart"] = false,
				["type"] = "Kub 2P25 ln",
				["unitId"] = 1457,
				["y"] = 575564.39203127,
				["x"] = 153518.09304432,
				["name"] = "SA6-1-3",
				["heading"] = 4.6949356878648,
				["playerCanDrive"] = false,
			}, -- end of [3]
			[4] = 
			{
				["skill"] = "High",
				["coldAtStart"] = false,
				["type"] = "Kub 2P25 ln",
				["unitId"] = 1458,
				["y"] = 575457.24346135,
				["x"] = 153619.92406734,
				["name"] = "SA6-1-4",
				["heading"] = 3.1764992386297,
				["playerCanDrive"] = false,
			}, -- end of [4]
			[5] = 
			{
				["skill"] = "High",
				["coldAtStart"] = false,
				["type"] = "Kub 2P25 ln",
				["unitId"] = 1459,
				["y"] = 575465.48565904,
				["x"] = 153414.93263457,
				["name"] = "SA6-1-5",
				["heading"] = 7.105427357601e-15,
				["playerCanDrive"] = false,
			}, -- end of [5]
			[6] = 
			{
				["skill"] = "High",
				["coldAtStart"] = false,
				["type"] = "ATZ-10",
				["unitId"] = 1460,
				["y"] = 575566.7083547,
				["x"] = 153384.46016622,
				["name"] = "SA6-1-6",
				["heading"] = 5.4628805587423,
				["playerCanDrive"] = false,
			}, -- end of [6]
			[7] = 
			{
				["skill"] = "High",
				["coldAtStart"] = false,
				["type"] = "ATZ-10",
				["unitId"] = 1461,
				["y"] = 575574.13989236,
				["x"] = 153393.66111761,
				["name"] = "SA6-1-7",
				["heading"] = 5.6374134839417,
				["playerCanDrive"] = false,
			}, -- end of [7]
			[8] = 
			{
				["skill"] = "High",
				["coldAtStart"] = false,
				["type"] = "ZiL-131 APA-80",
				["unitId"] = 1462,
				["y"] = 575442.11965592,
				["x"] = 153488.49646889,
				["name"] = "SA6-1-8",
				["heading"] = 4.7298422729046,
				["playerCanDrive"] = false,
			}, -- end of [8]
			[9] = 
			{
				["skill"] = "High",
				["coldAtStart"] = false,
				["type"] = "Ural-4320-31",
				["unitId"] = 1463,
				["y"] = 575482.15635911,
				["x"] = 153471.92997429,
				["name"] = "SA6-1-9",
				["heading"] = 3.1939525311496,
				["playerCanDrive"] = false,
			}, -- end of [9]
			[10] = 
			{
				["skill"] = "High",
				["coldAtStart"] = false,
				["type"] = "Ural-4320-31",
				["unitId"] = 1464,
				["y"] = 575490.95802681,
				["x"] = 153471.92997429,
				["name"] = "SA6-1-10",
				["heading"] = 3.1764992386297,
				["playerCanDrive"] = false,
			}, -- end of [10]
			[11] = 
			{
				["skill"] = "High",
				["coldAtStart"] = false,
				["type"] = "Ural-375 PBU",
				["unitId"] = 1465,
				["y"] = 575442.02541085,
				["x"] = 153492.06416023,
				["name"] = "SA6-1-11",
				["heading"] = 4.7298422729046,
				["playerCanDrive"] = false,
			}, -- end of [11]
		}, -- end of ["units"]
		["y"] = 575462.13928984,
		["x"] = 153514.10246575,
		["name"] = "SA6",
		["start_time"] = 0,
	}, -- end of [SAM_Sa6Battery]
	------------------------ AAA ------------------------
	["AAA_Zsu23Shilka"] = {
		["category"] = Group.Category.GROUND,
		["visible"] = false,
		["lateActivation"] = true,
		["tasks"] = 
		{
		}, -- end of ["tasks"]
		["uncontrollable"] = false,
		["task"] = "Ground Nothing",
		["taskSelected"] = true,
		["route"] = 
		{
			["spans"] = 
			{
			}, -- end of ["spans"]
			["points"] = 
			{
				[1] = 
				{
					["alt"] = 22,
					["type"] = "Turning Point",
					["ETA"] = 0,
					["alt_type"] = "BARO",
					["formation_template"] = "",
					["y"] = 299328.09367735,
					["x"] = 39637.172381306,
					["name"] = "",
					["ETA_locked"] = true,
					["speed"] = 5.5555555555556,
					["action"] = "Off Road",
					["task"] = 
					{
						["id"] = "ComboTask",
						["params"] = 
						{
							["tasks"] = 
							{
								[1] = 
								{
									["enabled"] = true,
									["auto"] = false,
									["id"] = "WrappedAction",
									["number"] = 1,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 0,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [1]
								[2] = 
								{
									["enabled"] = true,
									["auto"] = false,
									["id"] = "WrappedAction",
									["number"] = 2,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 9,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [2]
							}, -- end of ["tasks"]
						}, -- end of ["params"]
					}, -- end of ["task"]
					["speed_locked"] = true,
				}, -- end of [1]
			}, -- end of ["points"]
			["routeRelativeTOT"] = true,
		}, -- end of ["route"]
		["groupId"] = 91,
		["hidden"] = false,
		["units"] = 
		{
			[1] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "ZSU-23-4 Shilka",
				["unitId"] = 481,
				["y"] = 299328.09367735,
				["x"] = 39637.172381306,
				["name"] = "Unit #209",
				["heading"] = 3.1415926535898,
				["playerCanDrive"] = false,
			}, -- end of [1]
		}, -- end of ["units"]
		["y"] = 299328.09367735,
		["x"] = 39637.172381306,
		["name"] = "AAA_Zsu23Shilka",
		["start_time"] = 0,
	},  -- end of [AAA_Zsu23Shilka]
    ["AAA_Zu23Emplacement"] = {
		["category"] = Group.Category.GROUND,
		["visible"] = false,
		["lateActivation"] = true,
		["tasks"] = 
		{
		}, -- end of ["tasks"]
		["uncontrollable"] = false,
		["task"] = "Ground Nothing",
		["taskSelected"] = true,
		["route"] = 
		{
			["spans"] = 
			{
			}, -- end of ["spans"]
			["points"] = 
			{
				[1] = 
				{
					["alt"] = 22,
					["type"] = "Turning Point",
					["ETA"] = 0,
					["alt_type"] = "BARO",
					["formation_template"] = "",
					["y"] = 299298.36197716,
					["x"] = 39637.779150698,
					["name"] = "",
					["ETA_locked"] = true,
					["speed"] = 0,
					["action"] = "Off Road",
					["task"] = 
					{
						["id"] = "ComboTask",
						["params"] = 
						{
							["tasks"] = 
							{
								[1] = 
								{
									["enabled"] = true,
									["auto"] = false,
									["id"] = "WrappedAction",
									["number"] = 1,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 0,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [1]
								[2] = 
								{
									["enabled"] = true,
									["auto"] = false,
									["id"] = "WrappedAction",
									["number"] = 2,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 9,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [2]
							}, -- end of ["tasks"]
						}, -- end of ["params"]
					}, -- end of ["task"]
					["speed_locked"] = true,
				}, -- end of [1]
			}, -- end of ["points"]
			["routeRelativeTOT"] = true,
		}, -- end of ["route"]
		["groupId"] = 89,
		["hidden"] = false,
		["units"] = 
		{
			[1] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "ZU-23 Emplacement",
				["unitId"] = 479,
				["y"] = 299298.36197716,
				["x"] = 39637.779150698,
				["name"] = "Unit #207",
				["heading"] = 3.1415926535898,
				["playerCanDrive"] = true,
			}, -- end of [1]
		}, -- end of ["units"]
		["y"] = 299298.36197716,
		["x"] = 39637.779150698,
		["name"] = "AAA_Zu23Emplacement",
		["start_time"] = 0,
	},  -- end of [AAA_Zu23Emplacement]
    ["AAA_Zu23Ural"] = {
		["category"] = Group.Category.GROUND,
		["visible"] = false,
		["lateActivation"] = true,
		["tasks"] = 
		{
		}, -- end of ["tasks"]
		["uncontrollable"] = false,
		["task"] = "Ground Nothing",
		["taskSelected"] = true,
		["route"] = 
		{
			["spans"] = 
			{
			}, -- end of ["spans"]
			["points"] = 
			{
				[1] = 
				{
					["alt"] = 22,
					["type"] = "Turning Point",
					["ETA"] = 0,
					["alt_type"] = "BARO",
					["formation_template"] = "",
					["y"] = 299282.72696715,
					["x"] = 39636.654073691,
					["name"] = "",
					["ETA_locked"] = true,
					["speed"] = 5.5555555555556,
					["action"] = "Off Road",
					["task"] = 
					{
						["id"] = "ComboTask",
						["params"] = 
						{
							["tasks"] = 
							{
								[1] = 
								{
									["enabled"] = true,
									["auto"] = false,
									["id"] = "WrappedAction",
									["number"] = 1,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 0,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [1]
								[2] = 
								{
									["enabled"] = true,
									["auto"] = false,
									["id"] = "WrappedAction",
									["number"] = 2,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 9,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [2]
							}, -- end of ["tasks"]
						}, -- end of ["params"]
					}, -- end of ["task"]
					["speed_locked"] = true,
				}, -- end of [1]
			}, -- end of ["points"]
			["routeRelativeTOT"] = true,
		}, -- end of ["route"]
		["groupId"] = 88,
		["hidden"] = false,
		["units"] = 
		{
			[1] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Ural-375 ZU-23",
				["unitId"] = 478,
				["y"] = 299282.72696715,
				["x"] = 39636.654073691,
				["name"] = "Unit #206",
				["heading"] = 3.1415926535898,
				["playerCanDrive"] = false,
			}, -- end of [1]
		}, -- end of ["units"]
		["y"] = 299282.72696715,
		["x"] = 39636.654073691,
		["name"] = "AAA_Zu23Ural",
		["start_time"] = 0,
	}, -- end of [AAA_Zu23Ural]
	["AAA_Zu23Closed"] = {
		["category"] = Group.Category.GROUND,
		["visible"] = false,
		["lateActivation"] = true,
		["tasks"] = 
		{
		}, -- end of ["tasks"]
		["uncontrollable"] = false,
		["task"] = "Ground Nothing",
		["taskSelected"] = true,
		["route"] = 
		{
			["spans"] = 
			{
				[1] = 
				{
					[1] = 
					{
						["y"] = 299353.56779192,
						["x"] = 39637.047214632,
					}, -- end of [1]
					[2] = 
					{
						["y"] = 299324.21254406,
						["x"] = 39636.129863136,
					}, -- end of [2]
				}, -- end of [1]
			}, -- end of ["spans"]
			["points"] = 
			{
				[1] = 
				{
					["alt"] = 22,
					["type"] = "Turning Point",
					["ETA"] = 0,
					["alt_type"] = "BARO",
					["formation_template"] = "",
					["y"] = 299311.94102036,
					["x"] = 39637.695245398,
					["name"] = "",
					["ETA_locked"] = true,
					["speed"] = 0,
					["action"] = "Off Road",
					["task"] = 
					{
						["id"] = "ComboTask",
						["params"] = 
						{
							["tasks"] = 
							{
								[1] = 
								{
									["enabled"] = true,
									["auto"] = false,
									["id"] = "WrappedAction",
									["number"] = 1,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 0,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [1]
								[2] = 
								{
									["enabled"] = true,
									["auto"] = false,
									["id"] = "WrappedAction",
									["number"] = 2,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 9,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [2]
							}, -- end of ["tasks"]
						}, -- end of ["params"]
					}, -- end of ["task"]
					["speed_locked"] = true,
				}, -- end of [1]
			}, -- end of ["points"]
			["routeRelativeTOT"] = true,
		}, -- end of ["route"]
		["groupId"] = 90,
		["hidden"] = false,
		["units"] = 
		{
			[1] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "ZU-23 Emplacement Closed",
				["unitId"] = 480,
				["y"] = 299311.94102036,
				["x"] = 39637.695245398,
				["name"] = "Unit #208",
				["heading"] = 3.1415926535898,
				["playerCanDrive"] = true,
			}, -- end of [1]
		}, -- end of ["units"]
		["y"] = 299311.94102036,
		["x"] = 39637.695245398,
		["name"] = "AAA_Zu23Closed",
		["start_time"] = 0,
	}, -- end of [AAA_Zu23Closed]	
	------------------------ MANPADS ------------------------
	["SAM_Sa18Manpads"] = {
		["category"] = Group.Category.GROUND,
		["visible"] = false,
		["lateActivation"] = true,
		["tasks"] = 
		{
		}, -- end of ["tasks"]
		["uncontrollable"] = false,
		["task"] = "Ground Nothing",
		["taskSelected"] = true,
		["route"] = 
		{
			["spans"] = 
			{
			}, -- end of ["spans"]
			["points"] = 
			{
				[1] = 
				{
					["alt"] = 22,
					["type"] = "Turning Point",
					["ETA"] = 0,
					["alt_type"] = "BARO",
					["formation_template"] = "",
					["y"] = 299292.29428324,
					["x"] = 39611.688066858,
					["name"] = "",
					["ETA_locked"] = true,
					["speed"] = 4,
					["action"] = "Off Road",
					["task"] = 
					{
						["id"] = "ComboTask",
						["params"] = 
						{
							["tasks"] = 
							{
								[1] = 
								{
									["enabled"] = true,
									["auto"] = false,
									["id"] = "WrappedAction",
									["number"] = 1,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 0,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [1]
								[2] = 
								{
									["enabled"] = true,
									["auto"] = false,
									["id"] = "WrappedAction",
									["number"] = 2,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 9,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [2]
							}, -- end of ["tasks"]
						}, -- end of ["params"]
					}, -- end of ["task"]
					["speed_locked"] = true,
				}, -- end of [1]
			}, -- end of ["points"]
			["routeRelativeTOT"] = true,
		}, -- end of ["route"]
		["groupId"] = 92,
		["hidden"] = false,
		["units"] = 
		{
			[1] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "SA-18 Igla manpad",
				["unitId"] = 482,
				["y"] = 299292.29428324,
				["x"] = 39611.688066858,
				["name"] = "Unit #210",
				["heading"] = 3.1415926535898,
				["playerCanDrive"] = true,
			}, -- end of [1]
		}, -- end of ["units"]
		["y"] = 299292.29428324,
		["x"] = 39611.688066858,
		["name"] = "SAM_Sa18Manpads",
		["start_time"] = 0,
	}, -- end of [SAM_Sa18Manpads]
	["SAM_Sa18sManpads"] = {
		["category"] = Group.Category.GROUND,
		["visible"] = false,
		["lateActivation"] = true,
		["tasks"] = 
		{
		}, -- end of ["tasks"]
		["uncontrollable"] = false,
		["task"] = "Ground Nothing",
		["taskSelected"] = true,
		["route"] = 
		{
			["spans"] = 
			{
				[1] = 
				{
					[1] = 
					{
						["y"] = 299317.36320321,
						["x"] = 39529.033326712,
					}, -- end of [1]
					[2] = 
					{
						["y"] = 299320.60780347,
						["x"] = 39533.359460394,
					}, -- end of [2]
				}, -- end of [1]
			}, -- end of ["spans"]
			["points"] = 
			{
				[1] = 
				{
					["alt"] = 22,
					["type"] = "Turning Point",
					["ETA"] = 0,
					["alt_type"] = "BARO",
					["formation_template"] = "",
					["y"] = 299308.07028743,
					["x"] = 39613.508375033,
					["name"] = "",
					["ETA_locked"] = true,
					["speed"] = 4,
					["action"] = "Off Road",
					["task"] = 
					{
						["id"] = "ComboTask",
						["params"] = 
						{
							["tasks"] = 
							{
								[1] = 
								{
									["enabled"] = true,
									["auto"] = false,
									["id"] = "WrappedAction",
									["number"] = 1,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 0,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [1]
								[2] = 
								{
									["enabled"] = true,
									["auto"] = false,
									["id"] = "WrappedAction",
									["number"] = 2,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 9,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [2]
							}, -- end of ["tasks"]
						}, -- end of ["params"]
					}, -- end of ["task"]
					["speed_locked"] = true,
				}, -- end of [1]
			}, -- end of ["points"]
			["routeRelativeTOT"] = true,
		}, -- end of ["route"]
		["groupId"] = 93,
		["hidden"] = false,
		["units"] = 
		{
			[1] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "SA-18 Igla-S manpad",
				["unitId"] = 483,
				["y"] = 299308.07028743,
				["x"] = 39613.508375033,
				["name"] = "Unit #211",
				["heading"] = 3.1415926535898,
				["playerCanDrive"] = true,
			}, -- end of [1]
		}, -- end of ["units"]
		["y"] = 299308.07028743,
		["x"] = 39613.508375033,
		["name"] = "SAM_Sa18sManpads",
		["start_time"] = 0,
	}, -- end of [SAM_Sa18sManpads]
	------------------------ CAMP ------------------------
	["CAMP_Heavy"] = {
		["category"] = Group.Category.GROUND,
		["visible"] = false,
		["lateActivation"] = true,
		["tasks"] = 
		{
		}, -- end of ["tasks"]
		["uncontrollable"] = false,
		["task"] = "Ground Nothing",
		["taskSelected"] = true,
		["route"] = 
		{
			["spans"] = 
			{
			}, -- end of ["spans"]
			["points"] = 
			{
				[1] = 
				{
					["alt"] = 21,
					["type"] = "Turning Point",
					["ETA"] = 0,
					["alt_type"] = "BARO",
					["formation_template"] = "",
					["y"] = 292564.06322313,
					["x"] = 40178.794604138,
					["name"] = "",
					["ETA_locked"] = true,
					["speed"] = 0,
					["action"] = "Off Road",
					["task"] = 
					{
						["id"] = "ComboTask",
						["params"] = 
						{
							["tasks"] = 
							{
								[1] = 
								{
									["enabled"] = true,
									["auto"] = false,
									["id"] = "WrappedAction",
									["number"] = 1,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 0,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [1]
								[2] = 
								{
									["enabled"] = true,
									["auto"] = false,
									["id"] = "WrappedAction",
									["number"] = 2,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 9,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [2]
							}, -- end of ["tasks"]
						}, -- end of ["params"]
					}, -- end of ["task"]
					["speed_locked"] = true,
				}, -- end of [1]
			}, -- end of ["points"]
			["routeRelativeTOT"] = true,
		}, -- end of ["route"]
		["groupId"] = 63,
		["hidden"] = false,
		["units"] = 
		{
			[1] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "AAV7",
				["unitId"] = 398,
				["y"] = 292564.06322313,
				["x"] = 40178.794604138,
				["name"] = "Unit #133",
				["heading"] = 0,
				["playerCanDrive"] = false,
			}, -- end of [1]
		}, -- end of ["units"]
		["y"] = 292564.06322313,
		["x"] = 40178.794604138,
		["name"] = "CAMP_Heavy",
		["start_time"] = 0,
	}, -- end of [CAMP_Heavy]
	["CAMP_Tent_Group"] = {
		["category"] = Group.Category.GROUND,
		["visible"] = false,
		["lateActivation"] = true,
		["tasks"] = 
		{
		}, -- end of ["tasks"]
		["uncontrollable"] = false,
		["task"] = "Ground Nothing",
		["taskSelected"] = true,
		["route"] = 
		{
			["spans"] = 
			{
			}, -- end of ["spans"]
			["points"] = 
			{
				[1] = 
				{
					["alt"] = 21,
					["type"] = "Turning Point",
					["ETA"] = 0,
					["alt_type"] = "BARO",
					["formation_template"] = "",
					["y"] = 289225.29837187,
					["x"] = 40597.069277546,
					["name"] = "",
					["ETA_locked"] = true,
					["speed"] = 5.5555555555556,
					["action"] = "Off Road",
					["task"] = 
					{
						["id"] = "ComboTask",
						["params"] = 
						{
							["tasks"] = 
							{
							}, -- end of ["tasks"]
						}, -- end of ["params"]
					}, -- end of ["task"]
					["speed_locked"] = true,
				}, -- end of [1]
			}, -- end of ["points"]
			["routeRelativeTOT"] = true,
		}, -- end of ["route"]
		["groupId"] = 73,
		["hidden"] = false,
		["units"] = 
		{
			[1] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "tentepetite_vert",
				["unitId"] = 448,
				["y"] = 289225.29837187,
				["x"] = 40597.069277546,
				["name"] = "Unit #183",
				["heading"] = 5.9864793343406,
				["playerCanDrive"] = false,
			}, -- end of [1]
			[2] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "tente_verte",
				["unitId"] = 449,
				["y"] = 289203.1385953,
				["x"] = 40609.827936785,
				["name"] = "Unit #184",
				["heading"] = 0.069813170079773,
				["playerCanDrive"] = false,
			}, -- end of [2]
			[3] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "tente_verte",
				["unitId"] = 450,
				["y"] = 289247.45814844,
				["x"] = 40585.429798943,
				["name"] = "Unit #185",
				["heading"] = 5.9864793343406,
				["playerCanDrive"] = false,
			}, -- end of [3]
			[4] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "tentepetite_vert",
				["unitId"] = 451,
				["y"] = 289211.86820425,
				["x"] = 40594.159407896,
				["name"] = "Unit #186",
				["heading"] = 5.9864793343406,
				["playerCanDrive"] = false,
			}, -- end of [4]
			[5] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "tente_verte",
				["unitId"] = 452,
				["y"] = 289240.29539238,
				["x"] = 40610.051772912,
				["name"] = "Unit #187",
				["heading"] = 4.8869219055841,
				["playerCanDrive"] = false,
			}, -- end of [5]
			[6] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Container_Vert",
				["unitId"] = 453,
				["y"] = 289199.7810534,
				["x"] = 40591.025702118,
				["name"] = "Unit #188",
				["heading"] = 5.9864793343406,
				["playerCanDrive"] = false,
			}, -- end of [6]
			[7] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Container_Vert",
				["unitId"] = 454,
				["y"] = 289230.44660279,
				["x"] = 40574.46182872,
				["name"] = "Unit #189",
				["heading"] = 5.9864793343406,
				["playerCanDrive"] = false,
			}, -- end of [7]
			[8] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "tente_verte",
				["unitId"] = 455,
				["y"] = 289217.44400127,
				["x"] = 40579.772531204,
				["name"] = "Unit #190",
				["heading"] = 0.4014257279587,
				["playerCanDrive"] = false,
			}, -- end of [8]
			[9] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "tentepetite_vert",
				["unitId"] = 456,
				["y"] = 289217.01643517,
				["x"] = 40621.691251516,
				["name"] = "Unit #191",
				["heading"] = 5.9864793343406,
				["playerCanDrive"] = false,
			}, -- end of [9]
			[10] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Tente H_verte",
				["unitId"] = 461,
				["y"] = 289221.76804989,
				["x"] = 40560.906732556,
				["name"] = "Unit #196",
				["heading"] = 5.9864793343406,
				["playerCanDrive"] = false,
			}, -- end of [10]
			[11] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "tentepetite_vert",
				["unitId"] = 462,
				["y"] = 289206.58029006,
				["x"] = 40572.63999098,
				["name"] = "Unit #197",
				["heading"] = 5.9864793343406,
				["playerCanDrive"] = false,
			}, -- end of [11]
			[12] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Tente H_verte",
				["unitId"] = 463,
				["y"] = 289247.52799094,
				["x"] = 40566.742969199,
				["name"] = "Unit #198",
				["heading"] = 5.9864793343406,
				["playerCanDrive"] = false,
			}, -- end of [12]
		}, -- end of ["units"]
		["y"] = 289225.29837187,
		["x"] = 40597.069277546,
		["name"] = "CAMP_Tent_Group",
		["start_time"] = 0,
	}, -- end of [CAMP_Tent_Group]
	["CAMP_Inf_02"] = {
		["category"] = Group.Category.GROUND,
		["visible"] = false,
		["lateActivation"] = true,
		["tasks"] = 
		{
		}, -- end of ["tasks"]
		["uncontrollable"] = false,
		["task"] = "Ground Nothing",
		["taskSelected"] = true,
		["route"] = 
		{
			["spans"] = 
			{
			}, -- end of ["spans"]
			["points"] = 
			{
				[1] = 
				{
					["alt"] = 20,
					["type"] = "Turning Point",
					["ETA"] = 0,
					["alt_type"] = "BARO",
					["formation_template"] = "",
					["y"] = 288079.26256212,
					["x"] = 42645.403272296,
					["name"] = "",
					["ETA_locked"] = true,
					["speed"] = 4,
					["action"] = "Off Road",
					["task"] = 
					{
						["id"] = "ComboTask",
						["params"] = 
						{
							["tasks"] = 
							{
								[1] = 
								{
									["enabled"] = true,
									["auto"] = false,
									["id"] = "WrappedAction",
									["number"] = 1,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 0,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [1]
								[2] = 
								{
									["enabled"] = true,
									["auto"] = false,
									["id"] = "WrappedAction",
									["number"] = 2,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 9,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [2]
							}, -- end of ["tasks"]
						}, -- end of ["params"]
					}, -- end of ["task"]
					["speed_locked"] = true,
				}, -- end of [1]
			}, -- end of ["points"]
			["routeRelativeTOT"] = true,
		}, -- end of ["route"]
		["groupId"] = 57,
		["hidden"] = false,
		["units"] = 
		{
			[1] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Paratrooper AKS-74",
				["unitId"] = 367,
				["y"] = 288079.26256212,
				["x"] = 42645.403272296,
				["name"] = "Unit #104",
				["heading"] = 2.8448866807508,
				["playerCanDrive"] = false,
			}, -- end of [1]
			[2] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Infantry AK",
				["unitId"] = 368,
				["y"] = 288069.14056436,
				["x"] = 42636.996867373,
				["name"] = "Unit #105",
				["heading"] = 5.0789081233035,
				["playerCanDrive"] = false,
			}, -- end of [2]
			[3] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Paratrooper RPG-16",
				["unitId"] = 369,
				["y"] = 288078.76029292,
				["x"] = 42635.106753823,
				["name"] = "Unit #106",
				["heading"] = 3.6651914291881,
				["playerCanDrive"] = false,
			}, -- end of [3]
			[4] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Infantry AK",
				["unitId"] = 370,
				["y"] = 288088.5545422,
				["x"] = 42637.618099792,
				["name"] = "Unit #107",
				["heading"] = 2.8448866807508,
				["playerCanDrive"] = false,
			}, -- end of [4]
			[5] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Infantry AK",
				["unitId"] = 371,
				["y"] = 288088.05227301,
				["x"] = 42647.412349072,
				["name"] = "Unit #108",
				["heading"] = 0.97738438111682,
				["playerCanDrive"] = false,
			}, -- end of [5]
			[6] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Paratrooper RPG-16",
				["unitId"] = 445,
				["y"] = 288095.83744551,
				["x"] = 42639.124907373,
				["name"] = "Unit #180",
				["heading"] = 0.97738438111682,
				["playerCanDrive"] = false,
			}, -- end of [6]
			[7] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Infantry AK",
				["unitId"] = 446,
				["y"] = 288073.98873558,
				["x"] = 42653.941848591,
				["name"] = "Unit #181",
				["heading"] = 0.97738438111682,
				["playerCanDrive"] = false,
			}, -- end of [7]
			[8] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Infantry AK",
				["unitId"] = 447,
				["y"] = 288071.97965881,
				["x"] = 42644.398733909,
				["name"] = "Unit #182",
				["heading"] = 0.97738438111682,
				["playerCanDrive"] = false,
			}, -- end of [8]
			[9] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Infantry AK",
				["unitId"] = 457,
				["y"] = 288066.95696687,
				["x"] = 42649.421425847,
				["name"] = "Unit #192",
				["heading"] = 0.97738438111682,
				["playerCanDrive"] = false,
			}, -- end of [9]
			[10] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Infantry AK",
				["unitId"] = 458,
				["y"] = 288083.28071567,
				["x"] = 42654.946386979,
				["name"] = "Unit #193",
				["heading"] = 0.97738438111682,
				["playerCanDrive"] = false,
			}, -- end of [10]
			[11] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Infantry AK",
				["unitId"] = 459,
				["y"] = 288093.07496495,
				["x"] = 42644.901003102,
				["name"] = "Unit #194",
				["heading"] = 0.97738438111682,
				["playerCanDrive"] = false,
			}, -- end of [11]
			[12] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Infantry AK",
				["unitId"] = 460,
				["y"] = 288085.03865785,
				["x"] = 42629.581792691,
				["name"] = "Unit #195",
				["heading"] = 0.97738438111682,
				["playerCanDrive"] = false,
			}, -- end of [12]
		}, -- end of ["units"]
		["y"] = 288079.26256212,
		["x"] = 42645.403272296,
		["name"] = "CAMP_Inf_02",
		["start_time"] = 0,
		["hiddenOnPlanner"] = false,
	}, -- end of [CAMP_Inf_02]
	------------------------ ARMOUR ------------------------
	["ARMOUR_Heavy_01"] = {
		["category"] = Group.Category.GROUND,
		["visible"] = false,
		["lateActivation"] = true,
		["tasks"] = 
		{
		}, -- end of ["tasks"]
		["uncontrollable"] = false,
		["task"] = "Ground Nothing",
		["taskSelected"] = true,
		["route"] = 
		{
			["spans"] = 
			{
			}, -- end of ["spans"]
			["points"] = 
			{
				[1] = 
				{
					["alt"] = 21,
					["type"] = "Turning Point",
					["ETA"] = 0,
					["alt_type"] = "BARO",
					["formation_template"] = "",
					["y"] = 294057.51108224,
					["x"] = 41006.206097422,
					["name"] = "",
					["ETA_locked"] = true,
					["speed"] = 0,
					["action"] = "Off Road",
					["task"] = 
					{
						["id"] = "ComboTask",
						["params"] = 
						{
							["tasks"] = 
							{
								[1] = 
								{
									["enabled"] = true,
									["auto"] = false,
									["id"] = "WrappedAction",
									["number"] = 1,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 0,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [1]
								[2] = 
								{
									["enabled"] = true,
									["auto"] = false,
									["id"] = "WrappedAction",
									["number"] = 2,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 9,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [2]
							}, -- end of ["tasks"]
						}, -- end of ["params"]
					}, -- end of ["task"]
					["speed_locked"] = true,
				}, -- end of [1]
			}, -- end of ["points"]
			["routeRelativeTOT"] = true,
		}, -- end of ["route"]
		["groupId"] = 48,
		["hidden"] = false,
		["units"] = 
		{
			[1] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "BTR-80",
				["unitId"] = 351,
				["y"] = 294057.51108224,
				["x"] = 41006.206097422,
				["name"] = "Unit #095",
				["heading"] = 0,
				["playerCanDrive"] = false,
			}, -- end of [1]
			[2] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Ural-375 ZU-23",
				["unitId"] = 352,
				["y"] = 294070.61155398,
				["x"] = 41023.127540085,
				["name"] = "Unit #096",
				["heading"] = 0.97738438111682,
				["playerCanDrive"] = false,
			}, -- end of [2]
			[3] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "T-55",
				["unitId"] = 353,
				["y"] = 294046.95792445,
				["x"] = 40992.013919705,
				["name"] = "Unit #097",
				["heading"] = 5.6723200689816,
				["playerCanDrive"] = true,
			}, -- end of [3]
			[4] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "T-72B",
				["unitId"] = 354,
				["y"] = 294071.67686567,
				["x"] = 40994.38684742,
				["name"] = "Unit #098",
				["heading"] = 3.3161255787892,
				["playerCanDrive"] = true,
			}, -- end of [4]
			[5] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "tt_KORD",
				["unitId"] = 355,
				["y"] = 294062.64469072,
				["x"] = 40986.506475529,
				["name"] = "Unit #099",
				["heading"] = 2.3038346126325,
				["playerCanDrive"] = true,
			}, -- end of [5]
			[6] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Ural-375 ZU-23",
				["unitId"] = 356,
				["y"] = 294051.38044265,
				["x"] = 41027.375478119,
				["name"] = "Unit #100",
				["heading"] = 2.8448866807508,
				["playerCanDrive"] = false,
			}, -- end of [6]
			[7] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "GAZ-66",
				["unitId"] = 357,
				["y"] = 293972.03466388,
				["x"] = 41059.760777294,
				["name"] = "Unit #101",
				["heading"] = 1.5707963267949,
				["playerCanDrive"] = false,
			}, -- end of [7]
			[8] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "HL_DSHK",
				["unitId"] = 358,
				["y"] = 294034.47294282,
				["x"] = 41006.470149613,
				["name"] = "Unit #102",
				["heading"] = 1.7627825445143,
				["playerCanDrive"] = false,
			}, -- end of [8]
		}, -- end of ["units"]
		["y"] = 294057.51108224,
		["x"] = 41006.206097422,
		["name"] = "ARMOUR_Heavy_01",
		["start_time"] = 0,
	}, -- end of [ARMOUR_Heavy_01]
	["ARMOUR_Heavy_02"] = {
		["category"] = Group.Category.GROUND,
		["visible"] = false,
		["lateActivation"] = true,
		["tasks"] = 
		{
		}, -- end of ["tasks"]
		["uncontrollable"] = false,
		["task"] = "Ground Nothing",
		["taskSelected"] = true,
		["route"] = 
		{
			["spans"] = 
			{
			}, -- end of ["spans"]
			["points"] = 
			{
				[1] = 
				{
					["alt"] = 22,
					["type"] = "Turning Point",
					["ETA"] = 0,
					["alt_type"] = "BARO",
					["formation_template"] = "",
					["y"] = 293382.54753965,
					["x"] = 38402.775290271,
					["name"] = "",
					["ETA_locked"] = true,
					["speed"] = 0,
					["action"] = "Off Road",
					["task"] = 
					{
						["id"] = "ComboTask",
						["params"] = 
						{
							["tasks"] = 
							{
								[1] = 
								{
									["enabled"] = true,
									["auto"] = false,
									["id"] = "WrappedAction",
									["number"] = 1,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 0,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [1]
								[2] = 
								{
									["enabled"] = true,
									["auto"] = false,
									["id"] = "WrappedAction",
									["number"] = 2,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 9,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [2]
							}, -- end of ["tasks"]
						}, -- end of ["params"]
					}, -- end of ["task"]
					["speed_locked"] = true,
				}, -- end of [1]
			}, -- end of ["points"]
			["routeRelativeTOT"] = true,
		}, -- end of ["route"]
		["groupId"] = 58,
		["hidden"] = false,
		["units"] = 
		{
			[1] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "BRDM-2",
				["unitId"] = 372,
				["y"] = 293382.54753965,
				["x"] = 38402.775290271,
				["name"] = "Unit #109",
				["heading"] = 0,
				["playerCanDrive"] = false,
			}, -- end of [1]
			[2] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "BRDM-2",
				["unitId"] = 373,
				["y"] = 293397.3162059,
				["x"] = 38386.160540746,
				["name"] = "Unit #110",
				["heading"] = 2.460914245312,
				["playerCanDrive"] = true,
			}, -- end of [2]
			[3] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Ural-375 ZU-23",
				["unitId"] = 374,
				["y"] = 293367.72929699,
				["x"] = 38383.294538273,
				["name"] = "Unit #111",
				["heading"] = 3.5604716740684,
				["playerCanDrive"] = false,
			}, -- end of [3]
			[4] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "HL_KORD",
				["unitId"] = 375,
				["y"] = 293378.85537309,
				["x"] = 38424.005247998,
				["name"] = "Unit #112",
				["heading"] = 6.2308254296198,
				["playerCanDrive"] = true,
			}, -- end of [4]
			[5] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "HL_DSHK",
				["unitId"] = 376,
				["y"] = 293382.72949065,
				["x"] = 38388.947014546,
				["name"] = "Unit #113",
				["heading"] = 0.78539816339745,
				["playerCanDrive"] = true,
			}, -- end of [5]
			[6] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "SAU Gvozdika",
				["unitId"] = 377,
				["y"] = 293361.0825558,
				["x"] = 38404.901738096,
				["name"] = "Unit #114",
				["heading"] = 4.2411500823462,
				["playerCanDrive"] = false,
			}, -- end of [6]
			[7] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "ATMZ-5",
				["unitId"] = 378,
				["y"] = 293411.74360906,
				["x"] = 38401.325473996,
				["name"] = "Unit #115",
				["heading"] = 3.1415926535898,
				["playerCanDrive"] = false,
			}, -- end of [7]
			[8] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "ATMZ-5",
				["unitId"] = 379,
				["y"] = 293402.43869568,
				["x"] = 38401.872821842,
				["name"] = "Unit #116",
				["heading"] = 3.0194196059502,
				["playerCanDrive"] = false,
			}, -- end of [8]
		}, -- end of ["units"]
		["y"] = 293382.54753965,
		["x"] = 38402.775290271,
		["name"] = "ARMOUR_Heavy_02",
		["start_time"] = 0,
	}, -- end of [ARMOUR_Heavy_02]
	["ARMOUR_Heavy_03"] = {
		["category"] = Group.Category.GROUND,
		["visible"] = false,
		["lateActivation"] = true,
		["tasks"] = 
		{
		}, -- end of ["tasks"]
		["uncontrollable"] = false,
		["task"] = "Ground Nothing",
		["taskSelected"] = true,
		["route"] = 
		{
			["spans"] = 
			{
			}, -- end of ["spans"]
			["points"] = 
			{
				[1] = 
				{
					["alt"] = 21,
					["type"] = "Turning Point",
					["ETA"] = 0,
					["alt_type"] = "BARO",
					["formation_template"] = "",
					["y"] = 291791.56204639,
					["x"] = 41729.381321631,
					["name"] = "",
					["ETA_locked"] = true,
					["speed"] = 0,
					["action"] = "Off Road",
					["task"] = 
					{
						["id"] = "ComboTask",
						["params"] = 
						{
							["tasks"] = 
							{
								[1] = 
								{
									["enabled"] = true,
									["auto"] = false,
									["id"] = "WrappedAction",
									["number"] = 1,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 0,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [1]
								[2] = 
								{
									["enabled"] = true,
									["auto"] = false,
									["id"] = "WrappedAction",
									["number"] = 2,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 9,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [2]
							}, -- end of ["tasks"]
						}, -- end of ["params"]
					}, -- end of ["task"]
					["speed_locked"] = true,
				}, -- end of [1]
			}, -- end of ["points"]
			["routeRelativeTOT"] = true,
		}, -- end of ["route"]
		["groupId"] = 59,
		["hidden"] = false,
		["units"] = 
		{
			[1] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "BTR-80",
				["unitId"] = 380,
				["y"] = 291791.56204639,
				["x"] = 41729.381321631,
				["name"] = "Unit #117",
				["heading"] = 0,
				["playerCanDrive"] = false,
			}, -- end of [1]
			[2] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "BMP-3",
				["unitId"] = 381,
				["y"] = 291774.92167914,
				["x"] = 41735.102661772,
				["name"] = "Unit #118",
				["heading"] = 5.1836278784232,
				["playerCanDrive"] = true,
			}, -- end of [2]
			[3] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "tt_DSHK",
				["unitId"] = 382,
				["y"] = 291783.14461373,
				["x"] = 41720.16098793,
				["name"] = "Unit #119",
				["heading"] = 5.6723200689816,
				["playerCanDrive"] = false,
			}, -- end of [3]
			[4] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "T-72B",
				["unitId"] = 383,
				["y"] = 291809.54577796,
				["x"] = 41710.673059202,
				["name"] = "Unit #120",
				["heading"] = 2.4434609527921,
				["playerCanDrive"] = true,
			}, -- end of [4]
			[5] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "T-55",
				["unitId"] = 384,
				["y"] = 291791.37312689,
				["x"] = 41708.677106397,
				["name"] = "Unit #121",
				["heading"] = 3.1415926535898,
				["playerCanDrive"] = true,
			}, -- end of [5]
			[6] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "BTR-80",
				["unitId"] = 385,
				["y"] = 291778.23090891,
				["x"] = 41744.528952651,
				["name"] = "Unit #122",
				["heading"] = 4.9741883681838,
				["playerCanDrive"] = false,
			}, -- end of [6]
			[7] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Ural-4320T",
				["unitId"] = 386,
				["y"] = 291767.83556506,
				["x"] = 41715.138397879,
				["name"] = "Unit #123",
				["heading"] = 3.1415926535898,
				["playerCanDrive"] = false,
			}, -- end of [7]
			[8] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Ural-4320T",
				["unitId"] = 387,
				["y"] = 291807.95474682,
				["x"] = 41730.183098988,
				["name"] = "Unit #124",
				["heading"] = 2.3561944901923,
				["playerCanDrive"] = false,
			}, -- end of [8]
		}, -- end of ["units"]
		["y"] = 291791.56204639,
		["x"] = 41729.381321631,
		["name"] = "ARMOUR_Heavy_03",
		["start_time"] = 0,
	}, -- end of [ARMOUR_Heavy_03]
	["ARMOUR_Heavy_04"] = {
		["category"] = Group.Category.GROUND,
		["visible"] = false,
		["lateActivation"] = true,
		["tasks"] = 
		{
		}, -- end of ["tasks"]
		["uncontrollable"] = false,
		["task"] = "Ground Nothing",
		["taskSelected"] = true,
		["route"] = 
		{
			["spans"] = 
			{
			}, -- end of ["spans"]
			["points"] = 
			{
				[1] = 
				{
					["alt"] = 21,
					["type"] = "Turning Point",
					["ETA"] = 0,
					["alt_type"] = "BARO",
					["formation_template"] = "",
					["y"] = 291164.81018541,
					["x"] = 39222.373877707,
					["name"] = "",
					["ETA_locked"] = true,
					["speed"] = 0,
					["action"] = "Off Road",
					["task"] = 
					{
						["id"] = "ComboTask",
						["params"] = 
						{
							["tasks"] = 
							{
								[1] = 
								{
									["enabled"] = true,
									["auto"] = false,
									["id"] = "WrappedAction",
									["number"] = 1,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 0,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [1]
								[2] = 
								{
									["enabled"] = true,
									["auto"] = false,
									["id"] = "WrappedAction",
									["number"] = 2,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 9,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [2]
							}, -- end of ["tasks"]
						}, -- end of ["params"]
					}, -- end of ["task"]
					["speed_locked"] = true,
				}, -- end of [1]
			}, -- end of ["points"]
			["routeRelativeTOT"] = true,
		}, -- end of ["route"]
		["groupId"] = 60,
		["hidden"] = false,
		["units"] = 
		{
			[1] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "BTR-80",
				["unitId"] = 388,
				["y"] = 291164.81018541,
				["x"] = 39222.373877707,
				["name"] = "Unit #125",
				["heading"] = 0.66322511575785,
				["playerCanDrive"] = true,
			}, -- end of [1]
			[2] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "BTR-80",
				["unitId"] = 389,
				["y"] = 291177.91065715,
				["x"] = 39239.29532037,
				["name"] = "Unit #126",
				["heading"] = 0.97738438111682,
				["playerCanDrive"] = true,
			}, -- end of [2]
			[3] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "T-55",
				["unitId"] = 390,
				["y"] = 291178.2199307,
				["x"] = 39202.077348853,
				["name"] = "Unit #127",
				["heading"] = 2.3212879051525,
				["playerCanDrive"] = true,
			}, -- end of [3]
			[4] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "T-72B",
				["unitId"] = 391,
				["y"] = 291184.16675977,
				["x"] = 39209.781301102,
				["name"] = "Unit #128",
				["heading"] = 1.6231562043547,
				["playerCanDrive"] = true,
			}, -- end of [4]
			[5] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Paratrooper RPG-16",
				["unitId"] = 392,
				["y"] = 291181.93572078,
				["x"] = 39223.242111222,
				["name"] = "Unit #129",
				["heading"] = 0,
				["playerCanDrive"] = false,
			}, -- end of [5]
			[6] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "T-72B",
				["unitId"] = 393,
				["y"] = 291162.24452082,
				["x"] = 39234.70342539,
				["name"] = "Unit #130",
				["heading"] = 4.9043751981041,
				["playerCanDrive"] = false,
			}, -- end of [6]
			[7] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "HL_DSHK",
				["unitId"] = 394,
				["y"] = 291151.65684203,
				["x"] = 39209.682055153,
				["name"] = "Unit #131",
				["heading"] = 4.1189770347066,
				["playerCanDrive"] = false,
			}, -- end of [7]
			[8] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "GAZ-66",
				["unitId"] = 395,
				["y"] = 291172.75595029,
				["x"] = 39218.093173841,
				["name"] = "Unit #132",
				["heading"] = 0.62831853071796,
				["playerCanDrive"] = false,
			}, -- end of [8]
		}, -- end of ["units"]
		["y"] = 291164.81018541,
		["x"] = 39222.373877707,
		["name"] = "ARMOUR_Heavy_04",
		["start_time"] = 0,
	}, -- end of [ARMOUR_Heavy_04]
	------------------------ CONVOY ------------------------
	["CONVOY_base"] = {
		["category"] = Group.Category.GROUND,
		["visible"] = false,
		["lateActivation"] = true,
		["tasks"] = 
		{
		}, -- end of ["tasks"]
		["uncontrollable"] = false,
		["task"] = "Ground Nothing",
		["taskSelected"] = true,
		["route"] = 
		{
			["spans"] = 
			{
				[1] = 
				{
					[1] = 
					{
						["y"] = 307429.64127261,
						["x"] = 36315.691981635,
					}, -- end of [1]
					[2] = 
					{
						["y"] = 307429.64127261,
						["x"] = 36315.691981635,
					}, -- end of [2]
				}, -- end of [1]
			}, -- end of ["spans"]
			["points"] = 
			{
				[1] = 
				{
					["alt"] = 5,
					["type"] = "Turning Point",
					["ETA"] = 0,
					["alt_type"] = "BARO",
					["formation_template"] = "",
					["y"] = 307929.59357735,
					["x"] = 36284.831768249,
					["name"] = "",
					["ETA_locked"] = true,
					["speed"] = 5.5555555555556,
					["action"] = "On Road",
					["task"] = 
					{
						["id"] = "ComboTask",
						["params"] = 
						{
							["tasks"] = 
							{
								[1] = 
								{
									["number"] = 1,
									["auto"] = false,
									["id"] = "WrappedAction",
									["enabled"] = true,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 0,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [1]
								[2] = 
								{
									["number"] = 2,
									["auto"] = false,
									["id"] = "WrappedAction",
									["enabled"] = true,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 9,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [2]
							}, -- end of ["tasks"]
						}, -- end of ["params"]
					}, -- end of ["task"]
					["speed_locked"] = true,
				}, -- end of [1]
			}, -- end of ["points"]
			["routeRelativeTOT"] = true,
		}, -- end of ["route"]
		["groupId"] = 72,
		["hidden"] = false,
		["units"] = 
		{
			[1] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "Tigr_233036",
				["unitId"] = 444,
				["y"] = 307929.59357735,
				["x"] = 36284.831768249,
				["name"] = "Unit #179",
				["heading"] = -0.061648098349977,
				["playerCanDrive"] = false,
				["wagons"] = 
				{
				}, -- end of ["wagons"]
			}, -- end of [1]
		}, -- end of ["units"]
		["y"] = 307929.59357735,
		["x"] = 36284.831768249,
		["name"] = "CONVOY_base",
		["start_time"] = 0,
	}, -- end of [CONVOY_base]
	["CONVOY_light-1"] = {
		["category"] = Group.Category.GROUND,
		["visible"] = false,
		["lateActivation"] = true,
		["tasks"] = 
		{
		}, -- end of ["tasks"]
		["uncontrollable"] = false,
		["task"] = "Ground Nothing",
		["taskSelected"] = true,
		["route"] = 
		{
			["spans"] = 
			{
				[1] = 
				{
					[1] = 
					{
						["y"] = 307002.29266054,
						["x"] = 36451.947799565,
					}, -- end of [1]
					[2] = 
					{
						["y"] = 307002.29266054,
						["x"] = 36451.947799565,
					}, -- end of [2]
				}, -- end of [1]
			}, -- end of ["spans"]
			["points"] = 
			{
				[1] = 
				{
					["alt"] = 5,
					["type"] = "Turning Point",
					["ETA"] = 0,
					["alt_type"] = "BARO",
					["formation_template"] = "",
					["y"] = 306991.33844617,
					["x"] = 36455.435715355,
					["name"] = "",
					["ETA_locked"] = true,
					["speed"] = 5.5555555555556,
					["action"] = "On Road",
					["task"] = 
					{
						["id"] = "ComboTask",
						["params"] = 
						{
							["tasks"] = 
							{
								[1] = 
								{
									["number"] = 1,
									["auto"] = false,
									["id"] = "WrappedAction",
									["enabled"] = true,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 0,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [1]
								[2] = 
								{
									["number"] = 2,
									["auto"] = false,
									["id"] = "WrappedAction",
									["enabled"] = true,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 9,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [2]
							}, -- end of ["tasks"]
						}, -- end of ["params"]
					}, -- end of ["task"]
					["speed_locked"] = true,
				}, -- end of [1]
			}, -- end of ["points"]
			["routeRelativeTOT"] = true,
		}, -- end of ["route"]
		["groupId"] = 45,
		["hidden"] = false,
		["units"] = 
		{
			[1] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "Tigr_233036",
				["unitId"] = 326,
				["y"] = 306991.33844617,
				["x"] = 36455.435715355,
				["name"] = "Unit #033",
				["heading"] = 2.8333339754249,
				["playerCanDrive"] = false,
				["wagons"] = 
				{
				}, -- end of ["wagons"]
			}, -- end of [1]
			[2] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "BTR-80",
				["unitId"] = 327,
				["y"] = 306962.75232017,
				["x"] = 36464.537000937,
				["name"] = "Unit #034",
				["heading"] = 1.8790433242373,
				["playerCanDrive"] = false,
			}, -- end of [2]
			[3] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "BTR-80",
				["unitId"] = 328,
				["y"] = 306934.16599896,
				["x"] = 36473.637673398,
				["name"] = "Unit #035",
				["heading"] = 1.8790149274913,
				["playerCanDrive"] = false,
			}, -- end of [3]
			[4] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "Ural-375 ZU-23",
				["unitId"] = 329,
				["y"] = 306905.57963757,
				["x"] = 36482.738219676,
				["name"] = "Unit #036",
				["heading"] = 1.8790045696829,
				["playerCanDrive"] = false,
			}, -- end of [4]
			[5] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "Ural-375 PBU",
				["unitId"] = 330,
				["y"] = 306876.99344612,
				["x"] = 36491.839299659,
				["name"] = "Unit #079",
				["heading"] = 1.8790140394514,
				["playerCanDrive"] = false,
			}, -- end of [5]
			[6] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "Tigr_233036",
				["unitId"] = 331,
				["y"] = 306848.40800062,
				["x"] = 36500.942721509,
				["name"] = "Unit #080",
				["heading"] = 1.8790787459442,
				["playerCanDrive"] = false,
			}, -- end of [6]
			[7] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "KAMAZ Truck",
				["unitId"] = 332,
				["y"] = 306819.82419292,
				["x"] = 36510.051281374,
				["name"] = "Unit #081",
				["heading"] = 1.8792307204181,
				["playerCanDrive"] = false,
			}, -- end of [7]
			[8] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "Ural-375 ZU-23",
				["unitId"] = 333,
				["y"] = 306791.24378837,
				["x"] = 36519.170500361,
				["name"] = "Unit #083",
				["heading"] = 1.8795438987433,
				["playerCanDrive"] = false,
			}, -- end of [8]
			[9] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "KAMAZ Truck",
				["unitId"] = 334,
				["y"] = 306762.66880464,
				["x"] = 36528.306677043,
				["name"] = "Unit #084",
				["heading"] = 1.8801155465484,
				["playerCanDrive"] = false,
			}, -- end of [9]
			[10] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "KAMAZ Truck",
				["unitId"] = 335,
				["y"] = 306734.09679001,
				["x"] = 36537.452161264,
				["name"] = "Unit #085",
				["heading"] = 1.8805447152192,
				["playerCanDrive"] = false,
			}, -- end of [10]
			[11] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "KAMAZ Truck",
				["unitId"] = 336,
				["y"] = 306705.52412294,
				["x"] = 36546.595611428,
				["name"] = "Unit #086",
				["heading"] = 1.8805410215421,
				["playerCanDrive"] = false,
			}, -- end of [11]
			[12] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Ural-375 ZU-23",
				["unitId"] = 337,
				["y"] = 306676.95006854,
				["x"] = 36555.734724067,
				["name"] = "Unit #087",
				["heading"] = 1.8803837453141,
				["playerCanDrive"] = false,
			}, -- end of [12]
			[13] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "SKP-11",
				["unitId"] = 342,
				["y"] = 306648.37513627,
				["x"] = 36564.871092641,
				["name"] = "Unit #088",
				["heading"] = 1.8802767356983,
				["playerCanDrive"] = false,
			}, -- end of [13]
			[14] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "Tigr_233036",
				["unitId"] = 343,
				["y"] = 306619.79957931,
				["x"] = 36574.005507597,
				["name"] = "Unit #089",
				["heading"] = 1.8802038056136,
				["playerCanDrive"] = false,
			}, -- end of [14]
			[15] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "ZiL-131 APA-80",
				["unitId"] = 344,
				["y"] = 306591.22351138,
				["x"] = 36583.138324052,
				["name"] = "Unit #090",
				["heading"] = 1.8801457366544,
				["playerCanDrive"] = false,
			}, -- end of [15]
			[16] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "ZiL-131 APA-80",
				["unitId"] = 345,
				["y"] = 306562.64680561,
				["x"] = 36592.269144119,
				["name"] = "Unit #091",
				["heading"] = 1.8800874621262,
				["playerCanDrive"] = false,
			}, -- end of [16]
			[17] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "KAMAZ Truck",
				["unitId"] = 346,
				["y"] = 306534.06930442,
				["x"] = 36601.39747612,
				["name"] = "Unit #092",
				["heading"] = 1.8799869866622,
				["playerCanDrive"] = false,
			}, -- end of [17]
			[18] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "KAMAZ Truck",
				["unitId"] = 347,
				["y"] = 306505.49163701,
				["x"] = 36610.525286638,
				["name"] = "Unit #093",
				["heading"] = 1.8799607746795,
				["playerCanDrive"] = false,
			}, -- end of [18]
			[19] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Osa 9A33 ln",
				["unitId"] = 348,
				["y"] = 306476.91389706,
				["x"] = 36619.652870086,
				["name"] = "Unit #094",
				["heading"] = 1.8799518773351,
				["playerCanDrive"] = false,
			}, -- end of [19]
		}, -- end of ["units"]
		["y"] = 306991.33844617,
		["x"] = 36455.435715355,
		["name"] = "CONVOY_light-1",
		["start_time"] = 0,
	}, -- end of [CONVOY_light-1]
	["CONVOY_light-2"] = {
		["category"] = Group.Category.GROUND,
		["visible"] = false,
		["lateActivation"] = true,
		["tasks"] = 
		{
		}, -- end of ["tasks"]
		["uncontrollable"] = false,
		["task"] = "Ground Nothing",
		["taskSelected"] = true,
		["route"] = 
		{
			["spans"] = 
			{
				[1] = 
				{
					[1] = 
					{
						["y"] = 306224.70862636,
						["x"] = 36700.197414639,
					}, -- end of [1]
					[2] = 
					{
						["y"] = 306224.70862636,
						["x"] = 36700.197414639,
					}, -- end of [2]
				}, -- end of [1]
			}, -- end of ["spans"]
			["points"] = 
			{
				[1] = 
				{
					["alt"] = 5,
					["type"] = "Turning Point",
					["ETA"] = 0,
					["alt_type"] = "BARO",
					["formation_template"] = "",
					["y"] = 306224.7086263,
					["x"] = 36700.197414657,
					["name"] = "",
					["ETA_locked"] = true,
					["speed"] = 5.5555555555556,
					["action"] = "On Road",
					["task"] = 
					{
						["id"] = "ComboTask",
						["params"] = 
						{
							["tasks"] = 
							{
								[1] = 
								{
									["number"] = 1,
									["auto"] = false,
									["id"] = "WrappedAction",
									["enabled"] = true,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 0,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [1]
								[2] = 
								{
									["number"] = 2,
									["auto"] = false,
									["id"] = "WrappedAction",
									["enabled"] = true,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 9,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [2]
							}, -- end of ["tasks"]
						}, -- end of ["params"]
					}, -- end of ["task"]
					["speed_locked"] = true,
				}, -- end of [1]
			}, -- end of ["points"]
			["routeRelativeTOT"] = true,
		}, -- end of ["route"]
		["groupId"] = 71,
		["hidden"] = false,
		["units"] = 
		{
			[1] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "Tigr_233036",
				["unitId"] = 425,
				["y"] = 306224.7086263,
				["x"] = 36700.197414657,
				["name"] = "Unit #160",
				["heading"] = 2.0846941664357,
				["playerCanDrive"] = false,
				["wagons"] = 
				{
				}, -- end of ["wagons"]
			}, -- end of [1]
			[2] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "BTR-80",
				["unitId"] = 426,
				["y"] = 306196.72763336,
				["x"] = 36709.132878916,
				["name"] = "Unit #161",
				["heading"] = 1.879900916109,
				["playerCanDrive"] = false,
			}, -- end of [2]
			[3] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "BTR-80",
				["unitId"] = 427,
				["y"] = 306168.14944255,
				["x"] = 36718.259050849,
				["name"] = "Unit #162",
				["heading"] = 1.8799008592043,
				["playerCanDrive"] = false,
			}, -- end of [3]
			[4] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "Ural-375 ZU-23",
				["unitId"] = 428,
				["y"] = 306139.57125186,
				["x"] = 36727.385222765,
				["name"] = "Unit #163",
				["heading"] = 1.879900859882,
				["playerCanDrive"] = false,
			}, -- end of [4]
			[5] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "Ural-375 PBU",
				["unitId"] = 429,
				["y"] = 306110.99306129,
				["x"] = 36736.511395035,
				["name"] = "Unit #164",
				["heading"] = 1.8799008723394,
				["playerCanDrive"] = false,
			}, -- end of [5]
			[6] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "Tigr_233036",
				["unitId"] = 430,
				["y"] = 306082.41487089,
				["x"] = 36745.637568004,
				["name"] = "Unit #165",
				["heading"] = 1.8799008962587,
				["playerCanDrive"] = false,
			}, -- end of [6]
			[7] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "Ural-375",
				["unitId"] = 431,
				["y"] = 306053.83668082,
				["x"] = 36754.76374199,
				["name"] = "Unit #166",
				["heading"] = 1.8799009318986,
				["playerCanDrive"] = false,
			}, -- end of [7]
			[8] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "Ural-375",
				["unitId"] = 432,
				["y"] = 306025.25849108,
				["x"] = 36763.889917036,
				["name"] = "Unit #167",
				["heading"] = 1.8799009689035,
				["playerCanDrive"] = false,
			}, -- end of [8]
			[9] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "Ural-375",
				["unitId"] = 433,
				["y"] = 305996.68030161,
				["x"] = 36773.016092938,
				["name"] = "Unit #168",
				["heading"] = 1.8799009988225,
				["playerCanDrive"] = false,
			}, -- end of [9]
			[10] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "Ural-375",
				["unitId"] = 434,
				["y"] = 305968.10211242,
				["x"] = 36782.14226958,
				["name"] = "Unit #169",
				["heading"] = 1.8799010251592,
				["playerCanDrive"] = false,
			}, -- end of [10]
			[11] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "Ural-375",
				["unitId"] = 435,
				["y"] = 305939.52392328,
				["x"] = 36791.268446585,
				["name"] = "Unit #170",
				["heading"] = 1.8799010371935,
				["playerCanDrive"] = false,
			}, -- end of [11]
			[12] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Ural-375 ZU-23",
				["unitId"] = 436,
				["y"] = 305910.94573413,
				["x"] = 36800.39462353,
				["name"] = "Unit #171",
				["heading"] = 1.879901035186,
				["playerCanDrive"] = false,
			}, -- end of [12]
			[13] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "ZIL-131 KUNG",
				["unitId"] = 437,
				["y"] = 305882.36754484,
				["x"] = 36809.520800007,
				["name"] = "Unit #172",
				["heading"] = 1.8799010189057,
				["playerCanDrive"] = false,
			}, -- end of [13]
			[14] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "Tigr_233036",
				["unitId"] = 438,
				["y"] = 305853.78935446,
				["x"] = 36818.646973079,
				["name"] = "Unit #173",
				["heading"] = 1.8799008997323,
				["playerCanDrive"] = false,
			}, -- end of [14]
			[15] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "ZiL-131 APA-80",
				["unitId"] = 439,
				["y"] = 305825.2111515,
				["x"] = 36827.773106733,
				["name"] = "Unit #174",
				["heading"] = 1.879899520508,
				["playerCanDrive"] = false,
			}, -- end of [15]
			[16] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "ZiL-131 APA-80",
				["unitId"] = 440,
				["y"] = 305796.63290686,
				["x"] = 36836.89910986,
				["name"] = "Unit #175",
				["heading"] = 1.8798949531691,
				["playerCanDrive"] = false,
			}, -- end of [16]
			[17] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "GAZ-66",
				["unitId"] = 441,
				["y"] = 305768.05459097,
				["x"] = 36846.024890129,
				["name"] = "Unit #176",
				["heading"] = 1.8798871541494,
				["playerCanDrive"] = false,
			}, -- end of [17]
			[18] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "GAZ-66",
				["unitId"] = 442,
				["y"] = 305739.47617453,
				["x"] = 36855.150355254,
				["name"] = "Unit #177",
				["heading"] = 1.8798761276137,
				["playerCanDrive"] = false,
			}, -- end of [18]
			[19] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Osa 9A33 ln",
				["unitId"] = 443,
				["y"] = 305710.89762808,
				["x"] = 36864.27541319,
				["name"] = "Unit #178",
				["heading"] = 1.8798618795929,
				["playerCanDrive"] = false,
			}, -- end of [19]
		}, -- end of ["units"]
		["y"] = 306224.7086263,
		["x"] = 36700.197414657,
		["name"] = "CONVOY_light-2",
		["start_time"] = 0,
	}, -- end of [CONVOY_light-2]
	["CONVOY_heavy-1"] = {
		["category"] = Group.Category.GROUND,
		["visible"] = false,
		["lateActivation"] = true,
		["tasks"] = 
		{
		}, -- end of ["tasks"]
		["uncontrollable"] = false,
		["task"] = "Ground Nothing",
		["taskSelected"] = true,
		["route"] = 
		{
			["spans"] = 
			{
				[1] = 
				{
					[1] = 
					{
						["y"] = 305424.62758347,
						["x"] = 36955.598089493,
					}, -- end of [1]
					[2] = 
					{
						["y"] = 305424.62758347,
						["x"] = 36955.598089493,
					}, -- end of [2]
				}, -- end of [1]
			}, -- end of ["spans"]
			["points"] = 
			{
				[1] = 
				{
					["alt"] = 20,
					["type"] = "Turning Point",
					["ETA"] = 0,
					["alt_type"] = "BARO",
					["formation_template"] = "",
					["y"] = 302474.66874609,
					["x"] = 37949.084862931,
					["name"] = "",
					["ETA_locked"] = true,
					["speed"] = 9.25,
					["action"] = "On Road",
					["task"] = 
					{
						["id"] = "ComboTask",
						["params"] = 
						{
							["tasks"] = 
							{
								[1] = 
								{
									["number"] = 1,
									["auto"] = false,
									["id"] = "WrappedAction",
									["enabled"] = true,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 0,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [1]
								[2] = 
								{
									["number"] = 2,
									["auto"] = false,
									["id"] = "WrappedAction",
									["enabled"] = true,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 9,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [2]
							}, -- end of ["tasks"]
						}, -- end of ["params"]
					}, -- end of ["task"]
					["speed_locked"] = true,
				}, -- end of [1]
			}, -- end of ["points"]
			["routeRelativeTOT"] = true,
		}, -- end of ["route"]
		["groupId"] = 44,
		["hidden"] = false,
		["units"] = 
		{
			[1] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "Tigr_233036",
				["unitId"] = 306,
				["y"] = 302474.66874609,
				["x"] = 37949.084862931,
				["name"] = "Unit #001",
				["heading"] = 2.8167434240319,
				["playerCanDrive"] = true,
			}, -- end of [1]
			[2] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "BMP-2",
				["unitId"] = 307,
				["y"] = 302446.2306552,
				["x"] = 37958.638576264,
				["name"] = "Unit #002",
				["heading"] = 1.8791409262917,
				["playerCanDrive"] = true,
			}, -- end of [2]
			[3] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "BMP-2",
				["unitId"] = 308,
				["y"] = 302417.77983982,
				["x"] = 37968.154265693,
				["name"] = "Unit #003",
				["heading"] = 1.8791601648452,
				["playerCanDrive"] = true,
			}, -- end of [3]
			[4] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "BMP-2",
				["unitId"] = 309,
				["y"] = 302389.32114534,
				["x"] = 37977.64645492,
				["name"] = "Unit #004",
				["heading"] = 1.8792199564999,
				["playerCanDrive"] = true,
			}, -- end of [4]
			[5] = 
			{
				["skill"] = "Average",
				["coldAtStart"] = false,
				["type"] = "BMP-2",
				["unitId"] = 310,
				["y"] = 302360.85771163,
				["x"] = 37987.124459484,
				["name"] = "Unit #005",
				["heading"] = 1.8792993044879,
				["playerCanDrive"] = true,
			}, -- end of [5]
			[6] = 
			{
				["skill"] = "Average",
				["coldAtStart"] = false,
				["type"] = "Ural-375 ZU-23",
				["unitId"] = 311,
				["y"] = 302332.3918371,
				["x"] = 37996.595145932,
				["name"] = "Unit #006",
				["heading"] = 1.8793461925752,
				["playerCanDrive"] = true,
			}, -- end of [6]
			[7] = 
			{
				["skill"] = "Average",
				["coldAtStart"] = false,
				["type"] = "BMP-2",
				["unitId"] = 312,
				["y"] = 302303.92538172,
				["x"] = 38006.064090677,
				["name"] = "Unit #007",
				["heading"] = 1.8793518558872,
				["playerCanDrive"] = true,
			}, -- end of [7]
			[8] = 
			{
				["skill"] = "Average",
				["coldAtStart"] = false,
				["type"] = "BMP-2",
				["unitId"] = 313,
				["y"] = 302275.45890848,
				["x"] = 38015.532981929,
				["name"] = "Unit #008",
				["heading"] = 1.8792989748675,
				["playerCanDrive"] = true,
			}, -- end of [8]
			[9] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "BMP-2",
				["unitId"] = 314,
				["y"] = 302246.99243469,
				["x"] = 38025.001873676,
				["name"] = "Unit #009",
				["heading"] = 1.8791699310651,
				["playerCanDrive"] = false,
			}, -- end of [9]
			[10] = 
			{
				["skill"] = "Average",
				["coldAtStart"] = false,
				["type"] = "BMP-2",
				["unitId"] = 315,
				["y"] = 302218.52596171,
				["x"] = 38034.470765722,
				["name"] = "Unit #018",
				["heading"] = 1.8790240909102,
				["playerCanDrive"] = true,
			}, -- end of [10]
			[11] = 
			{
				["skill"] = "Average",
				["coldAtStart"] = false,
				["type"] = "Osa 9A33 ln",
				["unitId"] = 316,
				["y"] = 302190.05948895,
				["x"] = 38043.93965839,
				["name"] = "Unit #019",
				["heading"] = 1.878900414256,
				["playerCanDrive"] = true,
			}, -- end of [11]
			[12] = 
			{
				["skill"] = "Average",
				["coldAtStart"] = false,
				["type"] = "BTR_D",
				["unitId"] = 317,
				["y"] = 302161.59301643,
				["x"] = 38053.408551812,
				["name"] = "Unit #020",
				["heading"] = 1.8788157653291,
				["playerCanDrive"] = true,
			}, -- end of [12]
			[13] = 
			{
				["skill"] = "Average",
				["coldAtStart"] = false,
				["type"] = "BTR_D",
				["unitId"] = 318,
				["y"] = 302133.12654527,
				["x"] = 38062.877449289,
				["name"] = "Unit #021",
				["heading"] = 1.8787606099854,
				["playerCanDrive"] = true,
			}, -- end of [13]
			[14] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "BTR_D",
				["unitId"] = 319,
				["y"] = 302104.66007372,
				["x"] = 38072.346345632,
				["name"] = "Unit #022",
				["heading"] = 1.8787212155447,
				["playerCanDrive"] = true,
			}, -- end of [14]
			[15] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "BTR-80",
				["unitId"] = 320,
				["y"] = 302076.19360245,
				["x"] = 38081.815242795,
				["name"] = "Unit #023",
				["heading"] = 1.878691365128,
				["playerCanDrive"] = true,
			}, -- end of [15]
			[16] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "Ural-375 ZU-23",
				["unitId"] = 321,
				["y"] = 302047.72713132,
				["x"] = 38091.284140392,
				["name"] = "Unit #024",
				["heading"] = 1.8786679717346,
				["playerCanDrive"] = true,
			}, -- end of [16]
			[17] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "BTR-80",
				["unitId"] = 322,
				["y"] = 302019.26066022,
				["x"] = 38100.753038035,
				["name"] = "Unit #025",
				["heading"] = 1.8786490585146,
				["playerCanDrive"] = true,
			}, -- end of [17]
			[18] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Ural-375",
				["unitId"] = 323,
				["y"] = 301990.794189,
				["x"] = 38110.22193534,
				["name"] = "Unit #026",
				["heading"] = 1.8786338426242,
				["playerCanDrive"] = false,
			}, -- end of [18]
			[19] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Ural-375",
				["unitId"] = 324,
				["y"] = 301962.32771754,
				["x"] = 38119.69083192,
				["name"] = "Unit #027",
				["heading"] = 1.8786213481253,
				["playerCanDrive"] = false,
			}, -- end of [19]
			[20] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Osa 9A33 ln",
				["unitId"] = 325,
				["y"] = 301933.86124555,
				["x"] = 38129.159726928,
				["name"] = "Unit #028",
				["heading"] = 1.878611069685,
				["playerCanDrive"] = true,
			}, -- end of [20]
		}, -- end of ["units"]
		["y"] = 302474.66874609,
		["x"] = 37949.084862931,
		["name"] = "CONVOY_heavy-1",
		["start_time"] = 0,
	}, -- end of [CONVOY_heavy-1]
	["CONVOY_heavy-2"] = {
		["category"] = Group.Category.GROUND,
		["visible"] = false,
		["lateActivation"] = true,
		["tasks"] = 
		{
		}, -- end of ["tasks"]
		["uncontrollable"] = false,
		["task"] = "Ground Nothing",
		["taskSelected"] = true,
		["route"] = 
		{
			["spans"] = 
			{
				[1] = 
				{
					[1] = 
					{
						["y"] = 304414.77669086,
						["x"] = 37276.865434798,
					}, -- end of [1]
					[2] = 
					{
						["y"] = 304414.77669086,
						["x"] = 37276.865434798,
					}, -- end of [2]
				}, -- end of [1]
			}, -- end of ["spans"]
			["points"] = 
			{
				[1] = 
				{
					["alt"] = 22,
					["type"] = "Turning Point",
					["ETA"] = 0,
					["alt_type"] = "BARO",
					["formation_template"] = "",
					["y"] = 301676.00477616,
					["x"] = 38214.931330529,
					["name"] = "",
					["ETA_locked"] = true,
					["speed"] = 9.25,
					["action"] = "On Road",
					["task"] = 
					{
						["id"] = "ComboTask",
						["params"] = 
						{
							["tasks"] = 
							{
								[1] = 
								{
									["number"] = 1,
									["auto"] = false,
									["id"] = "WrappedAction",
									["enabled"] = true,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 0,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [1]
								[2] = 
								{
									["number"] = 2,
									["auto"] = false,
									["id"] = "WrappedAction",
									["enabled"] = true,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 9,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [2]
							}, -- end of ["tasks"]
						}, -- end of ["params"]
					}, -- end of ["task"]
					["speed_locked"] = true,
				}, -- end of [1]
			}, -- end of ["points"]
			["routeRelativeTOT"] = true,
		}, -- end of ["route"]
		["groupId"] = 70,
		["hidden"] = false,
		["units"] = 
		{
			[1] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "ZSU-23-4 Shilka",
				["unitId"] = 405,
				["y"] = 301676.00477616,
				["x"] = 38214.931330529,
				["name"] = "Unit #140",
				["heading"] = 2.8116029773454,
				["playerCanDrive"] = true,
			}, -- end of [1]
			[2] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "T-72B",
				["unitId"] = 406,
				["y"] = 301647.53942293,
				["x"] = 38224.39985035,
				["name"] = "Unit #141",
				["heading"] = 1.8782668196037,
				["playerCanDrive"] = true,
			}, -- end of [2]
			[3] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "T-72B",
				["unitId"] = 407,
				["y"] = 301619.07294999,
				["x"] = 38233.868742469,
				["name"] = "Unit #142",
				["heading"] = 1.8784381995326,
				["playerCanDrive"] = true,
			}, -- end of [3]
			[4] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "Ural-375 ZU-23",
				["unitId"] = 408,
				["y"] = 301590.60647629,
				["x"] = 38243.337631008,
				["name"] = "Unit #143",
				["heading"] = 1.8785398765432,
				["playerCanDrive"] = true,
			}, -- end of [4]
			[5] = 
			{
				["skill"] = "Average",
				["coldAtStart"] = false,
				["type"] = "T-72B",
				["unitId"] = 409,
				["y"] = 301562.13998517,
				["x"] = 38252.806469144,
				["name"] = "Unit #144",
				["heading"] = 1.8783470362892,
				["playerCanDrive"] = true,
			}, -- end of [5]
			[6] = 
			{
				["skill"] = "Average",
				["coldAtStart"] = false,
				["type"] = "T-72B",
				["unitId"] = 410,
				["y"] = 301533.67338246,
				["x"] = 38262.27497114,
				["name"] = "Unit #145",
				["heading"] = 1.877645336169,
				["playerCanDrive"] = true,
			}, -- end of [6]
			[7] = 
			{
				["skill"] = "Average",
				["coldAtStart"] = false,
				["type"] = "T-72B",
				["unitId"] = 411,
				["y"] = 301505.20653901,
				["x"] = 38271.74274927,
				["name"] = "Unit #146",
				["heading"] = 1.877473355351,
				["playerCanDrive"] = true,
			}, -- end of [7]
			[8] = 
			{
				["skill"] = "Average",
				["coldAtStart"] = false,
				["type"] = "T-72B",
				["unitId"] = 412,
				["y"] = 301476.73925518,
				["x"] = 38281.209202938,
				["name"] = "Unit #147",
				["heading"] = 1.8773984159304,
				["playerCanDrive"] = true,
			}, -- end of [8]
			[9] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Osa 9A33 ln",
				["unitId"] = 413,
				["y"] = 301448.27113757,
				["x"] = 38290.673148291,
				["name"] = "Unit #148",
				["heading"] = 1.8773291465698,
				["playerCanDrive"] = false,
			}, -- end of [9]
			[10] = 
			{
				["skill"] = "Average",
				["coldAtStart"] = false,
				["type"] = "T-72B",
				["unitId"] = 414,
				["y"] = 301419.80110324,
				["x"] = 38300.131321826,
				["name"] = "Unit #149",
				["heading"] = 1.8772303862861,
				["playerCanDrive"] = true,
			}, -- end of [10]
			[11] = 
			{
				["skill"] = "Average",
				["coldAtStart"] = false,
				["type"] = "T-72B",
				["unitId"] = 415,
				["y"] = 301391.32811351,
				["x"] = 38309.580594062,
				["name"] = "Unit #150",
				["heading"] = 1.8769893046105,
				["playerCanDrive"] = true,
			}, -- end of [11]
			[12] = 
			{
				["skill"] = "Average",
				["coldAtStart"] = false,
				["type"] = "T-72B",
				["unitId"] = 416,
				["y"] = 301362.85730293,
				["x"] = 38319.036426189,
				["name"] = "Unit #151",
				["heading"] = 1.8757472778833,
				["playerCanDrive"] = true,
			}, -- end of [12]
			[13] = 
			{
				["skill"] = "Average",
				["coldAtStart"] = false,
				["type"] = "T-72B",
				["unitId"] = 417,
				["y"] = 301334.39176906,
				["x"] = 38328.508118369,
				["name"] = "Unit #152",
				["heading"] = 1.8730157673716,
				["playerCanDrive"] = true,
			}, -- end of [13]
			[14] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "Ural-375 ZU-23",
				["unitId"] = 418,
				["y"] = 301305.92821931,
				["x"] = 38337.98579116,
				["name"] = "Unit #153",
				["heading"] = 1.8708689503781,
				["playerCanDrive"] = true,
			}, -- end of [14]
			[15] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "BTR-80",
				["unitId"] = 419,
				["y"] = 301277.46511035,
				["x"] = 38347.464790578,
				["name"] = "Unit #154",
				["heading"] = 1.8679285264736,
				["playerCanDrive"] = true,
			}, -- end of [15]
			[16] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "BTR-80",
				["unitId"] = 420,
				["y"] = 301249.00182235,
				["x"] = 38356.943252237,
				["name"] = "Unit #155",
				["heading"] = 1.8637875013618,
				["playerCanDrive"] = true,
			}, -- end of [16]
			[17] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "BTR-80",
				["unitId"] = 421,
				["y"] = 301220.53792841,
				["x"] = 38366.419893654,
				["name"] = "Unit #156",
				["heading"] = 1.8575911919256,
				["playerCanDrive"] = true,
			}, -- end of [17]
			[18] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "BTR-80",
				["unitId"] = 422,
				["y"] = 301192.07330281,
				["x"] = 38375.894337225,
				["name"] = "Unit #157",
				["heading"] = 1.8495312285784,
				["playerCanDrive"] = true,
			}, -- end of [18]
			[19] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "T-72B",
				["unitId"] = 423,
				["y"] = 301163.60811559,
				["x"] = 38385.367093434,
				["name"] = "Unit #158",
				["heading"] = 1.846427458863,
				["playerCanDrive"] = true,
			}, -- end of [19]
			[20] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Osa 9A33 ln",
				["unitId"] = 424,
				["y"] = 301135.14239031,
				["x"] = 38394.838232731,
				["name"] = "Unit #159",
				["heading"] = 1.8562698946798,
				["playerCanDrive"] = true,
			}, -- end of [20]
		}, -- end of ["units"]
		["y"] = 301676.00477616,
		["x"] = 38214.931330529,
		["name"] = "CONVOY_heavy-2",
		["start_time"] = 0,
	}, -- end of [CONVOY_heavy-2]
	["CONVOY_heavy-3"] = {
		["category"] = Group.Category.GROUND,
		["visible"] = false,
		["lateActivation"] = true,
		["tasks"] = 
		{
		}, -- end of ["tasks"]
		["uncontrollable"] = false,
		["task"] = "Ground Nothing",
		["taskSelected"] = true,
		["route"] = 
		{
			["spans"] = 
			{
				[1] = 
				{
					[1] = 
					{
						["y"] = 304414.77669086,
						["x"] = 37276.865434798,
					}, -- end of [1]
					[2] = 
					{
						["y"] = 304414.77669086,
						["x"] = 37276.865434798,
					}, -- end of [2]
				}, -- end of [1]
			}, -- end of ["spans"]
			["points"] = 
			{
				[1] = 
				{
					["alt"] = 22,
					["type"] = "Turning Point",
					["ETA"] = 0,
					["alt_type"] = "BARO",
					["formation_template"] = "",
					["y"] = 300752.32117481,
					["x"] = 38522.131438127,
					["name"] = "",
					["ETA_locked"] = true,
					["speed"] = 9.25,
					["action"] = "On Road",
					["task"] = 
					{
						["id"] = "ComboTask",
						["params"] = 
						{
							["tasks"] = 
							{
								[1] = 
								{
									["number"] = 1,
									["auto"] = false,
									["id"] = "WrappedAction",
									["enabled"] = true,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 0,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [1]
								[2] = 
								{
									["number"] = 2,
									["auto"] = false,
									["id"] = "WrappedAction",
									["enabled"] = true,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "Option",
											["params"] = 
											{
												["value"] = 0,
												["name"] = 9,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [2]
							}, -- end of ["tasks"]
						}, -- end of ["params"]
					}, -- end of ["task"]
					["speed_locked"] = true,
				}, -- end of [1]
			}, -- end of ["points"]
			["routeRelativeTOT"] = true,
		}, -- end of ["route"]
		["groupId"] = 661,
		["hidden"] = false,
		["units"] = 
		{
			[1] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "Tigr_233036",
				["unitId"] = 1729,
				["y"] = 300752.32117481,
				["x"] = 38522.131438127,
				["name"] = "CONVOY_heavy-3-1",
				["heading"] = 2.8138465283448,
				["playerCanDrive"] = false,
			}, -- end of [1]
			[2] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "UAZ-469",
				["unitId"] = 1730,
				["y"] = 300723.83993312,
				["x"] = 38531.552138367,
				["name"] = "CONVOY_heavy-3-2",
				["heading"] = 1.8782668196037,
				["playerCanDrive"] = false,
			}, -- end of [2]
			[3] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "ATZ-5",
				["unitId"] = 1731,
				["y"] = 300695.34725822,
				["x"] = 38540.941758892,
				["name"] = "CONVOY_heavy-3-3",
				["heading"] = 1.8784381995326,
				["playerCanDrive"] = false,
			}, -- end of [3]
			[4] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "Ural-375 ZU-23",
				["unitId"] = 1732,
				["y"] = 300666.83995151,
				["x"] = 38550.286755566,
				["name"] = "CONVOY_heavy-3-4",
				["heading"] = 1.8785398765432,
				["playerCanDrive"] = true,
			}, -- end of [4]
			[5] = 
			{
				["skill"] = "Average",
				["coldAtStart"] = false,
				["type"] = "ATZ-5",
				["unitId"] = 1733,
				["y"] = 300638.31942473,
				["x"] = 38559.591410069,
				["name"] = "CONVOY_heavy-3-5",
				["heading"] = 1.8783470362892,
				["playerCanDrive"] = false,
			}, -- end of [5]
			[6] = 
			{
				["skill"] = "Average",
				["coldAtStart"] = false,
				["type"] = "T-90",
				["unitId"] = 1734,
				["y"] = 300609.79426423,
				["x"] = 38568.882008205,
				["name"] = "CONVOY_heavy-3-6",
				["heading"] = 1.877645336169,
				["playerCanDrive"] = true,
			}, -- end of [6]
			[7] = 
			{
				["skill"] = "Average",
				["coldAtStart"] = false,
				["type"] = "T-90",
				["unitId"] = 1735,
				["y"] = 300581.28128861,
				["x"] = 38578.209647558,
				["name"] = "CONVOY_heavy-3-7",
				["heading"] = 1.877473355351,
				["playerCanDrive"] = true,
			}, -- end of [7]
			[8] = 
			{
				["skill"] = "Average",
				["coldAtStart"] = false,
				["type"] = "T-90",
				["unitId"] = 1736,
				["y"] = 300552.81543767,
				["x"] = 38587.677441908,
				["name"] = "CONVOY_heavy-3-8",
				["heading"] = 1.8773984159304,
				["playerCanDrive"] = true,
			}, -- end of [8]
			[9] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Osa 9A33 ln",
				["unitId"] = 1737,
				["y"] = 300524.41541783,
				["x"] = 38597.340409349,
				["name"] = "CONVOY_heavy-3-9",
				["heading"] = 1.8773291465698,
				["playerCanDrive"] = false,
			}, -- end of [9]
			[10] = 
			{
				["skill"] = "Average",
				["coldAtStart"] = false,
				["type"] = "T-90",
				["unitId"] = 1738,
				["y"] = 300496.03015748,
				["x"] = 38607.050069872,
				["name"] = "CONVOY_heavy-3-10",
				["heading"] = 1.8772303862861,
				["playerCanDrive"] = true,
			}, -- end of [10]
			[11] = 
			{
				["skill"] = "Average",
				["coldAtStart"] = false,
				["type"] = "T-90",
				["unitId"] = 1739,
				["y"] = 300467.61997942,
				["x"] = 38616.685845949,
				["name"] = "CONVOY_heavy-3-11",
				["heading"] = 1.8769893046105,
				["playerCanDrive"] = true,
			}, -- end of [11]
			[12] = 
			{
				["skill"] = "Average",
				["coldAtStart"] = false,
				["type"] = "T-90",
				["unitId"] = 1740,
				["y"] = 300439.18369934,
				["x"] = 38626.244456237,
				["name"] = "CONVOY_heavy-3-12",
				["heading"] = 1.8757472778833,
				["playerCanDrive"] = true,
			}, -- end of [12]
			[13] = 
			{
				["skill"] = "Average",
				["coldAtStart"] = false,
				["type"] = "T-90",
				["unitId"] = 1741,
				["y"] = 300410.73327937,
				["x"] = 38635.761302478,
				["name"] = "CONVOY_heavy-3-13",
				["heading"] = 1.8730157673716,
				["playerCanDrive"] = true,
			}, -- end of [13]
			[14] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "Ural-375 ZU-23",
				["unitId"] = 1742,
				["y"] = 300382.2748848,
				["x"] = 38645.254390186,
				["name"] = "CONVOY_heavy-3-14",
				["heading"] = 1.8708689503781,
				["playerCanDrive"] = true,
			}, -- end of [14]
			[15] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "BTR-80",
				["unitId"] = 1743,
				["y"] = 300353.81181696,
				["x"] = 38654.733493855,
				["name"] = "CONVOY_heavy-3-15",
				["heading"] = 1.8679285264736,
				["playerCanDrive"] = true,
			}, -- end of [15]
			[16] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "BTR-80",
				["unitId"] = 1744,
				["y"] = 300325.34623247,
				["x"] = 38664.205051307,
				["name"] = "CONVOY_heavy-3-16",
				["heading"] = 1.8637875013618,
				["playerCanDrive"] = true,
			}, -- end of [16]
			[17] = 
			{
				["skill"] = "Excellent",
				["coldAtStart"] = false,
				["type"] = "BTR-80",
				["unitId"] = 1745,
				["y"] = 300296.87980238,
				["x"] = 38673.674073212,
				["name"] = "CONVOY_heavy-3-17",
				["heading"] = 1.8575911919256,
				["playerCanDrive"] = true,
			}, -- end of [17]
			[18] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "BTR-80",
				["unitId"] = 1746,
				["y"] = 300268.41332819,
				["x"] = 38683.142961584,
				["name"] = "CONVOY_heavy-3-18",
				["heading"] = 1.8495312285784,
				["playerCanDrive"] = true,
			}, -- end of [18]
			[19] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "T-90",
				["unitId"] = 1747,
				["y"] = 300239.94685341,
				["x"] = 38692.611848221,
				["name"] = "CONVOY_heavy-3-19",
				["heading"] = 1.846427458863,
				["playerCanDrive"] = true,
			}, -- end of [19]
			[20] = 
			{
				["skill"] = "Random",
				["coldAtStart"] = false,
				["type"] = "Osa 9A33 ln",
				["unitId"] = 1748,
				["y"] = 300211.48037893,
				["x"] = 38702.080735718,
				["name"] = "CONVOY_heavy-3-20",
				["heading"] = 1.8562698946798,
				["playerCanDrive"] = true,
			}, -- end of [20]
		}, -- end of ["units"]
		["y"] = 300752.32117481,
		["x"] = 38522.131438127,
		["name"] = "CONVOY_heavy-3",
		["start_time"] = 0,
	}, -- end of [CONVOY_heavy-3]
	------------------------ INFANTRY ------------------------
	------------------------ SHIP ------------------------

}