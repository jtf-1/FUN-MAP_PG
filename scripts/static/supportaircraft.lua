-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- BEGIN SUPPORT AIRCRAFT SECTION
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--- table of support aircraft to be spawned
TableSpawnSupport = { -- {spawnobjectname, spawnzone}
  {
    spawnobject = "Tanker_KC135_Arco1", 
    spawnzone = "AAR_1_Zone"
  },
  {
    spawnobject = "Tanker_KC135_Arco2", 
    spawnzone = "AAR_2_Zone"
  },
  {
    spawnobject = "Tanker_KC135_Arco3", 
    spawnzone = "AAR_3_Zone"
  },
  {
    spawnobject = "Tanker_KC135_Arco4", 
    spawnzone = "AAR_4_Zone"
  },
  {
    spawnobject = "Tanker_KC135MPRS_Shell1", 
    spawnzone = "AAR_1_Zone"
  },
  {
    spawnobject = "Tanker_KC135MPRS_Shell2", 
    spawnzone = "AAR_2_Zone"
  },
  {
    spawnobject = "Tanker_KC135MPRS_Shell3", 
    spawnzone = "AAR_3_Zone"
  },
  {
    spawnobject = "Tanker_KC135MPRS_Shell4", 
    spawnzone = "AAR_4_Zone"
  },
  {
    spawnobject = "Tanker_KC135_Texaco1", 
    spawnzone = "AAR_1_Zone"
  },
  {
    spawnobject = "Tanker_KC135_Texaco2", 
    spawnzone = "AAR_2_Zone"
  },
  {
    spawnobject = "Tanker_KC135_Texaco3", 
    spawnzone = "AAR_3_Zone"
  },
  {
    spawnobject = "Tanker_KC135_Texaco4", 
    spawnzone = "AAR_4_Zone"
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
