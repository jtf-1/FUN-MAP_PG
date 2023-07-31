--------------------------------------------
--- Support Aircraft Defined in this file
--------------------------------------------

-- **NOTE**: SUPPORTAIRCRAFT.LUA MUST BE LOADED BEFORE THIS FILE IS LOADED!

if not SUPPORTAC then -- Error prevention. Create empty container if SUPPORTAIRCRAFT.LUA is not loaded or has failed.
    SUPPORTAC = {}
end

SUPPORTAC.missions = {
    {
      name = "ARWK", -- text name for this support mission. Combined with this block's index and the mission type to define the group name on F10 map
      category = SUPPORTAC.categories.tanker, -- support mission category. Used to determine the auftrag type. Options are listed in SUPPORTAC.categories
      type = SUPPORTAC.type.tankerBoom, -- type defines the spawn template that will be used
      zone = "ARWK", -- ME zone that defines the start waypoint for the spawned aircraft
      callsign = CALLSIGN.Tanker.Arco, -- callsign under which the aircraft will operate
      callsignNumber = 1, -- primary callsign number that will be used for the aircraft
      tacan = 35, -- TACAN channel the ac will use
      tacanid = "ARC", -- TACAN ID the ac will use. Also used for the morse ID
      radio = 276.5, -- freq the ac will use when on mission
      flightLevel = 160, -- flight level at which to spwqan aircraft and at which track will be flown
      speed = 315, -- IAS when on mission
      heading = 94, -- mission outbound leg in degrees
      leg = 40, -- mission leg length in NM
      fuelLowThreshold = SUPPORTAC.defaults.fuelLowThreshold, -- lowest fuel threshold at which RTB is triggered
    },
    {
      name = "ARWK",
      category = SUPPORTAC.categories.tanker,
      type = SUPPORTAC.type.tankerProbe,
      zone = "ARWK",
      callsign = CALLSIGN.Tanker.Shell,
      callsignNumber = 1,
      tacan = 115,
      tacanid = "SHL",
      radio = 317.5,
      flightLevel = 215,
      speed = 315,
      heading = 94,
      leg = 40,
      fuelLowThreshold = SUPPORTAC.defaults.fuelLowThreshold,
    },
    {
      name = "ARWK",
      category = SUPPORTAC.categories.tanker,
      type = SUPPORTAC.type.tankerBoom,
      zone = "ARWK",
      callsign = CALLSIGN.Tanker.Texaco,
      callsignNumber = 1,
      tacan = 105,
      tacanid = "TEX",
      radio = 317.55,
      flightLevel = 240,
      speed = 315,
      heading = 94,
      leg = 40,
      fuelLowThreshold = SUPPORTAC.defaults.fuelLowThreshold,
    },
    {
      name = "ARXKYK",
      category = SUPPORTAC.categories.tanker,
      type = SUPPORTAC.type.tankerBoom,
      zone = "ARXKYK",
      callsign = CALLSIGN.Tanker.Arco,
      callsignNumber = 4,
      tacan = 118,
      tacanid = "ARC",
      radio = 317.8,
      flightLevel = 160,
      speed = 315,
      heading = 94,
      leg = 40,
      fuelLowThreshold = SUPPORTAC.defaults.fuelLowThreshold,
    },
    {
      name = "ARXKYK",
      category = SUPPORTAC.categories.tanker,
      type = SUPPORTAC.type.tankerProbe,
      zone = "ARXKYK",
      callsign = CALLSIGN.Tanker.Shell,
      callsignNumber = 4,
      tacan = 119,
      tacanid = "SHL",
      radio = 317.9,
      flightLevel = 215,
      speed = 315,
      heading = 94,
      leg = 40,
      fuelLowThreshold = SUPPORTAC.defaults.fuelLowThreshold,
    },
    {
      name = "ARXKYK",
      category = SUPPORTAC.categories.tanker,
      type = SUPPORTAC.type.tankerBoom,
      zone = "ARXKYK",
      callsign = CALLSIGN.Tanker.Texaco,
      callsignNumber = 4,
      tacan = 120,
      tacanid = "TEX",
      radio = 317.95,
      flightLevel = 240,
      speed = 315,
      heading = 94,
      leg = 40,
      fuelLowThreshold = SUPPORTAC.defaults.fuelLowThreshold,
    },
    {
      name = "ARYHBN",
      category = SUPPORTAC.categories.tanker,
      type = SUPPORTAC.type.tankerBoom,
      zone = "ARYHBN",
      callsign = CALLSIGN.Tanker.Arco,
      callsignNumber = 2,
      tacan = 36,
      tacanid = "ARC",
      radio = 276.6,
      flightLevel = 160,
      speed = 315,
      heading = 276,
      leg = 40,
      fuelLowThreshold = SUPPORTAC.defaults.fuelLowThreshold,
    },
    {
      name = "ARYHBN",
      category = SUPPORTAC.categories.tanker,
      type = SUPPORTAC.type.tankerProbe,
      zone = "ARYHBN",
      callsign = CALLSIGN.Tanker.Shell,
      callsignNumber = 2,
      tacan = 116,
      tacanid = "SHL",
      radio = 317.6,
      flightLevel = 215,
      speed = 315,
      heading = 276,
      leg = 40,
      fuelLowThreshold = SUPPORTAC.defaults.fuelLowThreshold,
    },
    {
      name = "ARYHBN",
      category = SUPPORTAC.categories.tanker,
      type = SUPPORTAC.type.tankerBoom,
      zone = "ARYHBN",
      callsign = CALLSIGN.Tanker.Texaco,
      callsignNumber = 2,
      tacan = 106,
      tacanid = "TEX",
      radio = 317.65,
      flightLevel = 240,
      speed = 315,
      heading = 276,
      leg = 40,
      fuelLowThreshold = SUPPORTAC.defaults.fuelLowThreshold,
    },
    {
      name = "ARDP",
      category = SUPPORTAC.categories.tanker,
      type = SUPPORTAC.type.tankerBoom,
      zone = "ARDP",
      callsign = CALLSIGN.Tanker.Arco,
      callsignNumber = 3,
      tacan = 37,
      tacanid = "ARC",
      radio = 276.7,
      flightLevel = 160,
      speed = 315,
      heading = 324,
      leg = 40,
      fuelLowThreshold = SUPPORTAC.defaults.fuelLowThreshold,
    },
    {
      name = "ARDP",
      category = SUPPORTAC.categories.tanker,
      type = SUPPORTAC.type.tankerProbe,
      zone = "ARDP",
      callsign = CALLSIGN.Tanker.Shell,
      callsignNumber = 3,
      tacan = 117,
      tacanid = "SHL",
      radio = 317.7,
      flightLevel = 215,
      speed = 315,
      heading = 324,
      leg = 40,
      fuelLowThreshold = SUPPORTAC.defaults.fuelLowThreshold,
    },
    {
      name = "ARDP",
      category = SUPPORTAC.categories.tanker,
      type = SUPPORTAC.type.tankerProbe,
      zone = "ARDP",
      callsign = CALLSIGN.Tanker.Texaco,
      callsignNumber = 3,
      tacan = 107,
      tacanid = "TEX",
      radio = 317.75,
      flightLevel = 240,
      speed = 315,
      heading = 324,
      leg = 40,
      fuelLowThreshold = SUPPORTAC.defaults.fuelLowThreshold,
    },
    {
      name = "AWACSWKYJ",
      category = SUPPORTAC.categories.awacs,
      type = SUPPORTAC.type.awacsE3a,
      zone = "AWACSWKYJ",
      callsign = CALLSIGN.AWACS.Magic,
      callsignNumber = 1,
      tacan = nil,
      tacanid = nil,
      radio = 282.025,
      flightLevel = 300,
      speed = 400,
      heading = 123,
      leg = SUPPORTAC.defaults.awacsLeg,
      activateDelay = 0,
      despawnDelay = 0,
      fuelLowThreshold = SUPPORTAC.defaults.fuelLowThreshold,
    },
}

-- call the function that initialises the SUPPORTAC module
if SUPPORTAC.StartSupport == nil then
    SUPPORTAC:StartSupport()
else
    _msg = "[SUPPORTAC] function StartSupport() is nil!"
    BASE:E(_msg)
end
