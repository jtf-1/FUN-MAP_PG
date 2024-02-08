env.info( "[JTF-1] cvncontrol_data" )

--- MISSION JTF1 MENU SETTINGS FOR MIZ
--
-- This file MUST be loaded AFTER JTF1menu.lua
--
-- These values are specific to the miz and will override the default values in JTF1
--

-- Error prevention. Create empty container if module core lua not loaded.
if not CVNCONTROL then 
	CVNCONTROL = {}
	CVNCONTROL.traceTitle = "[JTF-1 CVNCONTROL] "
	_msg = CVNCONTROL.traceTitle .. "CORE FILE NOT LOADED!"
	BASE:E(_msg)
end

--CVNCONTROL.markWaypoints = true -- if true, mark waypoints in F10 map. Dfault is false.

-- table of Carriers
CVNCONTROL.cvn = {
	{
		name = "CVN72", -- identifier for this CVN
		group = "JTF-1_CVN72", -- name of the GROUP in the ME
		unit = "JTF-1_CVN72", -- name of the carrier unit in the GROUP
		menutext = "CVN-72 Lincoln",-- text used for the carrier's control menu
		deckoffset = -4, -- deck offset from boat heading
        uturn = false, -- whether boat should return to the position it was in prior to the recover/launch request
		recoveryspeed = 30, -- wind speed over the deck dunring recovery
		tacan = 72, -- boat TACAN channel
		tacanid = "ABE", -- TACAN morse ID
		icls = 4,-- ICLS channel
		iclsid = "ABE", -- ICLS morse ID
		radio = 274.075, -- AI ATC freq
		radiomodulation = radio.modulation.AM, -- AI ATC freq modulation [radio.modulation.AM/FM]
		cruise = 11, -- speed at which boat should steam when not on launch/recovery
		tanker = true, -- if a Hawk tanker should be spawned
		tankertemplate = nil, -- name of GROUP template to be used. If nil, use the built-in template (default nil)
		tankercallsign = CALLSIGN.Tanker.Texaco, -- Hawk tanker callsign [CALLSIGN.Tanker.Texaco/Shell/Arco]
		tankercallsignnumber = 6, -- hawk tanker callsign number
		tankertacan = 38, -- hawk tanker TACAN channel
		tankertacanid = "TEX", -- hawk tanker TACAN morse ID
		tankerradio = 317.775, -- hawk tanker radio freq
		flagsetlights = 6672, -- mission trigger flag for setting carrier light mode
	},
	{
		name = "LHA1", -- identifier for this CVN
		group = "CSG_CarrierGrp_Tarawa", -- name of the GROUP in the ME
		unit = "CSG_CarrierGrp_Tarawa", -- name of the carrier unit in the GROUP
		menutext = "LHA-1 Tarawa",-- text used for the carrier's control menu
		deckoffset = 0, -- deck offset from boat heading
        uturn = false, -- whether boat should return to the position it was in prior to the recover/launch request
		recoveryspeed = 20, -- wind speed over the deck dunring recovery
		tacan = 1, -- boat TACAN channel
		tacanid = "TAR", -- TACAN morse ID
		icls = 1,-- ICLS channel
		iclsid = "TAR", -- ICLS morse ID
		radio = 255.725, -- AI ATC freq
		radiomodulation = radio.modulation.AM, -- AI ATC freq modulation [radio.modulation.AM/FM]
		cruise = 11, -- speed at which boat should steam when not on launch/recovery
		tanker = true, -- if a Hawk tanker should be spawned
		tankertemplate = nil, -- name of GROUP template to be used. If nil, use the built-in template (default nil)
		tankercallsign = CALLSIGN.Tanker.Arco, -- Hawk tanker callsign [CALLSIGN.Tanker.Texaco/Shell/Arco]
		tankercallsignnumber = 2, -- hawk tanker callsign number
		tankertacan = 39, -- hawk tanker TACAN channel
		tankertacanid = "ARC", -- hawk tanker TACAN morse ID
		tankerradio = 278.325, -- hawk tanker radio freq
		flagsetlights = 6601, -- mission trigger flag for setting carrier light mode
	},
}

-- start the mission timer
if CVNCONTROL.Start then
	_msg = CVNCONTROL.traceTitle .. "Call Start()"
	BASE:T(_msg)
	CVNCONTROL:Start()
end
