env.info( "[JTF-1] adminmenu_data" )

--- MISSION ADMIN MENU SETTINGS FOR MIZ
--
-- This file MUST be loaded AFTER adminmenu.lua
--
-- These values are specific to the miz and will override the default values in ADMIN
--

-- Error prevention. Create empty container if module core lua not loaded.
if not ADMIN then 
	ADMIN = {}
	ADMIN.traceTitle = "[JTF-1 ADMIN] "
	_msg = ADMIN.traceTitle .. "CORE FILE NOT LOADED!"
	BASE:E(_msg)
end

-- table of values to override default ADMIN values for this miz
ADMIN.menuAllSlots = false
ADMIN.jtfmenu = false

-- start the mission timer
if ADMIN.Start then
	_msg = ADMIN.traceTitle .. "Call Start()"
	BASE:T(_msg)
	ADMIN:Start()  
end
