-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- BEGIN BVRGCI SECTION.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--
-- Each Menu level has an associated function which;
-- 1) adds the menu item for the level
-- 2) calls the function for the next level
--
-- Functions fit into the following menu map;
--
-- AI BVRGCI (menu root)
--   |_Group Size (menu level 1)
--     |_Altitude (menu level 2)
--       |_Formation (menu level 3)
--         |_Spacing (menu level 4)
--           |_Aircraft Type (command level 4) 
--   |_Remove Adversaries (command level 2)

--- BVRGCI default settings and values.
-- @type BVRGCI
-- @field #table Menu root BVRGCI F10 menu
-- @field #table SubMenu BVRGCI submenus
-- @field #number headingDefault Default heading for adversary spawns
-- @field #boolean Destroy When set to true, spawned adversary groups will be removed
local BVRGCI = {
    Menu            = {},
    SubMenu         = {},
    Spawn           = {},
    headingDefault  = 150,
    Destroy         = false,
    defaultRadio = "377.8",
  }
   
BVRGCI.rangeRadio = (JTF1.rangeRadio and JTF1.rangeRadio or BVRGCI.defaultRadio)

  --- ME Zone object for BVRGCI area boundary
  -- @field #string ZoneBvr 
  BVRGCI.ZoneBvr = ZONE:FindByName("ZONE_BVR")
  --- ME Zone object for adversary spawn point
  -- @field #string ZoneBvrSpawn 
  BVRGCI.ZoneBvrSpawn = ZONE:FindByName("ZONE_BVR_SPAWN")
  --- ME Zone object for adversary spawn waypoint 1
  -- @field #string ZoneBvrWp1 
  BVRGCI.ZoneBvrWp1 = ZONE:FindByName("ZONE_BVR_WP1")
  
  --- Sizes of adversary groups
  -- @type BVRGCI.Size
  -- @field #number Pair Section size group.
  -- @field #number Four Flight size group.
  BVRGCI.Size = {
    Pair = 2,
    Four = 4,
  }
  
  --- Levels at which adversary groups may be spawned
  -- @type BVRGCI.Altitude Altitude name, Altitude in metres for adversary spawns.
  -- @field #number High Altitude, in metres, for High Level spawn.
  -- @field #number Medium Altitude, in metres, for Medium Level spawns.
  -- @field #number Low Altitude, in metres, for Low Level spawns.
  BVRGCI.Altitude = {
    High    = 9144, -- 30,000ft
    Medium  = 6096, -- 20,000ft
    Low     = 3048, -- 10,000ft
  }
      
  --- Adversary types
  -- @type BVRGCI.Adversary 
  -- @list <#string> Display name for adversary type.
  -- @list <#string> Name of spawn template for adversary type.
  BVRGCI.Adversary = { 
    {"F-4", "BVR_F4"},
    {"F-14A", "BVR_F14A" },
    {"MiG-21", "BVR_MIG21"},
    {"MiG-23", "BVR_MIG23"},
    {"MiG-29A", "BVR_MIG29A"},
    {"Su-25", "BVR_SU25"},
    {"Su-34", "BVR_SU34"},
  }
  
  -- @field #table BVRGCI.BvrSpawnVec3 Vec3 coordinates for spawnpoint.
  BVRGCI.BvrSpawnVec3 = COORDINATE:NewFromVec3(BVRGCI.ZoneBvrSpawn:GetPointVec3())
  -- @field #table BvrWp1Vec3 Vec3 coordintates for wp1.
  BVRGCI.BvrWp1Vec3 = COORDINATE:NewFromVec3(BVRGCI.ZoneBvrWp1:GetPointVec3())
  -- @field #number Heading Heading from spawn point to wp1.
  BVRGCI.Heading = COORDINATE:GetAngleDegrees(BVRGCI.BvrSpawnVec3:GetDirectionVec3(BVRGCI.BvrWp1Vec3))
  
  --- Spawn adversary aircraft with menu tree selected parameters.
  -- @param #string typeName Aircraft type name
  -- @param #string typeSpawnTemplate Airctraft type spawn template
  -- @param #number Qty Quantity to spawn
  -- @param #number Altitude Alititude at which to spawn adversary group
  -- @param #number Formation ID for Formation, and spacing, in which to spawn adversary group
  function BVRGCI.SpawnType(typeName, typeSpawnTemplate, Qty, Altitude, Formation) 
    local spawnHeading = BVRGCI.Heading
    local spawnVec3 = BVRGCI.BvrSpawnVec3
    spawnVec3.y = Altitude
    local spawnAdversary = SPAWN:New(typeSpawnTemplate)
    spawnAdversary:InitGrouping(Qty) 
    spawnAdversary:InitHeading(spawnHeading)
    spawnAdversary:OnSpawnGroup(
        function ( SpawnGroup, Formation, typeName )
          -- reset despawn flag
          BVRGCI.Destroy = false
          -- set formation for spawned AC
          SpawnGroup:SetOption(AI.Option.Air.id.FORMATION, Formation)
          -- add scheduled funtion, 5 sec interval
          local CheckAdversary = SCHEDULER:New( SpawnGroup, 
            function (CheckAdversary)
              if SpawnGroup then
                -- remove adversary group if it has left the BVR/GCI zone, or the remove all adversaries menu option has been selected
                if (SpawnGroup:IsNotInZone(BVRGCI.ZoneBvr) or (BVRGCI.Destroy)) then 
                  local groupName = SpawnGroup.GroupName
                  local msgDestroy = "All players, BVR adversary group " .. groupName .. " removed."
                  local msgLeftZone = "All players, BVR adversary group " .. groupName .. " left zone and was removed."
                  SpawnGroup:Destroy()
                  SpawnGroup = nil
                  local msg = (BVRGCI.Destroy and msgDestroy or msgLeftZone)
                  if MISSIONSRS.Radio then -- if MISSIONSRS radio object has been created, send message via default broadcast.
                    MISSIONSRS:SendRadio(msg, BVRGCI.rangeRadio)
                  else -- otherwise, send in-game text message
                    MESSAGE:New(msg):ToAll()
                  end
                  --MESSAGE:New(BVRGCI.Destroy and msgDestroy or msgLeftZone):ToAll()
                end
              end
            end,
          {}, 0, 5 )
        end,
        Formation, typeName
      )
    spawnAdversary:SpawnFromVec3(spawnVec3)
    local msg = "All players, BVR Adversary group spawned."
    if MISSIONSRS.Radio then -- if MISSIONSRS radio object has been created, send message via default broadcast.
      MISSIONSRS:SendRadio(msg, BVRGCI.rangeRadio)
    else -- otherwise, send in-game text message
      MESSAGE:New(msg):ToAll()
    end
    --MESSAGE:New(_msg):ToAll()
  end
  
  --- Remove all spawned BVRGCI adversaries
  function BVRGCI.RemoveAdversaries()
    BVRGCI.Destroy = true
  end
  
  --- Add BVR/GCI MENU Adversary Type.
  -- @param #table ParentMenu Parent menu with which each command should be associated.
  function BVRGCI.BuildMenuType(ParentMenu)
    for i, v in ipairs(BVRGCI.Adversary) do
      local typeName = v[1]
      local typeSpawnTemplate = v[2]
      -- add Type spawn commands if spawn template exists, else send message that it doesn't
      if GROUP:FindByName(typeSpawnTemplate) ~= nil then
          MENU_COALITION_COMMAND:New(coalition.side.BLUE, typeName, ParentMenu, BVRGCI.SpawnType, typeName, typeSpawnTemplate, BVRGCI.Spawn.Qty, BVRGCI.Spawn.Level, ENUMS.Formation.FixedWing[BVRGCI.Spawn.Formation][BVRGCI.Spawn.Spacing])
      else
        _msg = "Spawn template " .. typeName .. " was not found and could not be added to menu."
        MESSAGE:New(_msg):ToAll()
      end
    end
  end
  
  --- Add BVR/GCI MENU Formation Spacing.
  -- @param #string Spacing Spacing to apply to adversary group formation.
  -- @param #string MenuText Text to display for menu option.
  -- @param #object ParentMenu Parent menu with which this menu should be associated.
  function BVRGCI.BuildMenuSpacing(Spacing, ParentMenu)
    local MenuName = Spacing
    local MenuText = Spacing
    BVRGCI.SubMenu[MenuName] = MENU_COALITION:New(coalition.side.BLUE, MenuText, ParentMenu)
    BVRGCI.Spawn.Spacing = Spacing
    -- Build Type menus
    BVRGCI.BuildMenuType(BVRGCI.SubMenu[MenuName])
  end
  
  --- Add BVR/GCI MENU Formation.
  -- @param #string Formation Name of formation in which adversary group should fly.
  -- @param #string MenuText Text to display for menu option.
  -- @param #object ParentMenu Parent menu with which this menus should be associated.
  function BVRGCI.BuildMenuFormation(Formation, MenuText, ParentMenu)
    local MenuName = Formation
    BVRGCI.SubMenu[MenuName] = MENU_COALITION:New(coalition.side.BLUE, MenuText, ParentMenu)
    BVRGCI.Spawn.Formation = Formation
    -- Build formation spacing menus
    BVRGCI.BuildMenuSpacing("Open", BVRGCI.SubMenu[MenuName])
    BVRGCI.BuildMenuSpacing("Close", BVRGCI.SubMenu[MenuName])
    BVRGCI.BuildMenuSpacing("Group", BVRGCI.SubMenu[MenuName])
  end
  
  --- Add BVR/GCI MENU Level.
  -- @param #number Altitude Altitude, in metres, at which to adversary group should spawn
  -- @param #string MenuName Text for this item's menu name
  -- 
  function BVRGCI.BuildMenuLevel(Altitude, MenuName, MenuText, ParentMenu)
    BVRGCI.SubMenu[MenuName] = MENU_COALITION:New(coalition.side.BLUE, MenuText, ParentMenu)
    BVRGCI.Spawn.Level = Altitude
    --Build Formation menus
    BVRGCI.BuildMenuFormation("LineAbreast", "Line Abreast", BVRGCI.SubMenu[MenuName])
    BVRGCI.BuildMenuFormation("Trail", "Trail", BVRGCI.SubMenu[MenuName])
    BVRGCI.BuildMenuFormation("Wedge", "Wedge", BVRGCI.SubMenu[MenuName])
    BVRGCI.BuildMenuFormation("EchelonRight", "Echelon Right", BVRGCI.SubMenu[MenuName])
    BVRGCI.BuildMenuFormation("EchelonLeft", "Echelon Left", BVRGCI.SubMenu[MenuName])
    BVRGCI.BuildMenuFormation("FingerFour", "Finger Four", BVRGCI.SubMenu[MenuName])
    BVRGCI.BuildMenuFormation("Spread", "Spread", BVRGCI.SubMenu[MenuName])
    BVRGCI.BuildMenuFormation("BomberElement", "Diamond", BVRGCI.SubMenu[MenuName])
  end
  
  --- Add BVR/GCI MENU Group Size.
  -- @param #number Qty Quantity of aircraft in enemy flight.
  -- @param #string MenuName Text for this item's menu name
  -- @param #object ParentMenu to which this menu item belongs 
  function BVRGCI.BuildMenuQty(Qty, MenuName, ParentMenu)
    MenuText = MenuName
    BVRGCI.SubMenu[MenuName] = MENU_COALITION:New(coalition.side.BLUE, MenuText, ParentMenu)
    BVRGCI.Spawn.Qty = Qty
    -- Build Level menus
    BVRGCI.BuildMenuLevel(BVRGCI.Altitude.High, "High", "High Level",  BVRGCI.SubMenu[MenuName])
    BVRGCI.BuildMenuLevel(BVRGCI.Altitude.Medium, "Medium", "Medium Level",  BVRGCI.SubMenu[MenuName])
    BVRGCI.BuildMenuLevel(BVRGCI.Altitude.Low, "Low", "Low Level",  BVRGCI.SubMenu[MenuName])
  end

  
  
  --- Add BVRGCI MENU Root.
  function BVRGCI.BuildMenuRoot()
    BVRGCI.Menu = MENU_COALITION:New(coalition.side.BLUE, "AI BVR/GCI")
      -- Build group size menus
      BVRGCI.BuildMenuQty(2, "Pair", BVRGCI.Menu)
      BVRGCI.BuildMenuQty(4, "Four", BVRGCI.Menu)
      -- level 2 command
      BVRGCI.MenuRemoveAdversaries = MENU_COALITION_COMMAND:New(coalition.side.BLUE, "Remove BVR Adversaries", BVRGCI.Menu, BVRGCI.RemoveAdversaries)
  end
  
  BVRGCI.BuildMenuRoot()
  
--- END BVRGCI SECTION