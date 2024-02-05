env.info( "[JTF-1] staticranges_data" )
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- STATIC RANGES SETTINGS FOR MIZ
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--
-- This file MUST be loaded AFTER staticranges.lua
--
-- These values are specific to the miz and will override the default values in STATICRANGES.default
--

-- Error prevention. Create empty container if module core lua not loaded.
if not STATICRANGES then 
	STATICRANGES = {}
	STATICRANGES.traceTitle = "[JTF-1 STATICRANGES] "
	_msg = self.traceTitle .. "CORE FILE NOT LOADED!"
	BASE:E(_msg)
	end

-- These values will overrides the default values in staticranges.lua
STATICRANGES.strafeMaxAlt             = 1530 -- [5000ft] in metres. Height of strafe box.
STATICRANGES.strafeBoxLength          = 3000 -- [10000ft] in metres. Length of strafe box.
STATICRANGES.strafeBoxWidth           = 300 -- [1000ft] in metres. Width of Strafe pit box (from 1st listed lane).
STATICRANGES.strafeFoullineDistance   = 610 -- [2000ft] in metres. Min distance for from target for rounds to be counted.
STATICRANGES.strafeGoodPass           = 20 -- Min hits for a good pass.

-- Range targets table
STATICRANGES.Ranges = {
	{ --YG77
		rangeId               = "YG77",
		rangeName             = "Range YG77",
		rangeZone             = "ZONE_YG77",
		rangeControlFrequency = 250.1,
		groups = {
		},
		units = {
			"RANGE_YG77_EAST_bombing", 
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
		},
		strafepits = {
			{ 	-- WEST
				"RANGE_YG77_strafepit_A",
				"RANGE_YG77_strafepit_B"
			},
			{ 	-- EAST
				"RANGE_YG77_strafepit_C",
				"RANGE_YG77_strafepit_D"
			},
		},
	},--YG77 END
	{ --BM22
		rangeId               = "BM22",
		rangeName             = "Range BM22",
		rangeZone             = "ZONE_BM22",
		rangeControlFrequency = 250.2,
		groups = {
		},
		units = {
			"RANGE_BM64_bombing_01", 
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
		},
		strafepits = {
			{
				"RANGE_BM64_Strafepit_A",
				"RANGE_BM64_Strafepit_B"
	    	},
		},
	},--BM22 END
	{ --BM52
		rangeId               = "BM52",
		rangeName             = "Range BM52",
		rangeZone             = "ZONE_BM52",
		rangeControlFrequency = 250.3,
		groups = {
		},
		units = {
			"RANGE_BM52_WEST_bombing", 
			"RANGE_BM52_EAST_bombing",
		},
		strafepits = {
			{
				"RANGE_BM52_strafepit_A",
				"RANGE_BM52_strafepit_B",
	    	},
			{
				"RANGE_BM52_strafepit_C",
				"RANGE_BM52_strafepit_D",
	    	},
		},
	},--BM52 END
	{ --CR94
		rangeId               = "CR94",
		rangeName             = "Range CR94",
		rangeZone             = "ZONE_CR94",
		rangeControlFrequency = 250.4,
		groups = {
		},
		units = {
			"RANGE_CR94_WEST_bombing", 
			"RANGE_CR94_EAST_bombing",
		},
		strafepits = {
			{
				"RANGE_CR94_strafepit_A",
				"RANGE_CR94_strafepit_B",
	    	},
		},
	},--CR94 END
}
  
-- Start the STATICRANGES module
if STATICRANGES.Start then
	_msg = STATICRANGES.traceTitle .. "Call Start()"
	BASE:T(_msg)

	STATICRANGES:Start()
end