-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- BEGIN LEGACY CARRIER Support
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

if LegacyCvn then

    env.info("JTF-1 Legacy CVN support enabled")
  
    -- local CVN = {}
    
    -- CVN.forrestal = GROUP:FindByName("CSG_CarrierGrp_Forrestal")
    -- CVN.forrestal:PatrolRoute()
  
    -------------------------------
    --- Recovery Tanker Forrestal ---
    -------------------------------
  
  --   Spawn_Tanker_S3B_Texaco6 = RECOVERYTANKER:New( UNIT:FindByName( "CSG_CarrierGrp_Forrestal"), "Tanker_S3B_Texaco6" )
  -- 
  --   Spawn_Tanker_S3B_Texaco6:SetCallsign(CALLSIGN.Tanker.Texaco, 6)
  --   Spawn_Tanker_S3B_Texaco6:SetTACAN(15, "TEX")
  --   Spawn_Tanker_S3B_Texaco6:SetRadio(317.775)
  --   Spawn_Tanker_S3B_Texaco6:SetModex(049)
  --   Spawn_Tanker_S3B_Texaco6:SetTakeoffAir()
  --   Spawn_Tanker_S3B_Texaco6:SetAltitude(8000)
  --   Spawn_Tanker_S3B_Texaco6:SetRespawnInAir()
  --   Spawn_Tanker_S3B_Texaco6:Start()
  
    --------------------------
    --- Rescue Helo Forrestal ---
    ---------------------------
  
    Spawn_Rescuehelo_Forrestal = RESCUEHELO:New(UNIT:FindByName("CSG_CarrierGrp_Forrestal"), "RescueHelo_Forrestal")
  
    Spawn_Rescuehelo_Forrestal:SetTakeoffAir()
    Spawn_Rescuehelo_Forrestal:SetRespawnInAir()
    Spawn_Rescuehelo_Forrestal:SetRescueStopBoatOff()
    Spawn_Rescuehelo_Forrestal:SetOffsetZ(800)
    --Spawn_Rescuehelo_Forrestal:Start()
  
    -----------------------
    --- Airboss Forrestal ---
    -----------------------
  
    -- Create AIRBOSS object for Forrestal
    airbossForrestal=AIRBOSS:New( "CSG_CarrierGrp_Forrestal", "Forrestal" )
  
    -- Set load and save path/name for persistent LSO grades
    airbossForrestal:Load(nil, "PG_Airboss-USS Forrestal_LSOgrades.csv")
    airbossForrestal:SetAutoSave(nil, "PG_Airboss-USS Forrestal_LSOgrades.csv")
  
    local ForrestalOffset_deg = 0 -- Marshal offset
    local ForrestalDefaultPlayerSkill = AIRBOSS.Difficulty.Normal -- default skill level
    local ForrestalRadioRelayMarshall = UNIT:FindByName("RadioRelayMarshall_Forrestal") -- radio relay unit for Marshal
    local ForrestalRadioRelayPaddles = UNIT:FindByName("RadioRelayPaddles_Forrestal") -- radio relay unit for LSO
    local ForrestalClouds, ForrestalVisibility, ForrestalFog, ForrestalDust = airbossForrestal:_GetStaticWeather() -- get mission weather (assumes static weather is used)
  
    --- Determine Daytime Case
    -- adjust case according to weather state
  
    local ForrestalCase = 1 -- default to Case I
  
    if (ForrestalClouds.base < 305 and ForrestalClouds.density > 8) or ForrestalVisibility < 8000 then -- cloudbase < 1000' or viz < 5 miles, Case III
      ForrestalCase = 3
    elseif ForrestalFog and ForrestalFog.thickness > 60 and ForrestalFog.visibility < 8000 then -- visibility in fog < 5nm, Case III
      ForrestalCase = 3
    elseif (ForrestalClouds.base < 915 and ForrestalClouds.density > 8) and ForrestalVisibility >= 8000 then -- cloudbase < 3000', viz > 5 miles, Case II
      ForrestalCase = 2
    end     
  
    -- Forrestal AIRBOSS configuration
    airbossForrestal:SetMenuRecovery(30, 25, false, 30)
    airbossForrestal:SetSoundfilesFolder("Airboss Soundfiles/")
    --airbossForrestal:SetVoiceOversLSOByRaynor()
    --airbossForrestal:SetVoiceOversMarshalByFF("Airboss Soundpack Marshal FF/")
    airbossForrestal:SetTACAN(74,"X","STN")
    airbossForrestal:SetICLS( 4,"STN" )
    airbossForrestal:SetCarrierControlledArea( 50 )
    airbossForrestal:SetDespawnOnEngineShutdown( true )
    airbossForrestal:SetRecoveryTanker( Spawn_Tanker_S3B_Texaco1 )
    airbossForrestal:SetMarshalRadio( 285.675, "AM" )
    airbossForrestal:SetLSORadio( 308.475, "AM" )
    airbossForrestal:SetRadioRelayLSO( ForrestalRadioRelayPaddles )
    airbossForrestal:SetRadioRelayMarshal( ForrestalRadioRelayMarshall )
    airbossForrestal:SetAirbossNiceGuy( true ) -- allow direct to commence
    airbossForrestal:SetDefaultPlayerSkill(ForrestalDefaultPlayerSkill)
    airbossForrestal:SetRespawnAI()
    airbossForrestal:SetMenuMarkZones(false) -- disable marking zones using smoke or flares
  
    --- Fun Map Recovery Windows 
    -- sunrise and sunset dependant on mission date
    -- https://www.timeanddate.com/sun/united-arab-emirates/abu-dhabi?month=4&year=2011
    -- Sunrise @ 08:00, Sunset @ 19:00, recovery @ sunrise+10 and sunset-10
    -- otherwise, intiate recovery through F10 menu
    airbossForrestal:AddRecoveryWindow( "5:55", "18:35", ForrestalCase, ForrestalOffset_deg, true, 30 ) 
    airbossForrestal:AddRecoveryWindow( "18:35", "5:55+1", 3, ForrestalOffset_deg, true, 30 ) 
    airbossForrestal:AddRecoveryWindow( "5:55+1", "18:35+1", ForrestalCase, ForrestalOffset_deg, true, 30 ) 
  
    -- Start AIRBOSS Forrestal
    airbossForrestal:Start()
  
    -- Set AIRBOSS control of Hawk tanker recovery 
    Spawn_Tanker_S3B_Texaco6:SetRecoveryAirboss(false)
    
end -- legacy CVN support

-- XXX BEGIN BOAT SECTION

tarawa = GROUP:FindByName( "CSG_CarrierGrp_Tarawa" )
tarawa:PatrolRoute()

-- XX BEGIN AIRBOSS TARAWA 

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

-- END LEGACY CARRIER Support
