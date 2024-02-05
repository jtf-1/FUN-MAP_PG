env.info( "[JTF-1] mission_init_data.lua" )

--- MISSION JTF1 SETTINGS FOR MIZ
--
-- This file MUST be loaded AFTER mission_init.lua
--
-- These values are specific to the miz and will override the default values in JTF1
--

-- Error prevention. Create empty container if module core lua not loaded.
if not JTF1 then 
	JTF1 = {}
	JTF1.traceTitle = "[JTF-1 MISSIONINIT] "
	_msg = JTF1.traceTitle .. "CORE FILE NOT LOADED!"
	BASE:E(_msg)
end

-- table of values to override default JTF1 values for this miz
JTF1.menuAllSlots = false
JTF1.jtfmenu = false

-- start the mission timer
if JTF1.Start then
	_msg = JTF1.traceTitle .. "Call Start()"
	BASE:T(_msg)
	JTF1:Start()  
end
