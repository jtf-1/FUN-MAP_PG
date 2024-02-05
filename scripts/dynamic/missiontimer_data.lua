env.info( "[JTF-1] missiontimer_data" )
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- MISSION TIMER SETTINGS FOR MIZ
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--
-- This file MUST be loaded AFTER missiontimer.lua
--
-- These values are specific to the miz and will override the default values in MISSIONTIMER.default
--

-- Error prevention. Create empty container if module core lua not loaded.
if not MISSIONTIMER then 
	MISSIONTIMER = {}
	MISSIONTIMER.traceTitle = "[JTF-1 MISSIONTIMER] "
	_msg = MISSIONTIMER.traceTitle .. "CORE FILE NOT LOADED!"
	BASE:E(_msg)
end

-- table of values for timer shedule in this miz
MISSIONTIMER.durationHrs = 11 -- Mission run time in HOURS
-- MISSIONTIMER.msgSchedule = {60, 30, 10, 5} -- Schedule for mission restart warning messages prior to the mission restart. Time in minutes.
-- MISSIONTIMER.restartDelay =  4 -- time in minutes to delay restart if active clients are present.
-- MISSIONTIMER.useSRS = false -- set to false to disable use of SRS for this module in this miz

-- start the mission timer
if MISSIONTIMER.Start then
	_msg = MISSIONTIMER.traceTitle .. "Call Start()"
	BASE:T(_msg)
	MISSIONTIMER:Start()  
end
