env.info( '*** JTF-1 Fun Map MOOSE script ***' )
env.info( "*** JTF-1 COMMIT DATE: 2019-09-05T15:00 ***" )
env.info( '*** JTF-1 MOOSE MISSION SCRIPT START ***' )


-- XXX BEGIN MENU DEFINITIONS

-- ## CAP CONTROL
local EnemyCAPS = MENU_COALITION:New( coalition.side.BLUE, "ENEMY CAP CONTROL" )
  local CAP_Shiraz = MENU_COALITION:New( coalition.side.BLUE, "SHIRAZ", EnemyCAPS )
  local CAP_Lar = MENU_COALITION:New( coalition.side.BLUE, "LAR AB", EnemyCAPS )
  local CAP_BandarA = MENU_COALITION:New( coalition.side.BLUE, "BANDAR ABBAS", EnemyCAPS )

-- ## GROUND ATTACK MISSIONS
local MenuCoalitionTopLevel = MENU_COALITION:New( coalition.side.BLUE, "GROUND ATTACK MISSIONS" )
  local MenuBandarL = MENU_COALITION:New( coalition.side.BLUE, "BANDAR LENGEH/LAR", MenuCoalitionTopLevel )
  local MenuKerman = MENU_COALITION:New( coalition.side.BLUE, "KERMAN", MenuCoalitionTopLevel )
  local MenuShiraz = MENU_COALITION:New( coalition.side.BLUE, "SHIRAZ", MenuCoalitionTopLevel )

local MenuCoalitionBlue = MENU_COALITION:New(coalition.side.BLUE,"SHIP STRIKE")


-- XXX BEGIN FUNCTIONS SECTION

-- ## Spawn Support aircraft
-- Scheduled function on spawn to check for presence of the support aircraft in its spawn zone. Repeat check every 60 seconds. Respawn if ac has left zone. 
-- also respawn on engine shutdown if an airfield is within the support zone.
function SpawnSupport (SupportSpawn) -- spawnobject, spawnzone

  --local SupportSpawn = _args[1]
  local SupportSpawnObject = SPAWN:New( SupportSpawn.spawnobject )

  SupportSpawnObject:InitLimit( 1, 50 )
    :OnSpawnGroup(
      function ( SpawnGroup )
        local SpawnIndex = SupportSpawnObject:GetSpawnIndexFromGroup( SpawnGroup )
        local CheckTanker = SCHEDULER:New( nil, 
        function()
          if SpawnGroup:IsNotInZone( SupportSpawn.spawnzone ) then
            SupportSpawnObject:ReSpawn( SpawnIndex )
          end
        end,
        {}, 0, 60 )
      end
    )
    :InitRepeatOnEngineShutDown()
    :Spawn()


end -- function

-- XXX Spawn Anti-Ship Strike

function SpwnShipStrike ()

  SpwnAntiShipStrike_1 = SPAWN:New("AntiShipStrike_1")
  SpwnAntiShipStrike_2 = SPAWN:New("AntiShipStrike_2")
  SpwnAntiShipStrike_3 = SPAWN:New("AntiShipStrike_3")
  
  Rand_AntiShipStrike = math.random (3) --random selection
  
  
  if Rand_AntiShipStrike == 1 then SpwnAntiShipStrike_1:Spawn() MessageShipStrike = MESSAGE:New("Su-24's departed Bandar Abbass loaded with anti-ship missiles. Intelligence suggests their target is the Tarawa!"):ToCoalition(coalition.side.BLUE) end
  if Rand_AntiShipStrike == 2 then SpwnAntiShipStrike_2:Spawn() MessageShipStrike = MESSAGE:New("Su-24's Shiraz International Airport loaded with anti-ship missiles. Intel suggests target is the Tarawa!"):ToCoalition(coalition.side.BLUE)  end
  if Rand_AntiShipStrike == 3 then SpwnAntiShipStrike_3:Spawn() MessageShipStrike = MESSAGE:New("Su-24's Shiraz International Airport loaded with anti-ship missiles. Intel suggests target is the Stennis!"):ToCoalition(coalition.side.BLUE) end
  
  MenuSpawnAntiShipStrike:Remove()
  Menu_destroyAntiShipStrike = MENU_COALITION_COMMAND:New(coalition.side.BLUE,"Destroy Anti-Ship Strike", MenuCoalitionBlue, destroyAntiShipStrike)

end -- function

-- XXX Destroy Anti-Ship strike

function destroyAntiShipStrike (AntiShipStrike_1)
  local AntiShipStrike_1, Index = SpwnAntiShipStrike_1:GetFirstAliveGroup()
  while AntiShipStrike_1 ~= nil do
    AntiShipStrike_1:Destroy()
    AntiShipStrike_1, Index = SpwnAntiShipStrike_1:GetNextAliveGroup(Index)
    Menu_destroyAntiShipStrike:Remove()
    MenuSpawnAntiShipStrike = MENU_COALITION_COMMAND:New(coalition.side.BLUE,"Spawn Anti-Ship Strike",MenuCoalitionBlue, SpwnShipStrike)
    end
end -- function

-- XXX Spawn CAP aircraft

function SpawnCAP( _args )

    _args[2]:InitRandomizeTemplate(_args[3])
    _args[2]:InitRandomizeZones(_args[1])
    _args[2]:InitRandomizeRoute(1,4,10000)
    _args[2]:Spawn()
end --function

-- XXX PERPETUAL TARGETS ON THE NORTHEASTERN HALF OF QESHM ISLAND
function QeshmIslandHot()

  local qeshmpoly1 = ZONE_POLYGON:New("qeshmpoly1", GROUP:FindByName("qeshmpoly1"))
  local qeshmzones = {qeshmpoly1}

  local qeshmtemplatesarmor = {"armor1",
    "armor2",
    "armor3",
    "armor4",
    "armor5",
    "armor6"
    }

  local qeshmtemplatesad = {"ad1",
    "ad2",
    "ad4",
    "ad1",
    "ad2",
    "ad3",
    "ad4",
    "ad1",
    "ad2",
    "ad5",
    "ad6",
    "armor1",
    "armor2",
    "armor3",
    "armor4",
    "armor5",
    "armor6"
    } --weighted table
  --ad5 = sa15 Tor
  --ad6 = sa19 tunguska
  -----
  battlebuddy = SPAWN:New( "spawnstub2" )
    :InitRandomizeTemplate(qeshmtemplatesad)
    :InitHeading(1,359)

  stationaries = SPAWN:New( "spawnstub1" )
    :InitRandomizeZones(qeshmzones)
    :InitLimit( 20, 3000 )
    :InitHeading(1,359)
    :InitRandomizeTemplate( qeshmtemplatesarmor )
    :OnSpawnGroup(  
      function (SpawnGroup)
        ZonePosition = SpawnGroup --IN THREES
        Zonegroup = ZONE_GROUP:New("SpawnGroup",SpawnGroup,5)
        local ZonePointVec2 = Zonegroup:GetPointVec2()
        local distance = math.random(8,15)
        local ZoneVec2 = Zonegroup:GetVec2()    
          x = ZonePointVec2:GetLat() - distance
          y = ZonePointVec2:GetLon() - distance
          battlebuddy:SpawnFromPointVec2( POINT_VEC2:New( x,y )) --bottom
          local distance2 = math.random(14,19)
          x = ZonePointVec2:GetLat() - distance2
          y = ZonePointVec2:GetLon() + distance2
          battlebuddy:SpawnFromPointVec2( POINT_VEC2:New( x,y )) --bottom
      end)
    :SpawnScheduled(60,1)

end --function

-- XXX GENERIC FUNCTION THAT CAN BE CALLED TO SPAWN ENEMY POSITIONS ANYWHERE
function SpawnCamps(_args) --args is a table containing two tables

  local zonetable = _args[1] 
  local camptemps = _args[2]

  SpawnTent = SPAWNSTATIC:NewFromStatic( "tent2", country.id.IRAN )
  
   SpawnHouse1 = SPAWNSTATIC:NewFromStatic( "house1", country.id.IRAN )
   SpawnHouse2 = SPAWNSTATIC:NewFromStatic( "house2", country.id.IRAN )
   SpawnHouse3 = SPAWNSTATIC:NewFromStatic( "house3", country.id.IRAN )
   SpawnHouse4 = SPAWNSTATIC:NewFromStatic( "house4", country.id.IRAN )
   SpawnHouse5 = SPAWNSTATIC:NewFromStatic( "house5", country.id.IRAN )  
  
  local spawnhouse = {SpawnHouse1,SpawnHouse2,SpawnHouse3,SpawnHouse4}
  
  SpawnTower = SPAWN:New( "tower" )

  local EnemyInf = SPAWN:New("inf")

  local infsingle = SPAWN:New("infsingle")
 
  local campheavy = SPAWN:New("campheavy")
  :InitRandomizeTemplate(camptemps)
  :InitRandomizeZones(zonetable)
  :InitHeading(1,359)
  :OnSpawnGroup(
   function( SpawnGroup )
  local ZonePointVec2 = SpawnGroup:GetPointVec2()
    --towers
   for Heading = 0, 360,90 do
    local randheading = math.random(1,90)
    local Radial = Heading * ( math.pi*2 ) / 360
    local x = ZonePointVec2:GetLat() + math.cos( Radial ) * 87
    local y = ZonePointVec2:GetLon() + math.sin( Radial ) * 97
    SpawnTower:SpawnFromPointVec2( POINT_VEC2:New( x, y ), Heading + randheading )
   end
   --outer ring
   for Heading = 0, 270,30 do
    local randheading = math.random(1,90)
    local Radial = Heading * ( math.pi*2 ) / 360
    local x = ZonePointVec2:GetLat() + math.cos( Radial ) * 77
    local y = ZonePointVec2:GetLon() + math.sin( Radial ) * 77
    SpawnTent:SpawnFromPointVec2( POINT_VEC2:New( x, y ), Heading + randheading )
   end
   
   --inner ring
   for Heading = 60, 300,50 do
    local randdistance = math.random(45,60)
    local Radial = Heading * ( math.pi*2 ) / 360
    local x = ZonePointVec2:GetLat() + math.cos( Radial ) * randdistance
    local y = ZonePointVec2:GetLon() + math.sin( Radial ) * randdistance
    local house = spawnhouse[math.random(#spawnhouse)]
    house:SpawnFromPointVec2( POINT_VEC2:New( x, y ), Heading + randdistance )
    
   end

      EnemyCampZone = ZONE_UNIT:New("bgzone", SpawnGroup, 59)
     
     for i=1,5 do 
      einf1 = infsingle:SpawnInZone(EnemyCampZone,true)
     end

   end)
  
  for i=1,3 do
    camps = campheavy:Spawn()
  end
  
  local count = 0
  for i in pairs(zonetable) do count = count + 1 end
      --MESSAGE:New("count = " .. count .. "" ,245,""):ToAll()
  
  if count == 7 then --Stennis/Bandar
      MESSAGE:New("ENEMY CAMPS ARE LOCATED OFF THE COAST, IN GRID SQUARES 40 R CQ05 & CQ15, EAST OF BANDAR LENGEH" ,60,""):ToAll()
  end

  if count == 8 then --Kerman
      MESSAGE:New("ENEMY CAMPS ARE LOCATED NE OF KERMAN IN GRID 40 R EU 17",60 ,""):ToAll()
  end

      --errbody ;-D
      MESSAGE:New("LOCATE AND DESTROY THESE HEAVILY ARMED FACILITIES.  THREATS CAN INCLUDE INFANTRY, HEAVY MG, RPG, I/R SAM, LIGHT ARMOR, AAA" ,60,""):ToAll()
      
end --function

-- XXX TakurGhar Mission
function TakurGhar()

  local tgpoly1 = ZONE_POLYGON:New("tgpoly1", GROUP:FindByName("tgpoly1"))
  
  local bunkerzones = {tgpoly1}

  local tgmanpad = SPAWN:New("tgmanpad")
  :InitRandomizeZones(bunkerzones)
  --:InitRandomizeRoute(1,6,150)
  tgmanpadspawn = nil
   for i=1,4 do
    tgmanpad:Spawn()
   end

  local DSHK = SPAWN:New("DSHK")
  :InitRandomizeZones(bunkerzones)
  :InitHeading(180,359)
   for i=1,4 do
    DSHK:Spawn()
   end

  local tgbunker = SPAWN:New("tgbunker")
  :InitRandomizeZones(bunkerzones)
  :InitHeading(180,359)
   for i=1,4 do
    tgbunker:Spawn()
   end

  local tgaaa = SPAWN:New("tgaaa")
  :InitRandomizeZones(bunkerzones)
  :InitHeading(180,359)
  tgaaa:Spawn()
  tgaaa:Spawn()
  
  local nswteam = SPAWN:New("nswteam"):Spawn()
    
  local msg = "CH-47 HAS CRASHED ON TAKUR GHAR MOUNTAIN. TROOPS IN CONTACT\n"
    .. "MGRS: 40 EU 402 749\n"
    .. "LL: N 30 30 32 | E 057 25 15\n"
    .. "ALTITUDE 12,000ft\n"
    .. "TEAM IS IN COVER BEHIND A HILL WEST OF THE PEAK\n"
    .. "HEAVY FIRE FROM HARDENED BUNKERS ON THE PEAK, ALSO AAA POSSIBLE\n"
    .. "NUMEROUS INFANTRY INCLUDING MANPADS, AAA\n"
    .. "DESTROY THE ENEMY AND BUNKERS"
  MESSAGE:New(msg, 60, ""):ToAll()
    
end --function

-- XXX POPULATE LAVAN ISLAND WITH A MIX OF THREATS
function LavanIsland ()

  local lavanpoly1 = ZONE_POLYGON:New("lavan1poly", GROUP:FindByName("lavan1poly"))
  local lavanpoly2 = ZONE_POLYGON:New("lavan2poly", GROUP:FindByName("lavan2poly"))
  local lavanpoly3 = ZONE_POLYGON:New("lavan3poly", GROUP:FindByName("lavan3poly"))
  local lavan4 = ZONE:New("lavan4")

  local lavanzones = {lavanpoly1, lavanpoly2, lavanpoly3, lavan4}

  local lavanconvoy1 = SPAWN:New("lavanpatrol1")
  :InitRandomizeRoute(0,7,400)
  :Spawn()
  local lavanconvoy2 = SPAWN:New("lavanpatrol2")
  :InitRandomizeRoute(0,7,400)
  :Spawn()
  

  local lavantable = {"lavan4","lavan1","lavan2","lavan3","lavan5","lavan6","lavan1","lavan2","lavan3","lavan5","lavan6",}

  local lavandefense = SPAWN:New("lavan1")
  :InitRandomizeZones(lavanzones)
  :InitRandomizeTemplate(lavantable)
  :InitHeading(1,359)
  :InitLimit(10,10)
  :SpawnScheduled(2,1)


  local msg = "LAVAN ISLAND IS DEFENDED BY POSSIBLE SAM, APCs AND AAA GUNS.\n"
    .. "ENEMY IS CONCENTRATED AROUND THE AIRFIELD AND REFINERY BUT COULD BE ELSEWHERE ON THE ISLAND AS WELL.\n"
    .. "INTEL: TWO CONVOYS HAVE BEEN SPOTTED RESUPPLYING TROOPS PERIODICALLY ON THE WEST SIDE OF THE ISLAND.\n"

  MESSAGE:New(msg ,60,""):ToAll()
  
end --function

-- XXX STAND UP A FULLY OPERATIONAL SA6 SITE ON LAVAN ISLAND
function LavanIslandSA6()
  local lavantable = {"lavan1","lavan2","lavan3","lavan5"}
  local lavansa6poly1 = ZONE_POLYGON:New("lavansa6poly1", GROUP:FindByName("lavansa6poly1"))
  local lavansa6zones = {lavansa6poly1}
  local lavansa6 = SPAWN:New("lavansa6"):Spawn()
  
  local lavansa6support = SPAWN:New("lavan1")
  :InitRandomizeZones(lavansa6zones)
  :InitRandomizeTemplate(lavantable)
  :InitHeading(1,359)
  :InitLimit(8,8)
  :SpawnScheduled(1,1)
  
  local lavansa6inf = SPAWN:New("inf")
  :InitRandomizeZones(lavansa6zones)
  :InitHeading(1,359)
  :InitLimit(11,10)
  :SpawnScheduled(1,1)

  local msg = "IRAN HAS STAGED AN SA6 SYSTEM ON CENTRAL LAVAN ISLAND AND HAS BEEN PROVOKING COALITION FLIGHTS WITH TRACKING AND LOCKUPS\n"
    .. "IT IS SUPPORTED BY A BATTERY OF ARMOR AND AAA GUNS\n"
    .. "DESTROY THE SA6 SITE ENTIRELY AND AS MANY SUPPORT UNITS AS POSSIBLE"

  MESSAGE:New(msg ,60,""):ToAll()
      
end --function

-- XXX START EWR ZONES IN SOUTHERN IRAN FOR RADAR DETECTION/SEAD
function IranEWR()
  local IranEWRZones = {ZONE:New("IranEWR001"),ZONE:New("IranEWR002"),ZONE:New("IranEWR003"),ZONE:New("IranEWR004"),ZONE:New("IranEWR005"), }
  
  ewrinfantry = SPAWN:New("infsquad")
    :InitHeading(1,359)
  
  IranEWR = SPAWN:New("IranEWR")
    :InitHeading(1,359)
    :OnSpawnGroup(
      function( SpawnGroup )
        ZonePosition = SpawnGroup
        Zonegroup = ZONE_GROUP:New("SpawnGroup",SpawnGroup,5)
        local ZonePointVec2 = Zonegroup:GetPointVec2()
        local ZoneVec2 = Zonegroup:GetVec2()    
        x = ZonePointVec2:GetLat() - 10
        y = ZonePointVec2:GetLon() - 10
        ewrinfantry:SpawnFromPointVec2( POINT_VEC2:New( x,y )) 
      end )
  
  for i=1,#IranEWRZones do
    IranEWR:SpawnInZone(IranEWRZones[i],true)
  end

end --function

-- XXX SPAWN AN SA-15 TOR IN RANDOM POSITIONS NEAR BL AIRBASE
function BLSEAD ()
  local blseadzones = {ZONE:New("blsead1"),ZONE:New("blsead2"),ZONE:New("blsead3"),}
  
  MESSAGE:New("AN SA-15 TOR IS OPERATING IN THE AREA OF 4O R BQ 67.  ENGAGE AND DESTROY IT." ,60,""):ToAll()
  
  blsead1:InitRandomizeZones(blseadzones)
  blsead1:Spawn()
  
end --function

-- XXX Lar Airfield Attack
function airfieldattacklar()
  -- COMPLEX MISSION IN WHICH INGRESS TOWARD LAR WILL PRODUCE CAP AIRCRAFT THAT WILL COME AFTER YOU.
  -- IF THEIR EWR SITE SPECIFIC TO THIS MISSION IS ACTIVE, THEY WILL DETECT YOU FROM FURTHER AWAY.
  -- IF NOT, THE DETECTION RADIUS IS MUCH SHORTER. 
  -- CAP LAUNCHES CONTINUE UNTIL THE AIRFIELD IS ATTACKED AND THE COMMAND AND CONTROL VEHICLE IS
  -- DESTROYED. AIRFIELD IS WELL DEFENDED WITH RANDOM ARMOR AND AIR THREATS.
  
  bogeys = SPAWN:New("larair1")
    :InitLimit(1,16)
    :InitRandomizeRoute(0,2,10000,10000):SpawnScheduled(30,1)
          
  ewrzone = ZONE:New("larewrzone")
  
  defensezone = ZONE:New("lardefensezone")
  
  staticplane = SPAWN:New("larcommandpost")
    :SpawnInZone(ZONE:New("larcpzone"),true)
  
  staticplaneGroupName = "larcommandpost" .. "#001"
  
  staticplanegroup = GROUP:FindByName(staticplaneGroupName)
  
  local airbase_ewr1 = SPAWN:New("ewr1"):Spawn()
  
  local larpoly1 = ZONE_POLYGON:New("larpoly1", GROUP:FindByName("larpoly1"))
  
  local zonetable_lar = {larpoly1}
  
  local larairfieldtemplates = {
    "armor1",
    "armor2",
    "armor3",
    "ad1",
    "ad2",
    "ad3",
    "ad4",
    }
  
  local armor1 = SPAWN:New("armor1")
    :InitLimit(5,5)
    :InitHeading(1,359)
    :InitRandomizeZones(zonetable_lar)
    :InitRandomizeTemplate(larairfieldtemplates)
    :SpawnScheduled(1,1)
  
  local ad1 = SPAWN:New("ad1")
    :InitLimit(5,5)
    :InitHeading(1,359)
    :InitRandomizeZones(zonetable_lar)
    :InitRandomizeTemplate(larairfieldtemplates)
    :SpawnScheduled(1,1)
  
  
  BlueGroups = SET_GROUP:New()
  
  BlueGroups:FilterCoalitions("blue")
    :FilterStart()
  
  inzone = 0
  spawnstarted = 0
  
  ewr1GroupString = "ewr1" .. "#001"
  
  ewr1Group = GROUP:FindByName(ewr1GroupString)
  
  zonecheck = SCHEDULER:New( nil,
    function()
      keyGroupAlive = staticplanegroup:IsAlive()
      if (keyGroupAlive) then
        BlueGroups:ForEachGroupCompletelyInZone( ewrzone,
          function( GroupObject )   
            if ewr1Group:IsAlive() then
              --MESSAGE:New("Lar scrambling a jet for intercept...."):ToAll()
              inzone = 1
            else
              inzone = 0
              bogeys:SpawnScheduleStop()
              -- MESSAGE:New("ewr1 is DEAD. No spawn based on this zone."):ToAll()
            end
          end
          ) --bgfunction
        BlueGroups:ForEachGroupCompletelyInZone( defensezone,
          function( GroupObject )     
            inzone = 1
            bogeys:SpawnScheduleStart()
            -- MESSAGE:New("inside lar defense zone. startspawn."):ToAll()
          end
          ) --func
      else --ifalive
        MESSAGE:New("Lar Air Command Post Neutralized. Lar is unable to launch further aircraft." ,60,""):ToAll()
        bogeys:SpawnScheduleStop()
        ScheduleStop(zonecheck)
      end
    end,
    {}, 0, 120 ) --sch
  
    
  local msg = "Attack Lar Air Base, which operates a MiG-21 Squadron.\n"
    .. "Lar will launch intercept AC if incursion detected by its EWR system\n"
    .. "located at N:27 08 39, E:054 00 30.\n"
    .. "** Without the EWR site it will not launch AC until the airfield itself can detect them.\n"
    .. "Airfield is well defended with AAA/IR SAM, Manpads and Heavy Armor.\n"
    .. "Air Ops are controlled from a mobile skp-11 command unit located near the control tower.\n"
    .. "If that is destroyed, they can no longer launch aircraft."

  MESSAGE:New(msg ,60,""):ToAll()
  
end --function

-- XXX Shiraz Airfield Attack
function airfieldattackshiraz()
  -- COMPLEX MISSION IN WHICH INGRESS TOWARD SHIRAZ WILL PRODUCE CAP AIRCRAFT THAT WILL COME AFTER YOU.
  -- IF THEIR EWR SITE SPECIFIC TO THIS MISSION IS ACTIVE, THEY WILL DETECT YOU FROM FURTHER AWAY.
  -- IF NOT, THE DETECTION RADIUS IS MUCH SHORTER. 
  -- CAP LAUNCHES CONTINUE UNTIL THE AIRFIELD IS ATTACKED AND THE COMMAND AND CONTROL VEHICLE IS
  -- DESTROYED. AIRFIELD IS WELL DEFENDED WITH RANDOM ARMOR AND AIR THREATS.
  
  bogeys = SPAWN:New("shirazair1")
    :InitLimit(1,16)
    :InitRandomizeRoute(0,2,10000,10000)
    :SpawnScheduled(30,1)
          
  ewrzone = ZONE:New("shirazewrzone")
  
  defensezone = ZONE:New("ShirazCAPZone")
  
  staticplane = SPAWN:New("shirazcommandpost")
  
  staticplane:SpawnInZone(ZONE:New("shirazcpzone"),true)
  
  staticplaneGroupName = "shirazcommandpost" .. "#001"
  
  staticplanegroup = GROUP:FindByName(staticplaneGroupName)
  
  local airbase_ewr1 = SPAWN:New("shirazewr1"):Spawn()
  
  local shirazpoly1 = ZONE_POLYGON:New("shirazpoly1", GROUP:FindByName("shirazpoly1"))
  
  local zonetable_shiraz = {shirazpoly1}
  
  local shirazairfieldtemplates = {
    "ad1",
    "ad2",
    "ad3",
    "ad4",
    "armor1",
    "armor2",
    "armor3",
    "ad1",
    "ad2",
    "ad3",
    "ad4",
    }
  
  local armor1 = SPAWN:New("armor1")
    :InitLimit(5,5)
    :InitHeading(1,359)
    :InitRandomizeZones(zonetable_shiraz)
    :InitRandomizeTemplate(shirazairfieldtemplates)
    :SpawnScheduled(1,1)
  
  local ad1 = SPAWN:New("ad1")
    :InitLimit(8,8)
    :InitHeading(1,359)
    :InitRandomizeZones(zonetable_shiraz)
    :InitRandomizeTemplate(shirazairfieldtemplates)
    :SpawnScheduled(1,1)
  
  BlueGroups = SET_GROUP:New()
  
  BlueGroups:FilterCoalitions("blue")
    :FilterStart()
  
  inzone = 0
  spawnstarted = 0
  
  ewr1GroupString = "shirazewr1" .. "#001"
  
  ewr1Group = GROUP:FindByName(ewr1GroupString)
  
  zonecheck = SCHEDULER:New( nil,
    function()
      keyGroupAlive = staticplanegroup:IsAlive()
      if (keyGroupAlive) then
        BlueGroups:ForEachGroupCompletelyInZone( ewrzone,
          function( GroupObject )   
            if ewr1Group:IsAlive() then
              --MESSAGE:New("Lar scrambling a jet for intercept...."):ToAll()
              inzone = 1
            else
              inzone = 0
              bogeys:SpawnScheduleStop()
              -- MESSAGE:New("ewr1 is DEAD. No spawn based on this zone."):ToAll()
            end
           end
           ) --bgfunction
          BlueGroups:ForEachGroupCompletelyInZone( defensezone,
            function( GroupObject )     
              inzone = 1
              bogeys:SpawnScheduleStart()
              -- MESSAGE:New("inside lar defense zone. startspawn."):ToAll()
            end
            ) --func
      else --ifalive
        MESSAGE:New("Shiraz Air Command Post Neutralized. Lar is unable to launch further aircraft." ,60,""):ToAll()
        bogeys:SpawnScheduleStop()
        ScheduleStop(zonecheck)
      end
    end,
    {}, 0, 120 ) --sch
  
    local msg = "Attack Shiraz Air Base, which operates a Fighter Squadron.\n"
      .. "Shiraz will launch intercept AC if incursion detected by its EWR system\n"
      .. "located at N:28 42 28, E:053 13 42.\n"
      .. "** Without the EWR site it will not launch AC until the airfield itself can detect them.\n"
      .. "Airfield is well defended with AAA/IR SAM, Manpads and Heavy Armor.\n"
      .. "Air Ops are controlled from a mobile skp-11 command unit located near the control tower.\n"
      .. "If that is destroyed, they can no longer launch aircraft."

    MESSAGE:New(msg ,60,""):ToAll()
  
end --function

-- XXX Factory strike Gannon 8/20
function FactoryStrike ()

-- Spawn AAA & Manpad at Gate
  local FactoryPatrol = SPAWN:New("FactoryPatrol 2")
  local FactoryPatrolGroup = FactoryPatrol:Spawn()

-- Spawn AAA patrol around factory
  local FactoryPatrol = SPAWN:New("FactoryPatrol")
  local FactoryPatrolGroup = FactoryPatrol:Spawn()
  FactoryPatrolGroup:PatrolRoute()
  
-- Spawn AAA and SAM road patrol on North/South route  
  local FactorySAPatrol = SPAWN:New("FactorySAPatrol")
  local FactorySAPatrolGroup = FactorySAPatrol:Spawn()
  FactorySAPatrolGroup:PatrolRoute()

-- Spawn 3 randomized SA-2 SAM sites near the factory  
  local SA2Table = {
    ZONE:New("FactoryZone1"), 
    ZONE:New("FactoryZone2"), 
    ZONE:New("FactoryZone3"), 
    ZONE:New("FactoryZone4"), 
    ZONE:New("FactoryZone5"), 
    ZONE:New("FactoryZone6"), 
    ZONE:New("FactoryZone7"), 
    ZONE:New("FactoryZone8"), 
    ZONE:New("FactoryZone9"), 
    ZONE:New("FactoryZone10"), 
    ZONE:New("FactoryZone11"),
    }
    
  local FactorySA2 = SPAWN:New("FactorySA2")
    :InitLimit(50, 3)
    :InitRandomizeZones(SA2Table)
    :SpawnScheduled(.5, .5)
  
  local msg = "We have received intelligence that Iran is developing chemical weapons in a new\n"
    .. "facility on the Iranian coast NW of Lavan Island.\n"
    .. "Grid: 'XL'\n"
    .. "LL: N 27.33.27  E 52.33.22.\n"
    .. "Our satellite intel suggests that the factory is guarded by multiple SA-2 and AAA sites.\n"
    .. "Destroy the factory and limit the air defenses in the region to allow for follow up strikes."

  MESSAGE:New(msg ,60,""):ToAll()
  
end --function


-- END FUNCTIONS SECTION
-- BEGIN ATIS SECTION

atisAldhafra=ATIS:New(AIRBASE.PersianGulf.Al_Dhafra_AB, 119.6)
atisAldhafra:SetRadioRelayUnitName("Radio Relay Al Dhafra")
--atisAldhafra:SetActiveRunway("R")
atisAldhafra:SetTACAN(96)
atisAldhafra:SetVOR(114.9)
atisAldhafra:SetTowerFrequencies({251.0, 126.5})
atisAldhafra:Start()


atisAlminhad=ATIS:New(AIRBASE.PersianGulf.Al_Minhad_AB, 121.925)
atisAlminhad:SetRadioRelayUnitName("Radio Relay Al Minhad")
atisAlminhad:AddILS(110.75, "27")
atisAlminhad:SetTACAN(99)
atisAlminhad:SetTowerFrequencies({250.1, 121.8})
atisAlminhad:Start()

atisAlkhasab=ATIS:New(AIRBASE.PersianGulf.Al_Minhad_AB, 121.925)
atisAlkhasab:SetRadioRelayUnitName("Radio Relay Al Minhad")
atisAlkhasab:AddILS(110.75, "27")
atisAlkhasab:SetTACAN(99)
atisAlkhasab:SetTowerFrequencies({250.1, 121.8})
atisAlkhasab:Start()


atisDubai=ATIS:New(AIRBASE.PersianGulf.Dubai_Intl, 131.7)
atisDubai:SetRadioRelayUnitName("Radio Relay Dubai Intl")
atisDubai:SetActiveRunway("R")
atisDubai:AddILS(110.9, "30")
atisDubai:SetTowerFrequencies({251.05, 118.75})
atisDubai:Start()


atisAbuDhabi=ATIS:New(AIRBASE.PersianGulf.Abu_Dhabi_International_Airport, 125.1)
atisAbuDhabi:SetRadioRelayUnitName("Radio Relay Abu Dhabi International Airport")
atisAbuDhabi:SetActiveRunway("L")
atisAbuDhabi:SetTowerFrequencies({250.5, 119.2})
atisAbuDhabi:SetVOR(114.25)
atisAbuDhabi:Start()



-- END ATIS SECTION
-- XXX BEGIN BOAT SECTION

stennis = GROUP:FindByName("CSG_CarrierGrp_Stennis")
stennis:PatrolRoute()

tarawa = GROUP:FindByName( "CSG_CarrierGrp_Tarawa" )
tarawa:PatrolRoute()

-- END BOAT SECTION
-- XXX BEGIN SUPPORT AC SECTION

---------------------------------------------------
--- Define spawn zones with trigger zones in ME ---
---------------------------------------------------

Zone_AAR_1 = ZONE:New( "AAR_1_Zone" ) 
Zone_AAR_2 = ZONE:New( "AAR_2_Zone" ) 
Zone_AAR_3 = ZONE:New( "AAR_3_Zone" ) 
Zone_AAR_4 = ZONE:New( "AAR_4_Zone" ) 
Zone_AWACS_1 = ZONE:New( "AWACS_1_Zone" ) 

------------------------------------------------------
--- define table of support aircraft to be spawned ---
------------------------------------------------------

TableSpawnSupport = { -- {spawnobjectname, spawnzone}
  {spawnobject = "Tanker_C130_Arco1", spawnzone = Zone_AAR_1},
  {spawnobject = "Tanker_C130_Arco2", spawnzone = Zone_AAR_2},
  {spawnobject = "Tanker_C130_Arco3", spawnzone = Zone_AAR_3},
  {spawnobject = "Tanker_KC135MPRS_Arco4", spawnzone = Zone_AAR_4},
  {spawnobject = "Tanker_KC135MPRS_Shell1", spawnzone = Zone_AAR_1},
  {spawnobject = "Tanker_KC135MPRS_Shell2", spawnzone = Zone_AAR_2},
  {spawnobject = "Tanker_KC135MPRS_Shell3", spawnzone = Zone_AAR_3},
  {spawnobject = "Tanker_KC135MPRS_Shell4", spawnzone = Zone_AAR_4},
  {spawnobject = "Tanker_KC135_Texaco1", spawnzone = Zone_AAR_1},
  {spawnobject = "Tanker_KC135_Texaco2", spawnzone = Zone_AAR_2},
  {spawnobject = "Tanker_KC135_Texaco3", spawnzone = Zone_AAR_3},
  {spawnobject = "Tanker_KC135_Texaco4", spawnzone = Zone_AAR_4},
  {spawnobject = "AWACS_Magic", spawnzone = Zone_AWACS_1},
}

------------------------------
--- spawn support aircraft ---
------------------------------

for i, v in ipairs( TableSpawnSupport ) do
  SpawnSupport ( v )
  
end

-------------------------------
--- Recovery Tanker Stennis ---
-------------------------------

Spawn_Tanker_S3B_Texaco6 = RECOVERYTANKER:New( UNIT:FindByName( "CSG_CarrierGrp_Stennis"), "Tanker_S3B_Texaco6" )

Spawn_Tanker_S3B_Texaco6:SetCallsign(CALLSIGN.Tanker.Texaco, 6)
	:SetTACAN(15, "TEX")
	:SetRadio(317.775)
	:SetModex(049)
	:SetTakeoffAir()
	:Start()

------------------------------
--- Recovery Tanker Tarawa ---
------------------------------

--Spawn_Tanker_C130_Texaco5 = RECOVERYTANKER:New( UNIT:FindByName( "CSG_CarrierGrp_Tarawa"), "Tanker_C130_Texaco5" )
--
--Spawn_Tanker_C130_Texaco5:SetCallsign(CALLSIGN.Tanker.Texaco, 5)
--  :SetTACAN(16, "TEX")
--  :SetRadio(276.1)
--  :SetModex(999)
--  :SetAltitude(10000)
--  :SetTakeoffAir()
--  :SetRespawnInAir()
--  :SetHomeBase(AIRBASE:FindByName("Sir Abu Nuayr"))
--  :Start()

--------------------------
--- Rescue Helo Stennis ---
---------------------------

Spawn_Rescuehelo_Stennis = RESCUEHELO:New(UNIT:FindByName("CSG_CarrierGrp_Stennis"), "RescueHelo_Stennis")

Spawn_Rescuehelo_Stennis:SetRespawnInAir()
  :SetHomeBase(AIRBASE:FindByName("CSG_CarrierGrp_Stennis_03"))
	:SetRescueStopBoatOff()
	:Start()

---------------------------
--- Rescue Helo Tarawa ---
---------------------------

Spawn_Rescuehelo_Tarawa = RESCUEHELO:New(UNIT:FindByName("CSG_CarrierGrp_Tarawa"), "RescueHelo_Tarawa")

Spawn_Rescuehelo_Tarawa:SetRespawnInAir()
  :SetHomeBase(AIRBASE:FindByName("CSG_CarrierGrp_Tarawa_05"))
  :SetRescueStopBoatOff()
  :Start()
  

-- END SUPPORT AC SECTION
-- XXX BEGIN AIRBOSS SECTION

-----------------------
--- Airboss Stennis ---
-----------------------

-- Create AIRBOSS object for Stennis
airbossStennis=AIRBOSS:New( "CSG_CarrierGrp_Stennis", "Stennis" )

-- Set load and save path/name for persistent LSO grades
airbossStennis:Load(nil, "PG_Airboss-USS Stennis_LSOgrades.csv")
airbossStennis:SetAutoSave(nil, "PG_Airboss-USS Stennis_LSOgrades.csv")

local stennisOffset_deg = 0 -- Marshal offset
local stennisDefaultPlayerSkill = AIRBOSS.Difficulty.Normal -- default skill level
local stennisRadioRelayMarshall = UNIT:FindByName("RadioRelayMarshall_Stennis") -- radio relay unit for Marshal
local stennisRadioRelayPaddles = UNIT:FindByName("RadioRelayPaddles_Stennis") -- radio relay unit for LSO
local stennisClouds, stennisVisibility, stennisFog, stennisDust = airbossStennis:_GetStaticWeather() -- get mission weather (assumes static weather is used)

--- Determine Daytime Case
-- adjust case according to weather state

local stennisCase = 1 -- default to Case I

if (stennisClouds.base < 305 and stennisClouds.density > 8) or stennisVisibility < 8000 then -- cloudbase < 1000' or viz < 5 miles, Case III
  stennisCase = 3
elseif stennisFog and stennisFog.thickness > 60 and stennisFog.visibility < 8000 then -- visibility in fog < 5nm, Case III
  stennisCase = 3
elseif (stennisClouds.base < 915 and stennisClouds.density > 8) and stennisVisibility >= 8000 then -- cloudbase < 3000', viz > 5 miles, Case II
  stennisCase = 2
end     

-- Stennis AIRBOSS configuration
airbossStennis:SetMenuRecovery(30, 25, false, 30)
airbossStennis:SetSoundfilesFolder("Airboss Soundfiles/")
--airbossStennis:SetVoiceOversLSOByRaynor()
--airbossStennis:SetVoiceOversMarshalByFF("Airboss Soundpack Marshal FF/")
airbossStennis:SetTACAN(74,"X","STN")
airbossStennis:SetICLS( 4,"STN" )
airbossStennis:SetCarrierControlledArea( 50 )
airbossStennis:SetDespawnOnEngineShutdown( true )
airbossStennis:SetRecoveryTanker( Spawn_Tanker_S3B_Texaco1 )
airbossStennis:SetMarshalRadio( 285.675, "AM" )
airbossStennis:SetLSORadio( 308.475, "AM" )
airbossStennis:SetRadioRelayLSO( stennisRadioRelayPaddles )
airbossStennis:SetRadioRelayMarshal( stennisRadioRelayMarshall )
airbossStennis:SetAirbossNiceGuy( true ) -- allow direct to commence
airbossStennis:SetDefaultPlayerSkill(stennisDefaultPlayerSkill)
airbossStennis:SetRespawnAI()
airbossStennis:SetMenuMarkZones( false ) -- disable marking zones using smoke or flares

--- Fun Map Recovery Windows 
-- sunrise and sunset dependant on mission date
-- https://www.timeanddate.com/sun/united-arab-emirates/abu-dhabi?month=4&year=2011
-- Sunrise @ 08:00, Sunset @ 19:00, recovery @ sunrise+10 and sunset-10
-- otherwise, intiate recovery through F10 menu
airbossStennis:AddRecoveryWindow( "5:55", "18:35", stennisCase, stennisOffset_deg, true, 30 ) 
airbossStennis:AddRecoveryWindow( "18:35", "5:55+1", 3, stennisOffset_deg, true, 30 ) 
airbossStennis:AddRecoveryWindow( "5:55+1", "18:35+1", stennisCase, stennisOffset_deg, true, 30 ) 

-- Start AIRBOSS Stennis
airbossStennis:Start()

-- Set AIRBOSS control of Hawk tanker recovery 
Spawn_Tanker_S3B_Texaco6:SetRecoveryAirboss( true )


-----------------------
--- Airboss Tarawa ---
-----------------------

airbossTarawa=AIRBOSS:New( "CSG_CarrierGrp_Tarawa", "Tarawa" )

airbossTarawa:Load(nil, "PG_Airboss-USS Tarawa_LSOgrades.csv")
airbossTarawa:SetAutoSave(nil, "PG_Airboss-USS Tarawa_LSOgrades.csv")

local tarawaOffset_deg = 0
local tarawaDefaultPlayerSkill = AIRBOSS.Difficulty.Normal -- default skill level
local tarawaRadioRelayMarshall = UNIT:FindByName("RadioRelayMarshall_Tarawa")
local tarawaRadioRelayPaddles = UNIT:FindByName("RadioRelayPaddles_Tarawa")
local tarawaClouds, tarawaVisibility, tarawaFog, tarawaDust = airbossTarawa:_GetStaticWeather() -- get mission weather (assumes static weather is used)

--- Determine Daytime Case
-- adjust case according to weather state

local tarawaCase = 1 -- default to Case I

if (tarawaClouds.base < 305 and tarawaClouds.density > 8) or tarawaVisibility < 8000 then -- cloudbase < 1000' or viz < 5 miles, Case III
  tarawaCase = 3
elseif tarawaFog and tarawaFog.thickness > 60 and tarawaFog.visibility < 8000 then -- visibility in fog < 5nm, Case III
  tarawaCase = 3
elseif (tarawaClouds.base < 915 and tarawaClouds.density > 8) and tarawaVisibility >= 8000 then -- cloudbase < 3000', viz > 5 miles, Case II
  tarawaCase = 2
end     
 
airbossTarawa:SetMenuRecovery(30, 25, false, 30)
airbossTarawa:SetSoundfilesFolder("Airboss Soundfiles/")
airbossTarawa:SetTACAN(1,"X","TAR")
airbossTarawa:SetICLS( 1,"TAR" )
airbossTarawa:SetCarrierControlledArea( 50 )
airbossTarawa:SetDespawnOnEngineShutdown( true )
airbossTarawa:SetMarshalRadio( 285.675, "AM" )
airbossTarawa:SetLSORadio( 255.725, "AM" )
airbossTarawa:SetRadioRelayLSO( tarawaRadioRelayPaddles )
airbossTarawa:SetRadioRelayMarshal( tarawaRadioRelayMarshall  )
airbossTarawa:SetAirbossNiceGuy( true )
airbossTarawa:SetDefaultPlayerSkill(tarawaDefaultPlayerSkill)
airbossTarawa:SetRespawnAI()
airbossTarawa:SetMenuMarkZones( false ) -- disable marking zones using smoke or flares

--- Fun Map Recovery Windows 
-- sunrise and sunset dependant on mission date
-- https://www.timeanddate.com/sun/united-arab-emirates/abu-dhabi?month=4&year=2011
-- Sunrise @ 05:45, Sunset @ 18:45, recovery sunrise+10 and @ sunset-10
-- otherwise, intiate recovery through F10 menu
airbossTarawa:AddRecoveryWindow( "5:55", "18:35", tarawaCase, tarawaOffset_deg, true, 30 ) 
airbossTarawa:AddRecoveryWindow( "18:35", "5:55+1", 3, tarawaOffset_deg, true, 30 ) 
airbossTarawa:AddRecoveryWindow( "5:55+1", "18:35+1", tarawaCase, tarawaOffset_deg, true, 30 ) 

airbossTarawa:Start()

-- END AIRBOSS SECTION
-- XXX BEGIN ON DEMAND CAP SECTION

IranCAPAircraft = {"Iran_Mig29","Iran_Mig21","Iran_Mig21","Iran_Mig29"}
-- IranCAPAircraft = {"Iran_F14","Iran_Mig29","Iran_Mig21","Iran_Mig21","Iran_Mig29"}



-- END ON DEMAND CAP SECTION
-- XXX BEGIN ANTI-SHIP STRIKE SECTION

--Spawn MENU Display
MenuSpawnAntiShipStrike = MENU_COALITION_COMMAND:New(coalition.side.BLUE,"Spawn Anti-Ship Strike", MenuCoalitionBlue , SpwnShipStrike)

-- END ANTI-SHIP STRIKE SECTION
-- XXX RANGE SCRIPT SECTION (MOOSE)

-- BM54 Range
local strafepit_BM54_WEST={"RANGE_BM54_strafepit_A",
	"RANGE_BM54_strafepit_B"
	}
local strafepit_BM54_EAST={"RANGE_BM54_strafepit_C",
	"RANGE_BM54_strafepit_D"
	}
local bombtarget_BM54={"RANGE_BM54_EAST_bombing", 
	"RANGE_BM54_WEST_bombing"
	}

Range_BM54 = RANGE:New("BM54 Range")
fouldist_BM54 = Range_BM54:GetFoullineDistance("RANGE_BM54_strafepit_A", "RANGE_BM54_FoulLine_AB")
Range_BM54:AddStrafePit(strafepit_BM54_WEST, 3000, 300, nil, true, 20, fouldist_BM54)
Range_BM54:AddStrafePit(strafepit_BM54_EAST, 3000, 300, nil, true, 20, fouldist_BM54)
Range_BM54:AddBombingTargets(bombtarget_BM54, 50)
Range_BM54:Start()

-- BM35 Range

local bombtarget_BM35 = {"BM35_village1",
	"BM35_village2",
	"BM35_village3",
	"BM35_village4",
	"BM35_village5",
	"BM35_village6",
	"BM35_village7",
	"BM35_village8",
	"BM35_village9",
	"BM35_village10"
	}

Range_BM35 = RANGE:New("BM35 Range")
Range_BM35:AddBombingTargets(bombtarget_BM35, 50)
Range_BM35:Start()

-- YG77 Range

local bombtarget_YG77={"RANGE_YG77_EAST_bombing", 
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
	}
local strafepit_YG77_WEST={"RANGE_YG77_strafepit_A",
	"RANGE_YG77_strafepit_B"
	}
local strafepit_YG77_EAST={"RANGE_YG77_strafepit_C",
	"RANGE_YG77_strafepit_D"
	}

Range_YG77 = RANGE:New("YG77 Range")
fouldist_YG77 = Range_YG77:GetFoullineDistance("RANGE_YG77_strafepit_A", "RANGE_YG77_FoulLine_AB")
Range_YG77:AddStrafePit(strafepit_YG77_WEST, 3000, 300, nil, true, 20, fouldist_YG77)
Range_YG77:AddStrafePit(strafepit_YG77_EAST, 3000, 300, nil, true, 20, fouldist_YG77)
Range_YG77:AddBombingTargets(bombtarget_YG77, 50)
Range_YG77:Start()

-- BM64 Range

local bombtarget_BM64={"RANGE_BM64_bombing_01", 
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
	}
local strafepit_BM64 ={"RANGE_BM64_Strafepit_A",
	"RANGE_BM64_Strafepit_B"
	}

Range_BM64 = RANGE:New("BM64 Range")
fouldist_BM64 = Range_BM64:GetFoullineDistance("RANGE_BM64_Strafepit_A", "RANGE_BM64_FoulLine_AB")
Range_BM64:AddStrafePit(strafepit_BM64, 3000, 300, nil, true, 20, fouldist_BM64)
Range_BM64:AddBombingTargets(bombtarget_BM64, 50)
Range_BM64:Start()

-- END RANGE SCRIPT SECTION
-- XXX BEGIN GROUND MISSION SECTION

QeshmIslandHot()

blsead1 = SPAWN:New("blsead1") --sa15 tor, defined outside the function by design

BandarCampZones = {
  ZONE:New("bc1"),
  ZONE:New("bc2"), 
  ZONE:New("bc3"),
  ZONE:New("bc4"),
  ZONE:New("bc5"),
  ZONE:New("bc6"),
  ZONE:New("bc7"),
  }

campsBandarEnemy = {
  "campheavy5" ,
  "campheavy6",
  "campheavy7", 
  "campheavy8",
  "campheavy5",
  "campheavy6",
  "campheavy7",
  "campheavy8",
  } 

_argsBandar = {
  BandarCampZones,
  campsBandarEnemy
  }

campsBandar = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"TERRORIST TRAINING CAMPS HARD",MenuBandarL,SpawnCamps, _argsBandar)

LavanIsland = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"LAVAN ISLAND DEFENSE",MenuBandarL,LavanIsland, "")

SA6LavanIsland = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"LAVAN ISLAND SA6 SITE",MenuBandarL,LavanIslandSA6, "")

FactoryStrike = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"ASALOYEH FACTORY STRIKE",MenuBandarL,FactoryStrike, "") --Added Gannon 8/20

LIVESEAD = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"BANDAR LENGEH SEAD",MenuBandarL,BLSEAD, "")

--EWR Sites 
EWRIran = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"ACTIVATE IRAN EWR SITES",MenuCoalitionTopLevel,IranEWR, "")

--CAP menu items
--Shiraz
ShirazZones = {
  ZONE:New("ShirazCAPZone"),
  }

ShirazCAP1 = SPAWN:New("ShirazCAP1")

ShirazCAPAircraft = {
  "Iran_F14",
  "Iran_Mig29",
  "Iran_Mig21",
  "Iran_Mig21",
  "Iran_Mig29",
  }

_Shiraz_args = {
  ShirazZones,
  ShirazCAP1,
  ShirazCAPAircraft,
  }

ShirazCAPs = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"Spawn Shiraz CAP",CAP_Shiraz,SpawnCAP, _Shiraz_args)
shirazattack1 = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"AIRFIELD ATTACK SHIRAZ",MenuShiraz,airfieldattackshiraz, "mission")

--Lar
m1 = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"AIRFIELD ATTACK LAR",MenuBandarL,airfieldattacklar, "mission")

--Lar AB
LarCAPZones = {
  ZONE:New("LarCAPZone"),
  }
  
LARCAP1 = SPAWN:New("LarCAP1")

LarCAPAircraft = {
  "Iran_Mig29", 
  "Iran_Mig21",
  "Iran_Mig21",
  "Iran_Mig29",
  }

_Lar_args = {
  LarCAPZones,
  LARCAP1,
  LarCAPAircraft,
  }

LARCAPs = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"Spawn LAR CAP",CAP_Lar,SpawnCAP, _Lar_args)

--Bandar Abbas
BandarZones = {
  ZONE:New("BandarCAPZone"),
  }

BandarACAP1 = SPAWN:New("BandarAbbasCAP1")

BACAPAircraft = {
  "Iran_Mig29",
  "Iran_Mig21",
  "Iran_Mig21",
  "Iran_Mig29",
  }
  
_BandarA_args = {
  BandarZones,
  BandarACAP1,
  BACAPAircraft,
  }

BandarACAPs = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"Spawn Bandar Abbas CAP",CAP_BandarA,SpawnCAP, _BandarA_args)

--kerman

KermanCamps = {
  ZONE:New("k1"), 
  ZONE:New("k2"), 
  ZONE:New("k3"),
  ZONE:New("k4"),
  ZONE:New("k5"),
  ZONE:New("k6"),
  ZONE:New("k7"),
  ZONE:New("k8"),
  }
 
camptemps = {
  "campheavy5",
  "campheavy6",
  "campheavy7",
  "campheavy8",
  }
   
_args = {
  KermanCamps,
  camptemps,
  }

campKerman = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"TERRORIST TRAINING CAMPS",MenuKerman,SpawnCamps, _args)
takurghar = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"TAKUR GHAR CAS",MenuKerman,TakurGhar, "")

-- ## Set trace on/off (true, false)
BASE:TraceOnOff(false)

env.info( '*** CSG-1 MOOSE MISSION SCRIPT END *** ' )
