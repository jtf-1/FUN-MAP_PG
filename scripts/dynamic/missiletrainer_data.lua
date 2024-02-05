env.info( "[JTF-1] missiletrainer_data" )
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- MISSILE TRAINER SETTINGS FOR MIZ
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--
-- This file MUST be loaded AFTER missiletrainer.lua
--
-- These values are specific to the miz and will override the default values in missiletrainer.lua
--

-- Error prevention. Create empty container if module core lua not loaded.
if not MTRAINER then 
	_msg = "[JTF-1 MTRAINER] CORE FILE NOT LOADED!"
	BASE:E(_msg)
	MTRAINER = {}
end

-- these values will override those set in the core file
MTRAINER.safeZone = nil -- safezone to use, otherwise nil for entire map
MTRAINER.launchZone = nil -- launchzone to use, otherwise nil for entire map
MTRAINER.DefaultLaunchAlerts = false -- if true, disable launch alerts
MTRAINER.DefaultMissileDestruction = false -- 
MTRAINER.DefaultLaunchMarks = false -- if true, enable map marks for launched missiles
MTRAINER.ExplosionDistance = 300 -- distance from player at which to destroy incoming missiles
MTRAINER.useSRS = true -- module should use SRS for radio messages

-- Start the MTRAINER module
if MTRAINER.Start then
  MTRAINER:Start()
end


