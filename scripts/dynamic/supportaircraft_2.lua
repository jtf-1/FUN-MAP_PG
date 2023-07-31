-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- BEGIN SUPPORT AIRCRAFT SECTION
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--- table of support aircraft to be spawned
SUPPORTAC = {}

SUPPORTAC.templates = {
    TankerBoom = "kc-135_template",
    TankerProbe = "kc-135mprs_template",
    AwacsE3 = "awacs-e3_template",
}

SUPPORTAC.defaults = {}

SUPPORTAC.missions = {
  {
    type = "TankerBoom",
    zone = "AAR_1",
    callsign = CALLSIGN.Tanker.Arco,
    number = 1,
    tacan = 35,
    radio = 276.5,
    flightlevel = 160,
    speed = 300, -- IAS. groundspeed will be calculated by adding the flightlevel/2 eg 300+(160/2) = 380
    heading = 90, -- outbound leg degrees
    leg = 40, -- leg length in NM
  },
  {
    type = "TankerBoom",
    zone = "AAR_2",
    callsign = CALLSIGN.Tanker.Arco,
    number = 2,
    tacan = 36,
    radio = 276.6,
    flightlevel = 160,
    speed = 30, -- IAS. groundspeed will be calculated by adding the flightlevel eg 300+160 = 460
    heading = 90, -- outbound leg degrees
    leg = 40, -- leg length in NM
  },
  {
    type = "TankerBoom",
    zone = "AAR_3",
    callsign = CALLSIGN.Tanker.Arco,
    number = 3,
    tacan = 37,
    radio = 276.7,
    flightlevel = 160,
    speed = 300, -- IAS. groundspeed will be calculated by adding the flightlevel eg 300+160 = 460
    heading = 320, -- outbound leg degrees
    leg = 40, -- leg length in NM
  },
  {
    type = "TankerBoom",
    zone = "AAR_4",
    callsign = CALLSIGN.Tanker.Arco,
    number = 4,
    tacan = 118,
    radio = 317.8,
    flightlevel = 200,
    speed = 300, -- IAS. groundspeed will be calculated by adding the flightlevel eg 300+160 = 460
    heading = 90, -- outbound leg degrees
    leg = 40, -- leg length in NM
  },
  {
    type = "TankerProbe",
    zone = "AAR_1",
    callsign = CALLSIGN.Tanker.Shell,
    number = 1,
    tacan = 115,
    radio = 317.5,
    flightlevel = 200,
    speed = 300, -- IAS. groundspeed will be calculated by adding the flightlevel eg 300+160 = 460
    heading = 90, -- outbound leg degrees
    leg = 40, -- leg length in NM
  },
  {
    type = "TankerProbe",
    zone = "AAR_2",
    callsign = CALLSIGN.Tanker.Shell,
    number = 2,
    tacan = 116,
    radio = 317.6,
    flightlevel = 200,
    speed = 300, -- IAS. groundspeed will be calculated by adding the flightlevel eg 300+160 = 460
    heading = 90, -- outbound leg degrees
    leg = 40, -- leg length in NM
  },
  {
    type = "TankerProbe",
    zone = "AAR_3",
    callsign = CALLSIGN.Tanker.Shell,
    number = 3,
    tacan = 117,
    radio = 317.7,
    flightlevel = 200,
    speed = 300, -- IAS. groundspeed will be calculated by adding the flightlevel eg 300+160 = 460
    heading = 320, -- outbound leg degrees
    leg = 40, -- leg length in NM
  },
  {
    type = "TankerProbe",
    zone = "AAR_4",
    callsign = CALLSIGN.Tanker.Shell,
    number = 4,
    tacan = 119,
    radio = 317.9,
    flightlevel = 200,
    speed = 300, -- IAS. groundspeed will be calculated by adding the flightlevel eg 300+160 = 460
    heading = 90, -- outbound leg degrees
    leg = 40, -- leg length in NM
  },
  {
    type = "TankerBoom",
    zone = "AAR_1",
    callsign = CALLSIGN.Tanker.Texaco,
    number = 1,
    tacan = 105,
    radio = 317.55,
    flightlevel = 240,
    speed = 300, -- IAS. groundspeed will be calculated by adding the flightlevel eg 300+160 = 460
    heading = 90, -- outbound leg degrees
    leg = 40, -- leg length in NM
  },
  {
    type = "TankerBoom",
    zone = "AAR_2",
    callsign = CALLSIGN.Tanker.Texaco,
    number = 2,
    tacan = 106,
    radio = 317.65,
    flightlevel = 240,
    speed = 300, -- IAS. groundspeed will be calculated by adding the flightlevel eg 300+160 = 460
    heading = 270, -- outbound leg degrees
    leg = 40, -- leg length in NM
  },
  {
    type = "TankerBoom",
    zone = "AAR_3",
    callsign = CALLSIGN.Tanker.Texaco,
    number = 3,
    tacan = 107,
    radio = 317.75,
    flightlevel = 240,
    speed = 300, -- IAS. groundspeed will be calculated by adding the flightlevel eg 300+160 = 460
    heading = 320, -- outbound leg degrees
    leg = 40, -- leg length in NM
  },
  {
    type = "TankerBoom",
    zone = "AAR_4",
    callsign = CALLSIGN.Tanker.Texaco,
    number = 4,
    tacan = 120,
    radio = 317.95,
    flightlevel = 240,
    speed = 300, -- IAS. groundspeed will be calculated by adding the flightlevel eg 300+160 = 460
    heading = 90, -- outbound leg degrees
    leg = 40, -- leg length in NM
  },
  {
    type = "AwacsE3",
    zone = "AWACS_1_Zone",
    callsign = CALLSIGN.AWACS.Magic,
    number = 1,
    tacan = 29,
    radio = 282.025,
    flightlevel = 300,
    speed = 300, -- IAS. groundspeed will be calculated by adding the flightlevel eg 300+160 = 460
    heading = 308, -- outbound leg degrees
    leg = 60, -- leg length in NM
  },
}

--- table of support aircraft to be spawned
TableSpawnSupport = { -- {spawnobjectname, spawnzone}
  {
    spawnobject = "Tanker_KC135_Arco1", 
    spawnzone = "AAR_1"
  },
  {
    spawnobject = "Tanker_KC135_Arco2", 
    spawnzone = "AAR_2"
  },
  {
    spawnobject = "Tanker_KC135_Arco3", 
    spawnzone = "AAR_3"
  },
  {
    spawnobject = "Tanker_KC135_Arco4", 
    spawnzone = "AAR_4"
  },
  {
    spawnobject = "Tanker_KC135MPRS_Shell1", 
    spawnzone = "AAR_1"
  },
  {
    spawnobject = "Tanker_KC135MPRS_Shell2", 
    spawnzone = "AAR_2"
  },
  {
    spawnobject = "Tanker_KC135MPRS_Shell3", 
    spawnzone = "AAR_3"
  },
  {
    spawnobject = "Tanker_KC135MPRS_Shell4", 
    spawnzone = "AAR_4"
  },
  {
    spawnobject = "Tanker_KC135_Texaco1", 
    spawnzone = "AAR_1"
  },
  {
    spawnobject = "Tanker_KC135_Texaco2", 
    spawnzone = "AAR_2"
  },
  {
    spawnobject = "Tanker_KC135_Texaco3", 
    spawnzone = "AAR_3"
  },
  {
    spawnobject = "Tanker_KC135_Texaco4", 
    spawnzone = "AAR_4"
  },
  {
    spawnobject = "AWACS_Magic", 
    spawnzone = "AWACS_1_Zone"
  },
}

-- ## Spawn Support aircraft
-- Scheduled function on spawn to check for presence of the support aircraft in its spawn zone. Repeat check every 60 seconds. Respawn if ac has left zone. 
-- also respawn on engine shutdown if an airfield is within the support zone.
function SpawnSupport (SupportSpawn) -- spawnobject, spawnzone

  local SupportSpawnObject = SPAWN:New( SupportSpawn.spawnobject )
  SupportSpawnObject.Zone = ZONE:FindByName(SupportSpawn.spawnzone) and ZONE:FindByName(SupportSpawn.spawnzone) or ZONE:New(SupportSpawn.spawnzone)
  

  SupportSpawnObject:InitLimit( 1, 0 )
    :OnSpawnGroup(
      function ( SpawnGroup )
        local SpawnIndex = SupportSpawnObject:GetSpawnIndexFromGroup( SpawnGroup )
        local SpawnZone = SupportSpawnObject.Zone
        local CheckTanker = SCHEDULER:New( nil, 
          function()
            if SpawnGroup then
              if SpawnGroup:IsNotInZone(SpawnZone) then
                SupportSpawnObject:ReSpawn( SpawnIndex )
              end
            end
          end,
        {}, 0, 60 )
      end
    )
    :InitKeepUnitNames(true)
    :InitRepeatOnLanding()
    :Spawn()

end

--- spawn support aircraft
for i, v in ipairs( TableSpawnSupport ) do
  SpawnSupport ( v )
  
end

-- END SUPPORT AIRCRAFT SECTION
