--------------------------------------------
--- Support Aircraft Defined in this file
--------------------------------------------

-- **NOTE**: SUPPORTAIRCRAFT.LUA MUST BE LOADED BEFORE THIS FILE IS LOADED!

-- This file contains the config data specific to the miz in which it will be used.
-- All functions and key values are in SUPPORTAIRCRAFT.LUA, which should be loaded first
-- supportaircraft_data.lua 

-- Error prevention. Create empty container if SUPPORTAIRCRAFT.LUA is not loaded or has failed.
if not SUPPORTAC then 
    SUPPORTAC = {}
end

-- default values to be used if not specified in the flight's mission data block
SUPPORTAC.default = {
  radio = 251, -- default radio freq the ac will use when not on mission
  activateDelay = 10, -- delay, in seconds, after the previous ac has despawned before the new ac will be activated 
  despawnDelay = 60, -- delay, in seconds, before the old ac will be despawned
  tankerLeg = 50, -- default tanker racetrack leg length
  awacsLeg = 70, -- default awacs racetrack leg length
  fuelLowThreshold = 30, -- default % fuel low level to trigger RTB
  spawnDistance = 5, -- default distance in NM from the mission zone at which to spawn aircraft
  heading = 90, --default heading on which to spawn aircraft
}

-- Support categories used to define which AUFTRAG type is used
SUPPORTAC.categories = {
  tanker = 1,
  awacs = 2,
}

-- Support aircraft types. Used to define the late activated group to be used as the spawn template
-- for the type. A check is made to ensure the template exists in the miz
SUPPORTAC.type = {
  tankerBoom = "KC-135", -- template to be used for trype = "tankerBoom"
  tankerProbe = "KC-135MPRS", -- template to be used for type = "tankerProbe"
  tankerProbeC130 = "KC-130", -- template for type = "tankerProbeC130"
  tankerProbeC130J = "KC-130J", -- template for type = "tankerProbeC130J"
  awacsE3a = "AWACS-E3A", -- template to be used for type = "awacsE3a"
}

-- Support aircraft missions. Each mission block defines a support aircraft mission. Each block is processed
-- and an aircraft will be spawned for the mission. When the mission is cancelled, eg after RTB or if it is destroyed,
-- a new aircraft will be spawned and a fresh AUFTRAG created.
SUPPORTAC.missions = {
    -- {
    --   name = "ARWK", -- text name for this support mission. Combined with this block's index and the mission type to define the group name on F10 map
    --   category = SUPPORTAC.categories.tanker, -- support mission category. Used to determine the auftrag type. Options are listed in SUPPORTAC.categories
    --   type = SUPPORTAC.type.tankerBoom, -- type defines the spawn template that will be used
    --   zone = "ARWK", -- ME zone that defines the start waypoint for the spawned aircraft
    --   callsign = CALLSIGN.Tanker.Arco, -- callsign under which the aircraft will operate
    --   callsignNumber = 1, -- primary callsign number that will be used for the aircraft
    --   tacan = 35, -- TACAN channel the ac will use
    --   tacanid = "ARC", -- TACAN ID the ac will use. Also used for the morse ID
    --   radio = 276.5, -- freq the ac will use when on mission
    --   flightLevel = 160, -- flight level at which to spwqan aircraft and at which track will be flown
    --   speed = 315, -- IAS when on mission
    --   heading = 94, -- mission outbound leg in degrees
    --   leg = 40, -- mission leg length in NM
    --   --fuelLowThreshold = 30, -- lowest fuel threshold at which RTB is triggered
    -- },
    {
      name = "ARWK", -- TANKER
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
      --fuelLowThreshold = 30,
    },
    {
      name = "ARWK", -- TANKER
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
      --fuelLowThreshold = 30,
    },
    -- {
    --   name = "ARXKYK", -- TANKER
    --   category = SUPPORTAC.categories.tanker,
    --   type = SUPPORTAC.type.tankerBoom,
    --   zone = "ARXKYK",
    --   callsign = CALLSIGN.Tanker.Arco,
    --   callsignNumber = 4,
    --   tacan = 118,
    --   tacanid = "ARC",
    --   radio = 317.8,
    --   flightLevel = 160,
    --   speed = 315,
    --   heading = 94,
    --   leg = 40,
    --   fuelLowThreshold = 0,
    -- },
    {
      name = "ARXKYK", -- TANKER
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
      --fuelLowThreshold = 30,
    },
    {
      name = "ARXKYK", -- TANKER
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
      --fuelLowThreshold = 30,
    },
    -- {
    --   name = "ARYHBN", -- TANKER
    --   category = SUPPORTAC.categories.tanker,
    --   type = SUPPORTAC.type.tankerBoom,
    --   zone = "ARYHBN",
    --   callsign = CALLSIGN.Tanker.Arco,
    --   callsignNumber = 2,
    --   tacan = 36,
    --   tacanid = "ARC",
    --   radio = 276.6,
    --   flightLevel = 160,
    --   speed = 315,
    --   heading = 94,
    --   leg = 40,
    --   --fuelLowThreshold = 30,
    -- },
    {
      name = "ARYHBN", -- TANKER
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
      heading = 94,
      leg = 40,
      --fuelLowThreshold = 30,
    },
    {
      name = "ARYHBN", -- TANKER
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
      heading = 94,
      leg = 40,
      --fuelLowThreshold = 30,
    },
    -- {
    --   name = "ARDP", -- TANKER
    --   category = SUPPORTAC.categories.tanker,
    --   type = SUPPORTAC.type.tankerBoom,
    --   zone = "ARDP",
    --   callsign = CALLSIGN.Tanker.Arco,
    --   callsignNumber = 3,
    --   tacan = 37,
    --   tacanid = "ARC",
    --   radio = 276.7,
    --   flightLevel = 160,
    --   speed = 315,
    --   heading = 324,
    --   leg = 40,
    --   --fuelLowThreshold = 30,
    -- },
    {
      name = "ARDP", -- TANKER
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
      --fuelLowThreshold = 30,
    },
    {
      name = "ARDP", -- TANKER
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
      --fuelLowThreshold = 30,
    },
    {
      name = "AWACSWKYJ", -- AWACS
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
      leg = SUPPORTAC.default.awacsLeg,
      activateDelay = 0,
      despawnDelay = 0,
      --fuelLowThreshold = 30,
    },
}

-- call the function that initialises the SUPPORTAC module
if SUPPORTAC.Start ~= nil then
    SUPPORTAC:Start()
else
    _msg = "[SUPPORTAC] function SUPPORTAC.Start() is missing!"
    BASE:E(_msg)
end
