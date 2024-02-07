env.info( "[JTF-1] markspawn_data" )
--------------------------------------------
--- Mark Spawn Mission Data Defined in this file
--------------------------------------------
--
-- **NOTE**: MARKSPAWN.LUA MUST BE LOADED BEFORE THIS FILE IS LOADED!
--
-- This file contains the config data specific to the miz in which it will be used.
-- All functions and key values are in MARKSPAWN.LUA, which should be loaded first
--
-- Load order in miz MUST be;
--     1. markspawn.lua
--     2. markspawn_data.lua
--

-- Error prevention. Create empty container if SUPPORTAIRCRAFT.LUA is not loaded or has failed.
if not MARKSPAWN then 
	MARKSPAWN = {}
	SUPPORTAC.traceTitle = "[JTF-1 MARKSPAWN] "
	_msg = MARKSPAWN.traceTitle .. "CORE FILE NOT LOADED!"
	BASE:E(_msg)
end

-- UNCOMMENT TO OVERRIDE MARKSPAWN DEFAULT VALUES BELOW

-- MARKSPAWN.DEFAULT_BLUE_COUNTRY = 2 -- USA
-- MARKSPAWN.DEFAULT_RED_COUNTRY = 0 -- RUSSIA
-- MARKSPAWN.MLDefaultAirAlt = 200 -- altitude Flight Level
-- MARKSPAWN.MLDefaultHdg = 000
-- MARKSPAWN.MLDefaultSkill = "AVERAGE"
-- MARKSPAWN.MLDefaultDistance = 0
-- MARKSPAWN.MLDefaultGroundDistance = 0
-- MARKSPAWN.MLDefaultROE = "FREE"
-- MARKSPAWN.MLDefaultROT = "EVADE"
-- MARKSPAWN.MLDefaultFreq = 251
-- MARKSPAWN.MLDefaultNum = 1
-- MARKSPAWN.MLDefaultAirSpeed = 425
-- MARKSPAWN.MLDefaultGroundSpeed = 21
-- MARKSPAWN.MLDefaultAlert = "RED"
-- MARKSPAWN.MLDefaultGroundTask = "NOTHING"




-- call the function that initialises the SUPPORTAC module
if MARKSPAWN.Start ~= nil then
    _msg = MARKSPAWN.traceTitle .. "MARKSPAWN_DATA - call MARKSPAWN:Start()."
    BASE:I(_msg)
    MARKSPAWN:Start()
  end
  
