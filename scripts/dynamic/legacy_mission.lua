env.info( "[JTF-1] legacy_mission" )

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- BEGIN MENU DEFINITIONS
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

legacyMenuTop = MENU_COALITION:New( coalition.side.BLUE, "LEGACY MISSION MENU")

-- ## CAP CONTROL
EnemyCAPS = MENU_COALITION:New( coalition.side.BLUE, "CAP CONTROL", legacyMenuTop )
  CAP_Shiraz = MENU_COALITION:New( coalition.side.BLUE, "SHIRAZ", EnemyCAPS )
  CAP_Lar = MENU_COALITION:New( coalition.side.BLUE, "LAR AB", EnemyCAPS )
  CAP_BandarA = MENU_COALITION:New( coalition.side.BLUE, "BANDAR ABBAS", EnemyCAPS )

-- ## GROUND ATTACK MISSIONS
MenuGroundAttack = MENU_COALITION:New( coalition.side.BLUE, "STRIKE MISSIONS", legacyMenuTop )
  MenuBandarL = MENU_COALITION:New( coalition.side.BLUE, "BANDAR LENGEH/LAR", MenuGroundAttack )
  MenuKerman = MENU_COALITION:New( coalition.side.BLUE, "KERMAN", MenuGroundAttack )
  MenuShiraz = MENU_COALITION:New( coalition.side.BLUE, "SHIRAZ", MenuGroundAttack )
  MenuAsaloyeh = MENU_COALITION:New( coalition.side.BLUE, "ASALOYEH", MenuGroundAttack )
  

-- ## SHIP STRIKE MISSIONS
MenuShipStrike = MENU_COALITION:New(coalition.side.BLUE,"SHIP STRIKE", legacyMenuTop)
  MenuSpawnAntiShipStrike = MENU_COALITION_COMMAND:New(coalition.side.BLUE,"Spawn Anti-Ship Strike", MenuShipStrike , SpwnShipStrike)

-- ## Factory Strike Missions
FactoryStrikeEasy = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"ASALOYEH FACTORY STRIKE EASY - 1-2 planes",MenuAsaloyeh,FactoryStrikeEasy, "")
FactoryStrikeMedium = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"ASALOYEH FACTORY STRIKE MEDIUM - 2-4 planes",MenuAsaloyeh,FactoryStrikeMedium, "")
FactoryStrikeHard = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"ASALOYEH FACTORY STRIKE HARD - 4+ planes",MenuAsaloyeh,FactoryStrikeHard, "")


--- END MENU DEFINITIONS


-- XXX Spawn Anti-Ship Strike

function SpwnShipStrike ()

  SpwnAntiShipStrike_1 = SPAWN:New("AntiShipStrike_1")
  SpwnAntiShipStrike_2 = SPAWN:New("AntiShipStrike_2")
  SpwnAntiShipStrike_3 = SPAWN:New("AntiShipStrike_3")
  
  Rand_AntiShipStrike = math.random (3) --random selection
  
  
  if Rand_AntiShipStrike == 1 then SpwnAntiShipStrike_1:Spawn() MessageShipStrike = MESSAGE:New("Su-24's departed Bandar Abbass loaded with anti-ship missiles. Intelligence suggests their target is the Tarawa!"):ToCoalition(coalition.side.BLUE) end
  if Rand_AntiShipStrike == 2 then SpwnAntiShipStrike_2:Spawn() MessageShipStrike = MESSAGE:New("Su-24's Shiraz International Airport loaded with anti-ship missiles. Intel suggests target is the Tarawa!"):ToCoalition(coalition.side.BLUE)  end
  if Rand_AntiShipStrike == 3 then SpwnAntiShipStrike_3:Spawn() MessageShipStrike = MESSAGE:New("Su-24's Shiraz International Airport loaded with anti-ship missiles. Intel suggests target is the Lincoln!"):ToCoalition(coalition.side.BLUE) end
  
  MenuSpawnAntiShipStrike:Remove()
  Menu_destroyAntiShipStrike = MENU_COALITION_COMMAND:New(coalition.side.BLUE,"Destroy Anti-Ship Strike", MenuShipStrike, destroyAntiShipStrike)

end -- function

-- XXX Destroy Anti-Ship strike

function destroyAntiShipStrike (AntiShipStrike_1)
  local AntiShipStrike_1, Index = SpwnAntiShipStrike_1:GetFirstAliveGroup()
  while AntiShipStrike_1 ~= nil do
    AntiShipStrike_1:Destroy()
    AntiShipStrike_1, Index = SpwnAntiShipStrike_1:GetNextAliveGroup(Index)
    Menu_destroyAntiShipStrike:Remove()
    MenuSpawnAntiShipStrike = MENU_COALITION_COMMAND:New(coalition.side.BLUE,"Spawn Anti-Ship Strike",MenuShipStrike, SpwnShipStrike)
    end
end -- function


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
--args is a table containing two tables
function SpawnCamps(_args) 

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
  
  if count == 7 then --Forrestal/Bandar
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

-- XXX Factory strike - Gannon 11/1
-- Factory strike Easy
function FactoryStrikeEasy ()

-- Spawn AAA & Manpad at Gate
  local FactoryPatrol = SPAWN:New("FactoryGate")
  local FactoryPatrolGroup = FactoryPatrol:Spawn()

-- Spawn AAA and SAM patrol around factory
  local FactoryPatrol = SPAWN:New("FactoryPatrol")
  local FactoryPatrolGroup = FactoryPatrol:Spawn()
  FactoryPatrolGroup:PatrolRoute()
  
-- Spawn AAA and SAM road patrol on North/South route  
  local FactorySAPatrol = SPAWN:New("FactorySAPatrol")
  local FactorySAPatrolGroup = FactorySAPatrol:Spawn()
  FactorySAPatrolGroup:PatrolRoute()

-- Spawn Zones  
  local SpawnZones = {
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
    
  local FactorySA6 = SPAWN:New("FactorySA6")
    :InitLimit(50, 3)
    :InitRandomizeZones(SpawnZones)
    :SpawnScheduled(.5, .5)
  
  local msg = "Asaloyeh Factory Strike EASY\n"
    .. "We have received intelligence that Iran is developing chemical weapons in a new\n"
    .. "facility on the Iranian coast NW of Lavan Island.\n"
    .. "Grid: 'XL'\n"
    .. "LL: N 27.33.27  E 52.33.22.\n"
    .. "Our satellite intel suggests that the factory is guarded by multiple SA-6 and AAA sites.\n"
    .. "Destroy the factory and limit the air defenses in the region to allow for follow up strikes."

  MESSAGE:New(msg ,60,""):ToAll()
  
end --function

-- Factory strike Medium
function FactoryStrikeMedium ()

-- Spawn AAA & Manpad at Gate
  local FactoryPatrol = SPAWN:New("FactoryGate")
  local FactoryPatrolGroup = FactoryPatrol:Spawn()

-- Spawn AAA and SAM patrol around factory
  local FactoryPatrol = SPAWN:New("FactoryPatrol")
  local FactoryPatrolGroup = FactoryPatrol:Spawn()
  FactoryPatrolGroup:PatrolRoute()
  
-- Spawn AAA and SAM road patrol on North/South route  
  local FactorySAPatrol = SPAWN:New("FactorySAPatrol")
  local FactorySAPatrolGroup = FactorySAPatrol:Spawn()
  FactorySAPatrolGroup:PatrolRoute()

-- Spawn Zones  
  local SpawnZones = {
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
    
  local FactorySA6 = SPAWN:New("FactorySA6")
    :InitLimit(50, 2)
    :InitRandomizeZones(SpawnZones)
    :SpawnScheduled(.5, .5)

  local FactorySA6 = SPAWN:New("FactorySA11")
    :InitLimit(50, 1)
    :InitRandomizeZones(SpawnZones)
    :SpawnScheduled(.5, .5)   
  
  local msg = "Asaloyeh Factory Strike MEDIUM\n"
    .. "We have received intelligence that Iran is developing chemical weapons in a new\n"
    .. "facility on the Iranian coast NW of Lavan Island.\n"
    .. "Grid: 'XL'\n"
    .. "LL: N 27.33.27  E 52.33.22.\n"
    .. "Our satellite intel suggests that the factory is guarded by multiple SA-6, SA-11, and AAA sites.\n"
    .. "Destroy the factory and limit the air defenses in the region to allow for follow up strikes."

  MESSAGE:New(msg ,60,""):ToAll()
  
end --function

-- Factory strike Hard
function FactoryStrikeHard ()

-- Spawn AAA & Manpad at Gate
  local FactoryPatrol = SPAWN:New("FactoryGate")
  local FactoryPatrolGroup = FactoryPatrol:Spawn()

-- Spawn AAA and SAM patrol around factory
  local FactoryPatrol = SPAWN:New("FactoryPatrol")
  local FactoryPatrolGroup = FactoryPatrol:Spawn()
  FactoryPatrolGroup:PatrolRoute()
  
-- Spawn AAA and SAM road patrol on North/South route  
  local FactorySAPatrol = SPAWN:New("FactorySAPatrol")
  local FactorySAPatrolGroup = FactorySAPatrol:Spawn()
  FactorySAPatrolGroup:PatrolRoute()

-- Spawn Zones  
  local SpawnZones = {
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
    
  local FactorySA6 = SPAWN:New("FactorySA6")
    :InitLimit(50, 1)
    :InitRandomizeZones(SpawnZones)
    :SpawnScheduled(.5, .5)
    
  local FactorySA6 = SPAWN:New("FactorySA11")
    :InitLimit(50, 2)
    :InitRandomizeZones(SpawnZones)
    :SpawnScheduled(.5, .5)
  
  local FactorySA6 = SPAWN:New("FactorySA10")
    :InitLimit(50, 1)
    :InitRandomizeZones(SpawnZones)
    :SpawnScheduled(.5, .5)  
  
  local msg = "Asaloyeh Factory Strike HARD\n"
    .. "We have received intelligence that Iran is developing chemical weapons in a new\n"
    .. "facility on the Iranian coast NW of Lavan Island.\n"
    .. "Grid: 'XL'\n"
    .. "LL: N 27.33.27  E 52.33.22.\n"
    .. "Our satellite intel suggests that the factory is guarded by multiple SA-6, SA-10, SA-11, and AAA sites.\n"
    .. "Destroy the factory and limit the air defenses in the region to allow for follow up strikes."

  MESSAGE:New(msg ,60,""):ToAll()
  
end --function


-- END FUNCTIONS SECTION

-- XXX BEGIN ANTI-SHIP STRIKE SECTION


-- END ANTI-SHIP STRIKE SECTION


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
EWRIran = MENU_COALITION_COMMAND:New( coalition.side.BLUE,"ACTIVATE IRAN EWR SITES",MenuGroundAttack,IranEWR, "")


-- Legacy CAP

-- XXX Spawn CAP aircraft
function SpawnCAP( _args )
  _args[2]:InitRandomizeTemplate(_args[3])
  _args[2]:InitRandomizeZones(_args[1])
  _args[2]:InitRandomizeRoute(1,4,10000)
  _args[2]:Spawn()
end --function

--CAP menu items
function LegacyCap()

  IranCAPAircraft = {"Iran_Mig31","Iran_Mig29","Iran_Mig21","Iran_Mig21","Iran_Mig29"}

  --Shiraz
  ShirazZones = {
    ZONE:New("ShirazCAPZone"),
    }
  
  ShirazCAP1 = SPAWN:New("ShirazCAP1")
  
  ShirazCAPAircraft = {
    "Iran_Mig31",
    "Iran_Mig31",
    "Iran_Mig29",
    "Iran_Mig21",
    "Iran_Mig31",
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
  
end

-- LegacyCap()

-- end legacy cap


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
--BASE:TraceOnOff(false)

--env.info( '*** CSG-1 MOOSE MISSION SCRIPT END *** ' )
