-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- Dynamic Deck Templates
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--
-- NOTE: dynamic_deck_population.lua should be loaded before this file.
--

if not DYNDECK then -- Error prevention. Create empty container if DDP module not loaded.
    DYNDECK = {}
end

function DYNDECK.sc_(shipID, templateName) -- template for deck template function

    local namePrefix = "dyndeck_" .. shipID .. templateName
    

end

--- TEMPLATES GO UNDER HERE

function DYNDECK.sc_lch_low(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. templateName

    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 14.835235254354,
                                                ["angle"] = 645.65147128633,
                                                ["x"] = -54.859983171871,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 34.074706103411,
                                                ["angle"] = 816.1875924987,
                                                ["x"] = 71.571823411897,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -34.290094792497,
                                                ["angle"] = 777.80780224735,
                                                ["x"] = -119.2372580741,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 25.097856989679,
                                                ["angle"] = 815.24511470263,
                                                ["x"] = -34.721702907785,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 33.277117391028,
                                                ["angle"] = 32.953637373683,
                                                ["x"] = -34.732073358085,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Mover-1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 22.11354181959,
                                                ["angle"] = 793.2539661275,
                                                ["x"] = -48.306093823847,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-32A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Mover-2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 21.835171682406,
                                                ["angle"] = 793.2539661275,
                                                ["x"] = -42.875676980416,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-32A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Mover-3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 35.841876281434,
                                                ["angle"] = 12.568191710388,
                                                ["x"] = -46.473225983412,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-32A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Crain", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 26.547575156325,
                                                ["angle"] = 856.06837148444,
                                                ["x"] = -69.02095322825,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-36A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Rescue", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 20.684031571391,
                                                ["angle"] = 815.19275482507,
                                                ["x"] = -72.889667764425,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-p25",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq SH-60B-1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "standard",
                                            ["category"] = "Helicopters",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 21.156945293163,
                                                ["angle"] = 831.17997077334,
                                                ["x"] = -63.23041749546,
                                            }, -- end of ["offsets"]
                                            ["type"] = "SH-60B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq SH-60B-2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "standard",
                                            ["category"] = "Helicopters",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 20.050660831591,
                                                ["angle"] = 831.17997077334,
                                                ["x"] = -51.605714756815,
                                            }, -- end of ["offsets"]
                                            ["type"] = "SH-60B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq E-2D", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vaw-125 tigertails",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 24.709702325664,
                                                ["angle"] = 827.79403202447,
                                                ["x"] = -79.053240272477,
                                            }, -- end of ["offsets"]
                                            ["type"] = "E-2C",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-Y 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.669406083255,
                                                ["angle"] = 431.15050621621,
                                                ["x"] = -81.188579290842,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-P 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "purple",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 27.639842598229,
                                                ["angle"] = 432.04062413473,
                                                ["x"] = -72.948655685138,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-W 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.902145490903,
                                                ["angle"] = 407.32676192649,
                                                ["x"] = -42.260791551122,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-W 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.546159565233,
                                                ["angle"] = 406.59372364065,
                                                ["x"] = -41.202128437865,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-R 6", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 27.91945951727,
                                                ["angle"] = 433.36707436624,
                                                ["x"] = -31.165410408404,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-R 7", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 28.818860063248,
                                                ["angle"] = 431.70901157685,
                                                ["x"] = -30.804706359764,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-Y 8", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 35.823568424595,
                                                ["angle"] = 432.51186303277,
                                                ["x"] = -31.291805946785,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-Y 9", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 20.322398460964,
                                                ["angle"] = 361.77366844943,
                                                ["x"] = -71.458887492548,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-G 10", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "green",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 18.350873921939,
                                                ["angle"] = 4.3825975185338,
                                                ["x"] = -83.19495052369,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-G 11", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "green",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.701075990667,
                                                ["angle"] = 4.3825975185338,
                                                ["x"] = -74.240538147751,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT F-14B 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-2 F-14B NK100",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 18.179512487887,
                                                ["angle"] = 496.26874060812,
                                                ["x"] = -154.54050081595,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT F-14B 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-31 F-14B NK207",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 6.7391817566416,
                                                ["angle"] = 496.30364719316,
                                                ["x"] = -155.27503906218,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT F-14B 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-2 F-14B NK101_NPD",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -5.0029690814996,
                                                ["angle"] = 496.30364719316,
                                                ["x"] = -155.87628096397,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT F-14B 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-31 F-14B NK207",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -13.005046297121,
                                                ["angle"] = 497.1239519416,
                                                ["x"] = -146.66496187523,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT F-14B 5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-2 F-14B NK102_NPD",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -15.307549672268,
                                                ["angle"] = 491.24219236238,
                                                ["x"] = -135.97118197623,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT F-14B 6", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-31 F-14B NK201 CO",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -21.875030227257,
                                                ["angle"] = 491.22473906986,
                                                ["x"] = -120.15838880036,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT Tech-Y 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 14.618622991992,
                                                ["angle"] = 149.85579067227,
                                                ["x"] = -143.34737720138,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT Tech-R 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 3.8587904552019,
                                                ["angle"] = 150.3270295703,
                                                ["x"] = -148.39389397052,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT Tech-R 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 2.9951744287039,
                                                ["angle"] = 150.60628225062,
                                                ["x"] = -148.6959220144,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT Tech-B 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -3.2820572675681,
                                                ["angle"] = 148.33735422303,
                                                ["x"] = -146.46714599295,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT Tech-W 5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -5.4176867628193,
                                                ["angle"] = 146.87127765135,
                                                ["x"] = -135.06168999672,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT Tech-Y 6", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -11.185698655444,
                                                ["angle"] = 151.70583967938,
                                                ["x"] = -117.66135621609,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
end

function DYNDECK.sc_lch_med(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. templateName

    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 400 Paul 'Greekbull' Tsaras CO",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -0.56539029044469,
                                                ["angle"] = 435.79308202651,
                                                ["x"] = 49.037352753452,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vfa-25 generic",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -1.9165360388852,
                                                ["angle"] = 435.79308202651,
                                                ["x"] = 60.08834944242,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vmfa-122 high visibility",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -3.3698449825059,
                                                ["angle"] = 435.79308202651,
                                                ["x"] = 70.985443953678,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- *******************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 426 Matt 'Gannon' Wayne",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -4.7172584559018,
                                                ["angle"] = 435.79308202651,
                                                ["x"] = 82.042290909375,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vmfa-122",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -5.6807811134881,
                                                ["angle"] = 435.79308202651,
                                                ["x"] = 92.660709237033,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 6", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vmfa-122",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -6.9761561406201,
                                                ["angle"] = 435.79308202651,
                                                ["x"] = 104.14295655801,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 7", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Clean",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -7.9935357811509,
                                                ["angle"] = 435.79308202651,
                                                ["x"] = 115.02702279532,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 8", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Clean",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -8.8622980860768,
                                                ["angle"] = 435.79308202651,
                                                ["x"] = 125.99653280804,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 9", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vmfa-122",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -8.4189546313416,
                                                ["angle"] = 429.73678952209,
                                                ["x"] = 136.63282885359,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 10", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Clean",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -9.0716331338308,
                                                ["angle"] = 354.47819217609,
                                                ["x"] = 149.78327421946,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L Tech-Y 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 5.3374882673047,
                                                ["angle"] = 116.13602952373,
                                                ["x"] = 42.777801593228,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L Tech-B 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 5.5495708687677,
                                                ["angle"] = 117.65446597297,
                                                ["x"] = 47.052935840525,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L Tech-B 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 0.22348151799788,
                                                ["angle"] = 117.65446597297,
                                                ["x"] = 90.125866213387,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L Tech-B 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -1.4497604680265,
                                                ["angle"] = 117.65446597297,
                                                ["x"] = 102.70969022384,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L Tech-W 5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -0.86790735153088,
                                                ["angle"] = 115.90913672097,
                                                ["x"] = 107.96544928822,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 14.835235254354,
                                                ["angle"] = 645.65147128633,
                                                ["x"] = -54.859983171871,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 34.074706103411,
                                                ["angle"] = 816.1875924987,
                                                ["x"] = 71.571823411897,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -34.290094792497,
                                                ["angle"] = 777.80780224735,
                                                ["x"] = -119.2372580741,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 25.097856989679,
                                                ["angle"] = 815.24511470263,
                                                ["x"] = -34.721702907785,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 33.277117391028,
                                                ["angle"] = 32.953637373683,
                                                ["x"] = -34.732073358085,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Mover-1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 22.11354181959,
                                                ["angle"] = 793.2539661275,
                                                ["x"] = -48.306093823847,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-32A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Mover-2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 21.835171682406,
                                                ["angle"] = 793.2539661275,
                                                ["x"] = -42.875676980416,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-32A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Mover-3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 35.841876281434,
                                                ["angle"] = 12.568191710388,
                                                ["x"] = -46.473225983412,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-32A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Crain", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 26.547575156325,
                                                ["angle"] = 856.06837148444,
                                                ["x"] = -69.02095322825,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-36A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Rescue", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 20.684031571391,
                                                ["angle"] = 815.19275482507,
                                                ["x"] = -72.889667764425,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-p25",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq SH-60B-1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "standard",
                                            ["category"] = "Helicopters",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 21.156945293163,
                                                ["angle"] = 831.17997077334,
                                                ["x"] = -63.23041749546,
                                            }, -- end of ["offsets"]
                                            ["type"] = "SH-60B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq SH-60B-2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "standard",
                                            ["category"] = "Helicopters",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 20.050660831591,
                                                ["angle"] = 831.17997077334,
                                                ["x"] = -51.605714756815,
                                            }, -- end of ["offsets"]
                                            ["type"] = "SH-60B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq E-2D", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vaw-125 tigertails",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 24.709702325664,
                                                ["angle"] = 827.79403202447,
                                                ["x"] = -79.053240272477,
                                            }, -- end of ["offsets"]
                                            ["type"] = "E-2C",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-Y 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.669406083255,
                                                ["angle"] = 431.15050621621,
                                                ["x"] = -81.188579290842,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-P 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "purple",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 27.639842598229,
                                                ["angle"] = 432.04062413473,
                                                ["x"] = -72.948655685138,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-W 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.902145490903,
                                                ["angle"] = 407.32676192649,
                                                ["x"] = -42.260791551122,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-W 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.546159565233,
                                                ["angle"] = 406.59372364065,
                                                ["x"] = -41.202128437865,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-R 6", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 27.91945951727,
                                                ["angle"] = 433.36707436624,
                                                ["x"] = -31.165410408404,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-R 7", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 28.818860063248,
                                                ["angle"] = 431.70901157685,
                                                ["x"] = -30.804706359764,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-Y 8", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 35.823568424595,
                                                ["angle"] = 432.51186303277,
                                                ["x"] = -31.291805946785,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-Y 9", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 20.322398460964,
                                                ["angle"] = 361.77366844943,
                                                ["x"] = -71.458887492548,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-G 10", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "green",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 18.350873921939,
                                                ["angle"] = 4.3825975185338,
                                                ["x"] = -83.19495052369,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-G 11", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "green",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.701075990667,
                                                ["angle"] = 4.3825975185338,
                                                ["x"] = -74.240538147751,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 F-18 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Generic",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -33.344235799775,
                                                ["angle"] = 234.05047378848,
                                                ["x"] = -107.29391769261,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Clean",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -33.406129444774,
                                                ["angle"] = 234.05047378848,
                                                ["x"] = -95.604236622335,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 Tech-B 1", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "purple",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -31.964097133702,
                                                ["angle"] = 118.54458389148,
                                                ["x"] = -110.23901828911,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 Tech-R 2", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -29.671642155997,
                                                ["angle"] = 120.1328335108,
                                                ["x"] = -103.49094182992,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 Tech-B 3", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -25.072092217455,
                                                ["angle"] = 116.97378756469,
                                                ["x"] = -105.05066039867,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 Tech-W 4", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -27.725434969865,
                                                ["angle"] = 119.50451498008,
                                                ["x"] = -98.238166449895,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 Tech-B 5", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -26.717017857683,
                                                ["angle"] = 116.86906780957,
                                                ["x"] = -93.431793780025,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- ********************************************************
    -- Creats aircraft and techs on Fan Tail of Nimitz Class Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT F-18-2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 401 Brennan 'Goonie' Haltli  XO Alternate 1994",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 6.5562057387847,
                                                ["angle"] = 6.2151932331278,
                                                ["x"] = -153.90243998348,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Fan Tail of Nimitz Class Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT F-18-1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 400 Paul 'Greekbull' Tsaras CO Low Vis",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.62341317287,
                                                ["angle"] = 6.1802866480879,
                                                ["x"] = -153.13519210902,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Fan Tail of Nimitz Class Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT F-18-3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VMFA-122C_DC_00_CAG_Terry",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -3.299429679681,
                                                ["angle"] = 6.2151932331278,
                                                ["x"] = -154.30318520217,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Fan Tail of Nimitz Class Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT F-18-4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 410 Dargel 'Loco' Napoles",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -12.684961593476,
                                                ["angle"] = 7.0354979815652,
                                                ["x"] = -145.46005275256,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Fan Tail of Nimitz Class Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT F-18-5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 407 Scott 'Bonz' Reagan CO Low Vis OS",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -14.27002078993,
                                                ["angle"] = 1.1537384023443,
                                                ["x"] = -134.06044829341,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Fan Tail of Nimitz Class Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT F-18-6", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VMFA-122C_DC_000_POM",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -21.202331190479,
                                                ["angle"] = 1.1362851098243,
                                                ["x"] = -119.57187523335,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioL F-14 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vf-31 tomcatters nk101 (2004)",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 25.272174412871,
                                                ["angle"] = 55.416024846851,
                                                ["x"] = -137.05946340778,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioL F-14 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-2 F-14B NK102",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 25.90766034143,
                                                ["angle"] = 55.276398506692,
                                                ["x"] = -125.05018529034,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioL F-14 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-2 F-14B NK103",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 26.688365467764,
                                                ["angle"] = 55.171678751572,
                                                ["x"] = -113.62551094625,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioL Tech-W 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 24.249266486735,
                                                ["angle"] = 47.684216260516,
                                                ["x"] = -118.84548836107,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioL Tech-B 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 20.198280514752,
                                                ["angle"] = 27.804916080299,
                                                ["x"] = -119.93375446631,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioL Tech-B 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 19.50378327452,
                                                ["angle"] = 28.241248393297,
                                                ["x"] = -129.01825825982,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioL Tech-B 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 19.680574336987,
                                                ["angle"] = 27.141690964541,
                                                ["x"] = -110.40087259709,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioL Tech-Y 5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 17.991715812614,
                                                ["angle"] = 30.108750692932,
                                                ["x"] = -135.51865999092,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioL Tech-Y 6", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 17.751052416906,
                                                ["angle"] = 30.894148856329,
                                                ["x"] = -110.36489862637,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    
end

function DYNDECK.sc_lch_hvy(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. templateName

    -- Creats F-18s and techs on Catapult 1 Nimitz Carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat1 F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 402 Alex 'Red Sky' Jonischskies Hi Viz",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 22.10437053479,
                                                ["angle"] = 10.159637342635,
                                                ["x"] = 83.262039503581,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats F-18s and techs on Catapult 1 Nimitz Carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat1 F-18 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 402 Alex 'Red Sky' Jonischskies Hi Viz",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 15.950453495473,
                                                ["angle"] = 3.6495592326962,
                                                ["x"] = 91.559690927119,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats F-18s and techs on Catapult 1 Nimitz Carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat1 F-18 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 402 Alex 'Red Sky' Jonischskies Hi Viz",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 13.854390702424,
                                                ["angle"] = 3.6495592326962,
                                                ["x"] = 102.95885426481,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats F-18s and techs on Catapult 1 Nimitz Carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat1 F-18 5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 402 Alex 'Red Sky' Jonischskies Hi Viz",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 13.202562667095,
                                                ["angle"] = 3.6495592326962,
                                                ["x"] = 118.26254908461,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats F-18s and techs on Catapult 1 Nimitz Carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat1 F-18 6", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 402 Alex 'Red Sky' Jonischskies Hi Viz",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 11.614878866904,
                                                ["angle"] = 3.5273861850565,
                                                ["x"] = 131.18367415037,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats F-18s and techs on Catapult 1 Nimitz Carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat1 F-18 7", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 402 Alex 'Red Sky' Jonischskies Hi Viz",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 10.388253750276,
                                                ["angle"] = 3.4575730149768,
                                                ["x"] = 145.08093209201,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 400 Paul 'Greekbull' Tsaras CO",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -0.56539029044469,
                                                ["angle"] = 435.79308202651,
                                                ["x"] = 49.037352753452,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vfa-25 generic",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -1.9165360388852,
                                                ["angle"] = 435.79308202651,
                                                ["x"] = 60.08834944242,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vmfa-122 high visibility",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -3.3698449825059,
                                                ["angle"] = 435.79308202651,
                                                ["x"] = 70.985443953678,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- *******************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 426 Matt 'Gannon' Wayne",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -4.7172584559018,
                                                ["angle"] = 435.79308202651,
                                                ["x"] = 82.042290909375,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vmfa-122",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -5.6807811134881,
                                                ["angle"] = 435.79308202651,
                                                ["x"] = 92.660709237033,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 6", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vmfa-122",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -6.9761561406201,
                                                ["angle"] = 435.79308202651,
                                                ["x"] = 104.14295655801,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 7", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Clean",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -7.9935357811509,
                                                ["angle"] = 435.79308202651,
                                                ["x"] = 115.02702279532,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 8", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Clean",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -8.8622980860768,
                                                ["angle"] = 435.79308202651,
                                                ["x"] = 125.99653280804,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 9", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vmfa-122",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -8.4189546313416,
                                                ["angle"] = 429.73678952209,
                                                ["x"] = 136.63282885359,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 10", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Clean",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -9.0716331338308,
                                                ["angle"] = 354.47819217609,
                                                ["x"] = 149.78327421946,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L Tech-Y 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 5.3374882673047,
                                                ["angle"] = 116.13602952373,
                                                ["x"] = 42.777801593228,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L Tech-B 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 5.5495708687677,
                                                ["angle"] = 117.65446597297,
                                                ["x"] = 47.052935840525,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L Tech-B 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 0.22348151799788,
                                                ["angle"] = 117.65446597297,
                                                ["x"] = 90.125866213387,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L Tech-B 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -1.4497604680265,
                                                ["angle"] = 117.65446597297,
                                                ["x"] = 102.70969022384,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L Tech-W 5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -0.86790735153088,
                                                ["angle"] = 115.90913672097,
                                                ["x"] = 107.96544928822,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- ********************************************************
    -- Creats aircraft and Techs on Bow on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Bow F-18 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Clean",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -3.848033676395,
                                                ["angle"] = 731.99290938249,
                                                ["x"] = 164.12363956928,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and Techs on Bow on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Bow F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VMFA-122C_DC_04_Gigs",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 6.2231174373491,
                                                ["angle"] = 731.99290938249,
                                                ["x"] = 164.16779592396,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and Techs on Bow on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Bow Tech-B 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -0.91963539000237,
                                                ["angle"] = 493.12714795453,
                                                ["x"] = 158.59517086731,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and Techs on Bow on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Bow Tech-W 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 0.96975688117813,
                                                ["angle"] = 493.63329343761,
                                                ["x"] = 158.16543528477,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- ********************************************************
    -- Creats aircraft and techs on Corral on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Corral F-18 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 403 Matt Wurst _Matty_",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 33.491131379038,
                                                ["angle"] = 601.61681425851,
                                                ["x"] = 10.807660643992,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Corral on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Corral F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VMFA-122C_DC_13_Dart",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 33.494579421873,
                                                ["angle"] = 601.61681425851,
                                                ["x"] = 0.76208163411436,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Corral on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Corral Tech-B 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 29.425834836686,
                                                ["angle"] = 495.84986158764,
                                                ["x"] = 8.2282668224776,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Corral on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Corral Tech-W 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 25.478054903549,
                                                ["angle"] = 493.26677429469,
                                                ["x"] = 12.400304287891,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Corral on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Corral Tech-B 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 30.050828571727,
                                                ["angle"] = 495.84986158764,
                                                ["x"] = 2.5874308985216,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 14.835235254354,
                                                ["angle"] = 645.65147128633,
                                                ["x"] = -54.859983171871,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 34.074706103411,
                                                ["angle"] = 816.1875924987,
                                                ["x"] = 71.571823411897,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -34.290094792497,
                                                ["angle"] = 777.80780224735,
                                                ["x"] = -119.2372580741,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 25.097856989679,
                                                ["angle"] = 815.24511470263,
                                                ["x"] = -34.721702907785,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 33.277117391028,
                                                ["angle"] = 32.953637373683,
                                                ["x"] = -34.732073358085,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Mover-1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 22.11354181959,
                                                ["angle"] = 793.2539661275,
                                                ["x"] = -48.306093823847,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-32A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Mover-2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 21.835171682406,
                                                ["angle"] = 793.2539661275,
                                                ["x"] = -42.875676980416,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-32A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Mover-3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 35.841876281434,
                                                ["angle"] = 12.568191710388,
                                                ["x"] = -46.473225983412,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-32A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Crain", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 26.547575156325,
                                                ["angle"] = 856.06837148444,
                                                ["x"] = -69.02095322825,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-36A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Rescue", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 20.684031571391,
                                                ["angle"] = 815.19275482507,
                                                ["x"] = -72.889667764425,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-p25",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq SH-60B-1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "standard",
                                            ["category"] = "Helicopters",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 21.156945293163,
                                                ["angle"] = 831.17997077334,
                                                ["x"] = -63.23041749546,
                                            }, -- end of ["offsets"]
                                            ["type"] = "SH-60B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq SH-60B-2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "standard",
                                            ["category"] = "Helicopters",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 20.050660831591,
                                                ["angle"] = 831.17997077334,
                                                ["x"] = -51.605714756815,
                                            }, -- end of ["offsets"]
                                            ["type"] = "SH-60B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq E-2D", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vaw-125 tigertails",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 24.709702325664,
                                                ["angle"] = 827.79403202447,
                                                ["x"] = -79.053240272477,
                                            }, -- end of ["offsets"]
                                            ["type"] = "E-2C",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-Y 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.669406083255,
                                                ["angle"] = 431.15050621621,
                                                ["x"] = -81.188579290842,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-P 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "purple",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 27.639842598229,
                                                ["angle"] = 432.04062413473,
                                                ["x"] = -72.948655685138,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-W 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.902145490903,
                                                ["angle"] = 407.32676192649,
                                                ["x"] = -42.260791551122,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-W 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.546159565233,
                                                ["angle"] = 406.59372364065,
                                                ["x"] = -41.202128437865,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-R 6", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 27.91945951727,
                                                ["angle"] = 433.36707436624,
                                                ["x"] = -31.165410408404,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-R 7", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 28.818860063248,
                                                ["angle"] = 431.70901157685,
                                                ["x"] = -30.804706359764,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-Y 8", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 35.823568424595,
                                                ["angle"] = 432.51186303277,
                                                ["x"] = -31.291805946785,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-Y 9", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 20.322398460964,
                                                ["angle"] = 361.77366844943,
                                                ["x"] = -71.458887492548,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-G 10", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "green",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 18.350873921939,
                                                ["angle"] = 4.3825975185338,
                                                ["x"] = -83.19495052369,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-G 11", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "green",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.701075990667,
                                                ["angle"] = 4.3825975185338,
                                                ["x"] = -74.240538147751,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT F-14B 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-2 F-14B NK100",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 18.179512487887,
                                                ["angle"] = 496.26874060812,
                                                ["x"] = -154.54050081595,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT F-14B 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-31 F-14B NK207",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 6.7391817566416,
                                                ["angle"] = 496.30364719316,
                                                ["x"] = -155.27503906218,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT F-14B 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-2 F-14B NK101_NPD",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -5.0029690814996,
                                                ["angle"] = 496.30364719316,
                                                ["x"] = -155.87628096397,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT F-14B 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-31 F-14B NK207",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -13.005046297121,
                                                ["angle"] = 497.1239519416,
                                                ["x"] = -146.66496187523,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT F-14B 5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-2 F-14B NK102_NPD",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -15.307549672268,
                                                ["angle"] = 491.24219236238,
                                                ["x"] = -135.97118197623,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT F-14B 6", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-31 F-14B NK201 CO",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -21.875030227257,
                                                ["angle"] = 491.22473906986,
                                                ["x"] = -120.15838880036,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT Tech-Y 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 14.618622991992,
                                                ["angle"] = 149.85579067227,
                                                ["x"] = -143.34737720138,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT Tech-R 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 3.8587904552019,
                                                ["angle"] = 150.3270295703,
                                                ["x"] = -148.39389397052,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT Tech-R 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 2.9951744287039,
                                                ["angle"] = 150.60628225062,
                                                ["x"] = -148.6959220144,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT Tech-B 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -3.2820572675681,
                                                ["angle"] = 148.33735422303,
                                                ["x"] = -146.46714599295,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT Tech-W 5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -5.4176867628193,
                                                ["angle"] = 146.87127765135,
                                                ["x"] = -135.06168999672,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT Tech-Y 6", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -11.185698655444,
                                                ["angle"] = 151.70583967938,
                                                ["x"] = -117.66135621609,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- ********************************************************
    -- Creats aircraft and techs around island on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Island E-2Cx", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vaw-125 tigertails",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 15.467359055958,
                                                ["angle"] = 557.61706381573,
                                                ["x"] = -35.289777030018,
                                            }, -- end of ["offsets"]
                                            ["type"] = "E-2C",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs around island on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Island Tech-Y 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 7.0412458731262,
                                                ["angle"] = 160.11832667399,
                                                ["x"] = -37.131948660666,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs around island on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Island Tech-P 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "purple",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 21.632701538063,
                                                ["angle"] = 162.52688104174,
                                                ["x"] = -33.324470195337,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- ********************************************************
    -- Creats aircraft and techs on finger on Nimitz Carriers
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioL F-18 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vmfa-122",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 23.333414700347,
                                                ["angle"] = 5.7265010425694,
                                                ["x"] = -142.47883139923,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on finger on Nimitz Carriers
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioL F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Clean",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 25.489198597179,
                                                ["angle"] = 5.0109160492517,
                                                ["x"] = -128.62332397449,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on finger on Nimitz Carriers
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioL F-18 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Generic",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 27.432193601072,
                                                ["angle"] = 4.8538364165722,
                                                ["x"] = -116.23331243811,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on finger on Nimitz Carriers
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioL Tech-W 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 24.444990970708,
                                                ["angle"] = 3.7891855728557,
                                                ["x"] = -137.57043416091,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on finger on Nimitz Carriers
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioL Tech-B 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 21.586105244976,
                                                ["angle"] = 3.5622927700964,
                                                ["x"] = -137.10340081464,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on finger on Nimitz Carriers
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioL Tech-B 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 22.108589187036,
                                                ["angle"] = 3.5622927700964,
                                                ["x"] = -125.91383567431,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on finger on Nimitz Carriers
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioL Tech-B 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 26.921940063067,
                                                ["angle"] = 5.5694214098899,
                                                ["x"] = -118.34952748705,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on finger on Nimitz Carriers
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioL Tech-Y 5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 19.591039946127,
                                                ["angle"] = 5.3250753146107,
                                                ["x"] = -114.02559376099,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- ********************************************************
    -- Creats static aircraft and techs on the Point on Nimitz carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Point S-3B 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "S3_VS37",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 34.100242104084,
                                                ["angle"] = 375.42214320003,
                                                ["x"] = 49.68480942168,
                                            }, -- end of ["offsets"]
                                            ["type"] = "S-3B Tanker",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************-- Creats static aircraft and techs on the Point on Nimitz carriers.
    -- Creats static aircraft and techs on the Point on Nimitz carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Point F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 407  Scott 'Bonz' Reagan Custom",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 33.476355525632,
                                                ["angle"] = 375.42214320003,
                                                ["x"] = 59.061195556497,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************-- Creats static aircraft and techs on the Point on Nimitz carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Point Tech-B 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 29.547724102961,
                                                ["angle"] = 119.76631436788,
                                                ["x"] = 56.582054462759,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- ********************************************************
    -- Creats aircraft and techs on street on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Street F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 406 Ryan 'GreenHead' Kitts",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 8.6288177467084,
                                                ["angle"] = 657.50225690737,
                                                ["x"] = -7.0777660328889,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on street on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Street F-18 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 413 Adam 'sickdog' Soloway",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 6.9391671683504,
                                                ["angle"] = 657.50225690737,
                                                ["x"] = 2.5541960441424,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on street on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Street F-18 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vmfa-122 high visibility",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 5.4704260470337,
                                                ["angle"] = 657.50225690737,
                                                ["x"] = 12.099386533672,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on street on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Street Tech-Y 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 3.6189556139081,
                                                ["angle"] = 492.14976357342,
                                                ["x"] = -12.865438917002,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on street on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Street Tech-Y 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 3.0638087495994,
                                                ["angle"] = 17.629646541172,
                                                ["x"] = 14.649276218361,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on street on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Street Tech-Y 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 11.274891964877,
                                                ["angle"] = 19.217896160486,
                                                ["x"] = 19.925853226823,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
end

function DYNDECK.sc_rec_low(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. templateName

    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 14.835235254354,
                                                ["angle"] = 645.65147128633,
                                                ["x"] = -54.859983171871,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 34.074706103411,
                                                ["angle"] = 816.1875924987,
                                                ["x"] = 71.571823411897,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -34.290094792497,
                                                ["angle"] = 777.80780224735,
                                                ["x"] = -119.2372580741,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 25.097856989679,
                                                ["angle"] = 815.24511470263,
                                                ["x"] = -34.721702907785,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 33.277117391028,
                                                ["angle"] = 32.953637373683,
                                                ["x"] = -34.732073358085,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Mover-1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 22.11354181959,
                                                ["angle"] = 793.2539661275,
                                                ["x"] = -48.306093823847,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-32A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Mover-2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 21.835171682406,
                                                ["angle"] = 793.2539661275,
                                                ["x"] = -42.875676980416,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-32A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Mover-3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 35.841876281434,
                                                ["angle"] = 12.568191710388,
                                                ["x"] = -46.473225983412,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-32A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Crain", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 26.547575156325,
                                                ["angle"] = 856.06837148444,
                                                ["x"] = -69.02095322825,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-36A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Rescue", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 20.684031571391,
                                                ["angle"] = 815.19275482507,
                                                ["x"] = -72.889667764425,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-p25",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq SH-60B-1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "standard",
                                            ["category"] = "Helicopters",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 21.156945293163,
                                                ["angle"] = 831.17997077334,
                                                ["x"] = -63.23041749546,
                                            }, -- end of ["offsets"]
                                            ["type"] = "SH-60B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq SH-60B-2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "standard",
                                            ["category"] = "Helicopters",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 20.050660831591,
                                                ["angle"] = 831.17997077334,
                                                ["x"] = -51.605714756815,
                                            }, -- end of ["offsets"]
                                            ["type"] = "SH-60B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq E-2D", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vaw-125 tigertails",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 24.709702325664,
                                                ["angle"] = 827.79403202447,
                                                ["x"] = -79.053240272477,
                                            }, -- end of ["offsets"]
                                            ["type"] = "E-2C",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-Y 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.669406083255,
                                                ["angle"] = 431.15050621621,
                                                ["x"] = -81.188579290842,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-P 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "purple",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 27.639842598229,
                                                ["angle"] = 432.04062413473,
                                                ["x"] = -72.948655685138,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-W 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.902145490903,
                                                ["angle"] = 407.32676192649,
                                                ["x"] = -42.260791551122,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-W 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.546159565233,
                                                ["angle"] = 406.59372364065,
                                                ["x"] = -41.202128437865,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-R 6", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 27.91945951727,
                                                ["angle"] = 433.36707436624,
                                                ["x"] = -31.165410408404,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-R 7", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 28.818860063248,
                                                ["angle"] = 431.70901157685,
                                                ["x"] = -30.804706359764,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-Y 8", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 35.823568424595,
                                                ["angle"] = 432.51186303277,
                                                ["x"] = -31.291805946785,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-Y 9", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 20.322398460964,
                                                ["angle"] = 361.77366844943,
                                                ["x"] = -71.458887492548,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-G 10", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "green",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 18.350873921939,
                                                ["angle"] = 4.3825975185338,
                                                ["x"] = -83.19495052369,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-G 11", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "green",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.701075990667,
                                                ["angle"] = 4.3825975185338,
                                                ["x"] = -74.240538147751,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 F-14 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-31 F-14B NK202",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -35.445383461716,
                                                ["angle"] = 497.94425669004,
                                                ["x"] = -107.40221763538,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 F-14 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-31 F-14B NK203",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -35.411844968488,
                                                ["angle"] = 497.94425669004,
                                                ["x"] = -96.289773067514,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 Tech-B 1", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "purple",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -30.030244498687,
                                                ["angle"] = 382.43836679304,
                                                ["x"] = -111.78160739991,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 Tech-R 2", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -29.671642155997,
                                                ["angle"] = 384.02661641236,
                                                ["x"] = -103.49094182992,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 Tech-B 3", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -25.072092217455,
                                                ["angle"] = 380.86757046625,
                                                ["x"] = -105.05066039867,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 Tech-W 4", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -26.320193673524,
                                                ["angle"] = 383.39829788164,
                                                ["x"] = -99.244388878579,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 Tech-B 5", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -26.404337009315,
                                                ["angle"] = 380.76285071113,
                                                ["x"] = -93.512643472046,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires Tech-G 1", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "green",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 24.571513678523,
												["angle"] = 5.0109160492517,
												["x"] = -109.38597605227,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires Tech-G 2", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "green",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 16.105060984841,
												["angle"] = 111.66798663863,
												["x"] = -76.98153012923,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires Tech-G 3", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "green",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 10.701253058197,
												["angle"] = 112.20903870674,
												["x"] = -43.328997939506,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires Tech-G 4", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "green",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = -20.650600765722,
												["angle"] = 334.66870516596,
												["x"] = -111.11725081114,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires Tech-G 5", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "green",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = -24.862850276162,
												["angle"] = 334.66870516596,
												["x"] = -88.432445487217,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires LSO1-1", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = -20.639902404069,
												["angle"] = 18.991003357727,
												["x"] = -128.87964937709,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_lso4_usa",
											["type"] = "Carrier LSO Personell 4",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires LSO4-2", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = -22.336654402517,
												["angle"] = 40.476006449779,
												["x"] = -130.51429093913,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_lso3_usa",
											["type"] = "Carrier LSO Personell 3",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
    -- ********************************************************
    
end

function DYNDECK.sc_rec_med(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. templateName
    
    -- Creats aircraft and techs on Catapult 2 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2R F-18 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 400 Paul 'Greekbull' Tsaras CO",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -0.42373331700052,
                                                ["angle"] = 479.77537917677,
                                                ["x"] = 48.801296065951,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Catapult 2 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2R F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vfa-25 generic",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -1.9165360388852,
                                                ["angle"] = 479.77537917677,
                                                ["x"] = 60.08834944242,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Catapult 2 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2R F-18 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vmfa-122 high visibility",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -3.3698449825059,
                                                ["angle"] = 479.77537917677,
                                                ["x"] = 70.985443953678,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Catapult 2 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2R Tech-Y 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 5.4478270146218,
                                                ["angle"] = 160.11832667399,
                                                ["x"] = 42.31126245152,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Catapult 2 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2R Tech-B 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 5.6211179625298,
                                                ["angle"] = 161.63676312323,
                                                ["x"] = 47.1192869069,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Catapult 2 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2R Tech-B 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 3.0795751066997,
                                                ["angle"] = 2.0089497358215,
                                                ["x"] = 58.878521974936,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Catapult 2 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2R Tech-B 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -1.1587672360767,
                                                ["angle"] = 5.1330890968913,
                                                ["x"] = 72.452471779597,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Catapult 2 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2R Tech-Y 5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 0.51246658829964,
                                                ["angle"] = 5.5170615323301,
                                                ["x"] = 72.529540910213,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 14.835235254354,
                                                ["angle"] = 645.65147128633,
                                                ["x"] = -54.859983171871,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 34.074706103411,
                                                ["angle"] = 816.1875924987,
                                                ["x"] = 71.571823411897,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -34.290094792497,
                                                ["angle"] = 777.80780224735,
                                                ["x"] = -119.2372580741,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 25.097856989679,
                                                ["angle"] = 815.24511470263,
                                                ["x"] = -34.721702907785,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 33.277117391028,
                                                ["angle"] = 32.953637373683,
                                                ["x"] = -34.732073358085,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Mover-1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 22.11354181959,
                                                ["angle"] = 793.2539661275,
                                                ["x"] = -48.306093823847,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-32A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Mover-2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 21.835171682406,
                                                ["angle"] = 793.2539661275,
                                                ["x"] = -42.875676980416,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-32A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Mover-3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 35.841876281434,
                                                ["angle"] = 12.568191710388,
                                                ["x"] = -46.473225983412,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-32A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Crain", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 26.547575156325,
                                                ["angle"] = 856.06837148444,
                                                ["x"] = -69.02095322825,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-36A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Rescue", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 20.684031571391,
                                                ["angle"] = 815.19275482507,
                                                ["x"] = -72.889667764425,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-p25",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq SH-60B-1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "standard",
                                            ["category"] = "Helicopters",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 21.156945293163,
                                                ["angle"] = 831.17997077334,
                                                ["x"] = -63.23041749546,
                                            }, -- end of ["offsets"]
                                            ["type"] = "SH-60B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq SH-60B-2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "standard",
                                            ["category"] = "Helicopters",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 20.050660831591,
                                                ["angle"] = 831.17997077334,
                                                ["x"] = -51.605714756815,
                                            }, -- end of ["offsets"]
                                            ["type"] = "SH-60B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq E-2D", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vaw-125 tigertails",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 24.709702325664,
                                                ["angle"] = 827.79403202447,
                                                ["x"] = -79.053240272477,
                                            }, -- end of ["offsets"]
                                            ["type"] = "E-2C",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-Y 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.669406083255,
                                                ["angle"] = 431.15050621621,
                                                ["x"] = -81.188579290842,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-P 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "purple",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 27.639842598229,
                                                ["angle"] = 432.04062413473,
                                                ["x"] = -72.948655685138,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-W 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.902145490903,
                                                ["angle"] = 407.32676192649,
                                                ["x"] = -42.260791551122,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-W 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.546159565233,
                                                ["angle"] = 406.59372364065,
                                                ["x"] = -41.202128437865,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-R 6", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 27.91945951727,
                                                ["angle"] = 433.36707436624,
                                                ["x"] = -31.165410408404,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-R 7", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 28.818860063248,
                                                ["angle"] = 431.70901157685,
                                                ["x"] = -30.804706359764,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-Y 8", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 35.823568424595,
                                                ["angle"] = 432.51186303277,
                                                ["x"] = -31.291805946785,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-Y 9", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 20.322398460964,
                                                ["angle"] = 361.77366844943,
                                                ["x"] = -71.458887492548,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-G 10", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "green",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 18.350873921939,
                                                ["angle"] = 4.3825975185338,
                                                ["x"] = -83.19495052369,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-G 11", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "green",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.701075990667,
                                                ["angle"] = 4.3825975185338,
                                                ["x"] = -74.240538147751,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 F-18 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Generic",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -33.344235799775,
                                                ["angle"] = 234.05047378848,
                                                ["x"] = -107.29391769261,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Clean",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -33.406129444774,
                                                ["angle"] = 234.05047378848,
                                                ["x"] = -95.604236622335,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 Tech-B 1", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "purple",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -31.964097133702,
                                                ["angle"] = 118.54458389148,
                                                ["x"] = -110.23901828911,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 Tech-R 2", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -29.671642155997,
                                                ["angle"] = 120.1328335108,
                                                ["x"] = -103.49094182992,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 Tech-B 3", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -25.072092217455,
                                                ["angle"] = 116.97378756469,
                                                ["x"] = -105.05066039867,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 Tech-W 4", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -27.725434969865,
                                                ["angle"] = 119.50451498008,
                                                ["x"] = -98.238166449895,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 Tech-B 5", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -26.717017857683,
                                                ["angle"] = 116.86906780957,
                                                ["x"] = -93.431793780025,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioR F-14 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-2 F-14B NK103",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 25.574397958365,
                                                ["angle"] = 12.184219274949,
                                                ["x"] = -140.22202233315,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioR F-14 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-2 F-14B NK106",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 26.999894815472,
                                                ["angle"] = 24.27935099127,
                                                ["x"] = -126.3733451222,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioR F-14 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-2 F-14B NK102",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 28.245066265035,
                                                ["angle"] = 30.230923740571,
                                                ["x"] = -115.09659159312,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioR Tech-W 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 25.273813754869,
                                                ["angle"] = 3.701919110256,
                                                ["x"] = -131.81665467857,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioR Tech-B 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 23.24388530906,
                                                ["angle"] = 3.5448394775765,
                                                ["x"] = -119.34764000727,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioR Tech-B 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 23.726752809735,
                                                ["angle"] = 3.6146526476563,
                                                ["x"] = -130.88525791424,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioR Tech-B 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 19.911959307137,
                                                ["angle"] = 6.8435117638458,
                                                ["x"] = -114.74868459558,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioR Tech-Y 5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 20.905678081278,
                                                ["angle"] = 5.2727154370509,
                                                ["x"] = -126.96371630654,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioR Tech-Y 6", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 18.76100756934,
                                                ["angle"] = 6.8435117638458,
                                                ["x"] = -110.09545944759,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- ********************************************************
	-- Creats aircraft and techs on Corral on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Corral F-18 1", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "VFA-25 403 Matt Wurst _Matty_",
											["category"] = "Planes",
											["offsets"] = 
											{
												["y"] = 33.491131379038,
												["angle"] = 601.61681425851,
												["x"] = 10.807660643992,
											}, -- end of ["offsets"]
											["type"] = "FA-18C_hornet",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats aircraft and techs on Corral on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Corral F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "VMFA-122C_DC_13_Dart",
											["category"] = "Planes",
											["offsets"] = 
											{
												["y"] = 33.494579421873,
												["angle"] = 601.61681425851,
												["x"] = 0.76208163411436,
											}, -- end of ["offsets"]
											["type"] = "FA-18C_hornet",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats aircraft and techs on Corral on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Corral Tech-B 1", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "brown",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 29.425834836686,
												["angle"] = 495.84986158764,
												["x"] = 8.2282668224776,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats aircraft and techs on Corral on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Corral Tech-W 2", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "white",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 25.478054903549,
												["angle"] = 493.26677429469,
												["x"] = 12.400304287891,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats aircraft and techs on Corral on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Corral Tech-B 3", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "brown",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 30.050828571727,
												["angle"] = 495.84986158764,
												["x"] = 2.5874308985216,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
    -- ********************************************************
    -- Creats aircraft and techs on Elevator 1.

    local staticObj = {
        ["name"] = namePrefix ..  "EL1 F-14 1", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vf-2 f-14b nk106",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 35.302135340188,
                                                ["angle"] = 488.51947872927,
                                                ["x"] = 34.225363793548,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Elevator 1.

    local staticObj = {
        ["name"] = namePrefix ..  "EL1 F-14 2", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-31 F-14B NK207",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 35.291531537177,
                                                ["angle"] = 488.51947872927,
                                                ["x"] = 23.073027603039,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Elevator 1.

    local staticObj = {
        ["name"] = namePrefix ..  "EL1 Tech-Y 1", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 25.600520086,
                                                ["angle"] = 381.30390277925,
                                                ["x"] = 32.588099427781,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************	
	-- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires Tech-G 1", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "green",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 24.571513678523,
												["angle"] = 5.0109160492517,
												["x"] = -109.38597605227,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires Tech-G 2", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "green",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 16.105060984841,
												["angle"] = 111.66798663863,
												["x"] = -76.98153012923,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires Tech-G 3", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
										["livery_id"] = "green",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 10.701253058197,
												["angle"] = 112.20903870674,
												["x"] = -43.328997939506,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires Tech-G 4", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "green",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = -20.650600765722,
												["angle"] = 334.66870516596,
												["x"] = -111.11725081114,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires Tech-G 5", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "green",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = -24.862850276162,
												["angle"] = 334.66870516596,
												["x"] = -88.432445487217,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires LSO1-1", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = -20.639902404069,
												["angle"] = 18.991003357727,
												["x"] = -128.87964937709,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_lso4_usa",
											["type"] = "Carrier LSO Personell 4",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires LSO4-2", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = -22.336654402517,
												["angle"] = 40.476006449779,
												["x"] = -130.51429093913,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_lso3_usa",
											["type"] = "Carrier LSO Personell 3",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
    -- ********************************************************
    
end

function DYNDECK.sc_rec_hvy(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. templateName

    -- ********************************************************
    -- Creats aircraft and techs on Catapult 2 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2R F-18 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 400 Paul 'Greekbull' Tsaras CO",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -0.42373331700052,
                                                ["angle"] = 479.77537917677,
                                                ["x"] = 48.801296065951,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Catapult 2 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2R F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vfa-25 generic",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -1.9165360388852,
                                                ["angle"] = 479.77537917677,
                                                ["x"] = 60.08834944242,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Catapult 2 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2R F-18 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vmfa-122 high visibility",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -3.3698449825059,
                                                ["angle"] = 479.77537917677,
                                                ["x"] = 70.985443953678,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Catapult 2 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2R Tech-Y 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 5.4478270146218,
                                                ["angle"] = 160.11832667399,
                                                ["x"] = 42.31126245152,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Catapult 2 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2R Tech-B 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 5.6211179625298,
                                                ["angle"] = 161.63676312323,
                                                ["x"] = 47.1192869069,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Catapult 2 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2R Tech-B 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 3.0795751066997,
                                                ["angle"] = 2.0089497358215,
                                                ["x"] = 58.878521974936,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Catapult 2 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2R Tech-B 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -1.1587672360767,
                                                ["angle"] = 5.1330890968913,
                                                ["x"] = 72.452471779597,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Catapult 2 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2R Tech-Y 5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 0.51246658829964,
                                                ["angle"] = 5.5170615323301,
                                                ["x"] = 72.529540910213,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- ********************************************************
    -- Creats aircraft and techs on Corral on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Corral F-18 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 403 Matt Wurst _Matty_",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 33.491131379038,
                                                ["angle"] = 601.61681425851,
                                                ["x"] = 10.807660643992,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Corral on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Corral F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VMFA-122C_DC_13_Dart",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 33.494579421873,
                                                ["angle"] = 601.61681425851,
                                                ["x"] = 0.76208163411436,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Corral on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Corral Tech-B 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 29.425834836686,
                                                ["angle"] = 495.84986158764,
                                                ["x"] = 8.2282668224776,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Corral on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Corral Tech-W 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 25.478054903549,
                                                ["angle"] = 493.26677429469,
                                                ["x"] = 12.400304287891,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Corral on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Corral Tech-B 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 30.050828571727,
                                                ["angle"] = 495.84986158764,
                                                ["x"] = 2.5874308985216,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- ********************************************************	
    -- Creats aircraft and techs on street on Nimitz Carriers.

    local staticObj = {
    	["name"] = namePrefix .. "Street F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 406 Ryan 'GreenHead' Kitts",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 8.6288177467084,
                                                ["angle"] = 657.50225690737,
                                                ["x"] = -7.0777660328889,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
    	["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
    	["unitId"] = 1,
    	["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
    	["x"] = 0,			
    	["heading"] = 0,
    	["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
    	["linkOffset"] = true,
    	["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on street on Nimitz Carriers.

    local staticObj = {
    	["name"] = namePrefix .. "Street F-18 3", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 413 Adam 'sickdog' Soloway",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 6.9391671683504,
                                                ["angle"] = 657.50225690737,
                                                ["x"] = 2.5541960441424,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
    	["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
    	["unitId"] = 1,
    	["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
    	["x"] = 0,			
    	["heading"] = 0,
    	["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
    	["linkOffset"] = true,
    	["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on street on Nimitz Carriers.

    local staticObj = {
    	["name"] = namePrefix .. "Street F-18 4", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vmfa-122 high visibility",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 5.4704260470337,
                                                ["angle"] = 657.50225690737,
                                                ["x"] = 12.099386533672,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
    	["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
    	["unitId"] = 1,
    	["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
    	["x"] = 0,			
    	["heading"] = 0,
    	["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
    	["linkOffset"] = true,
    	["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats aircraft and techs on street on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Street Tech-Y 1", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "yellow",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 3.6189556139081,
												["angle"] = 492.14976357342,
												["x"] = -12.865438917002,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats aircraft and techs on street on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Street Tech-Y 2", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "yellow",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 3.0638087495994,
												["angle"] = 17.629646541172,
												["x"] = 14.649276218361,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats aircraft and techs on street on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Street Tech-Y 3", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "yellow",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 11.274891964877,
												["angle"] = 19.217896160486,
												["x"] = 19.925853226823,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************   
	-- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 14.835235254354,
                                                ["angle"] = 645.65147128633,
                                                ["x"] = -54.859983171871,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 34.074706103411,
                                                ["angle"] = 816.1875924987,
                                                ["x"] = 71.571823411897,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -34.290094792497,
                                                ["angle"] = 777.80780224735,
                                                ["x"] = -119.2372580741,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 25.097856989679,
                                                ["angle"] = 815.24511470263,
                                                ["x"] = -34.721702907785,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 33.277117391028,
                                                ["angle"] = 32.953637373683,
                                                ["x"] = -34.732073358085,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Mover-1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 22.11354181959,
                                                ["angle"] = 793.2539661275,
                                                ["x"] = -48.306093823847,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-32A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Mover-2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 21.835171682406,
                                                ["angle"] = 793.2539661275,
                                                ["x"] = -42.875676980416,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-32A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Mover-3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 35.841876281434,
                                                ["angle"] = 12.568191710388,
                                                ["x"] = -46.473225983412,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-32A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Crain", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 26.547575156325,
                                                ["angle"] = 856.06837148444,
                                                ["x"] = -69.02095322825,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-36A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Rescue", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 20.684031571391,
                                                ["angle"] = 815.19275482507,
                                                ["x"] = -72.889667764425,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-p25",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq SH-60B-1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "standard",
                                            ["category"] = "Helicopters",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 21.156945293163,
                                                ["angle"] = 831.17997077334,
                                                ["x"] = -63.23041749546,
                                            }, -- end of ["offsets"]
                                            ["type"] = "SH-60B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq SH-60B-2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "standard",
                                            ["category"] = "Helicopters",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 20.050660831591,
                                                ["angle"] = 831.17997077334,
                                                ["x"] = -51.605714756815,
                                            }, -- end of ["offsets"]
                                            ["type"] = "SH-60B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq E-2D", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vaw-125 tigertails",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 24.709702325664,
                                                ["angle"] = 827.79403202447,
                                                ["x"] = -79.053240272477,
                                            }, -- end of ["offsets"]
                                            ["type"] = "E-2C",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-Y 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.669406083255,
                                                ["angle"] = 431.15050621621,
                                                ["x"] = -81.188579290842,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-P 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "purple",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 27.639842598229,
                                                ["angle"] = 432.04062413473,
                                                ["x"] = -72.948655685138,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-W 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.902145490903,
                                                ["angle"] = 407.32676192649,
                                                ["x"] = -42.260791551122,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-W 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.546159565233,
                                                ["angle"] = 406.59372364065,
                                                ["x"] = -41.202128437865,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-R 6", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 27.91945951727,
                                                ["angle"] = 433.36707436624,
                                                ["x"] = -31.165410408404,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-R 7", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 28.818860063248,
                                                ["angle"] = 431.70901157685,
                                                ["x"] = -30.804706359764,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-Y 8", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 35.823568424595,
                                                ["angle"] = 432.51186303277,
                                                ["x"] = -31.291805946785,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-Y 9", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 20.322398460964,
                                                ["angle"] = 361.77366844943,
                                                ["x"] = -71.458887492548,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-G 10", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "green",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 18.350873921939,
                                                ["angle"] = 4.3825975185338,
                                                ["x"] = -83.19495052369,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tech-G 11", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "green",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.701075990667,
                                                ["angle"] = 4.3825975185338,
                                                ["x"] = -74.240538147751,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 F-14 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-31 F-14B NK202",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -35.445383461716,
                                                ["angle"] = 497.94425669004,
                                                ["x"] = -107.40221763538,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 F-14 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-31 F-14B NK203",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -35.411844968488,
                                                ["angle"] = 497.94425669004,
                                                ["x"] = -96.289773067514,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 Tech-B 1", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "purple",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -30.030244498687,
                                                ["angle"] = 382.43836679304,
                                                ["x"] = -111.78160739991,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 Tech-R 2", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -29.671642155997,
                                                ["angle"] = 384.02661641236,
                                                ["x"] = -103.49094182992,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 Tech-B 3", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -25.072092217455,
                                                ["angle"] = 380.86757046625,
                                                ["x"] = -105.05066039867,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 Tech-W 4", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -26.320193673524,
                                                ["angle"] = 383.39829788164,
                                                ["x"] = -99.244388878579,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 Tech-B 5", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -26.404337009315,
                                                ["angle"] = 380.76285071113,
                                                ["x"] = -93.512643472046,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- ********************************************************
    -- Creats aircraft and techs around island on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Island E-2Cx", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vaw-125 tigertails",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 15.467359055958,
                                                ["angle"] = 557.61706381573,
                                                ["x"] = -35.289777030018,
                                            }, -- end of ["offsets"]
                                            ["type"] = "E-2C",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs around island on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Island Tech-Y 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 7.0412458731262,
                                                ["angle"] = 160.11832667399,
                                                ["x"] = -37.131948660666,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs around island on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Island Tech-P 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "purple",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 21.632701538063,
                                                ["angle"] = 162.52688104174,
                                                ["x"] = -33.324470195337,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- ********************************************************
    -- Creats F-18s and Techs on Patio for Nimitz Class Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioR F-18 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Generic",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 27.235224469639,
                                                ["angle"] = 5.4472483622503,
                                                ["x"] = -114.93158495153,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats F-18s and Techs on Patio for Nimitz Class Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioR F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Clean",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 25.872561341676,
                                                ["angle"] = 5.55196811737,
                                                ["x"] = -125.21379408858,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats F-18s and Techs on Patio for Nimitz Class Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioR F-18 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vmfa-122",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 25.018040335181,
                                                ["angle"] = 5.9010339677688,
                                                ["x"] = -136.68694073897,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats F-18s and Techs on Patio for Nimitz Class Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioR Tech-G 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "green",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -24.322739531564,
                                                ["angle"] = 1.6598838854226,
                                                ["x"] = -88.353782408567,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats F-18s and Techs on Patio for Nimitz Class Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioR Tech-G 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "green",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -20.650600765722,
                                                ["angle"] = 14.226254499782,
                                                ["x"] = -111.11725081114,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats F-18s and Techs on Patio for Nimitz Class Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioR Tech-W 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 23.19980412265,
                                                ["angle"] = 4.312784348454,
                                                ["x"] = -119.58220353962,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats F-18s and Techs on Patio for Nimitz Class Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioR Tech-Y 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 22.729152691366,
                                                ["angle"] = 4.5571304437332,
                                                ["x"] = -112.43738784538,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- ********************************************************
    -- Creats static aircraft and techs on the Point on Nimitz carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Point S-3B 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "S3_VS37",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 34.100242104084,
                                                ["angle"] = 375.42214320003,
                                                ["x"] = 49.68480942168,
                                            }, -- end of ["offsets"]
                                            ["type"] = "S-3B Tanker",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats static aircraft and techs on the Point on Nimitz carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Point F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 407  Scott 'Bonz' Reagan Custom",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 33.476355525632,
                                                ["angle"] = 375.42214320003,
                                                ["x"] = 59.061195556497,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats static aircraft and techs on the Point on Nimitz carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Point Tech-B 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 29.547724102961,
                                                ["angle"] = 119.76631436788,
                                                ["x"] = 56.582054462759,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires Tech-G 1", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "green",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 24.571513678523,
												["angle"] = 5.0109160492517,
												["x"] = -109.38597605227,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires Tech-G 2", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "green",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 16.105060984841,
												["angle"] = 111.66798663863,
												["x"] = -76.98153012923,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires Tech-G 3", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
										["livery_id"] = "green",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 10.701253058197,
												["angle"] = 112.20903870674,
												["x"] = -43.328997939506,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires Tech-G 4", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "green",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = -20.650600765722,
												["angle"] = 334.66870516596,
												["x"] = -111.11725081114,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires Tech-G 5", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "green",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = -24.862850276162,
												["angle"] = 334.66870516596,
												["x"] = -88.432445487217,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires LSO1-1", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = -20.639902404069,
												["angle"] = 18.991003357727,
												["x"] = -128.87964937709,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_lso4_usa",
											["type"] = "Carrier LSO Personell 4",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires LSO4-2", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = -22.336654402517,
												["angle"] = 40.476006449779,
												["x"] = -130.51429093913,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_lso3_usa",
											["type"] = "Carrier LSO Personell 3",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
    -- ********************************************************
    
end

function DYNDECK.sc_cat1l_f18(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. templateName

    -- Creates F-18s on Catapult 1 Nimitz Carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat1 F-18 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 402 Alex 'Red Sky' Jonischskies Hi Viz",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 28.108140050537,
                                                ["angle"] = 10.159637342635,
                                                ["x"] = 75.492905602964,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats F-18s on Catapult 1 Nimitz Carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat1 F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 402 Alex 'Red Sky' Jonischskies Hi Viz",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 22.10437053479,
                                                ["angle"] = 10.159637342635,
                                                ["x"] = 83.262039503581,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats F-18s on Catapult 1 Nimitz Carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat1 F-18 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 402 Alex 'Red Sky' Jonischskies Hi Viz",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 15.950453495473,
                                                ["angle"] = 3.6495592326962,
                                                ["x"] = 91.559690927119,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats F-18s on Catapult 1 Nimitz Carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat1 F-18 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 402 Alex 'Red Sky' Jonischskies Hi Viz",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 13.854390702424,
                                                ["angle"] = 3.6495592326962,
                                                ["x"] = 102.95885426481,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats F-18s on Catapult 1 Nimitz Carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat1 F-18 5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 402 Alex 'Red Sky' Jonischskies Hi Viz",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 13.202562667095,
                                                ["angle"] = 3.6495592326962,
                                                ["x"] = 118.26254908461,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats F-18s on Catapult 1 Nimitz Carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat1 F-18 6", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 402 Alex 'Red Sky' Jonischskies Hi Viz",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 11.614878866904,
                                                ["angle"] = 3.5273861850565,
                                                ["x"] = 131.18367415037,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats F-18s on Catapult 1 Nimitz Carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat1 F-18 7", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 402 Alex 'Red Sky' Jonischskies Hi Viz",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 10.388253750276,
                                                ["angle"] = 3.4575730149768,
                                                ["x"] = 145.08093209201,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
end

function DYNDECK.sc_cat1r_f18(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. templateName

    -- Creats F-18s and techs on Catapult 1 Nimitz Carrier.

    local staticObj = {
        ["name"] = namePrefix ..  "Cat1 F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 402 Alex 'Red Sky' Jonischskies Hi Viz",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 22.10437053479,
                                                ["angle"] = 10.159637342635,
                                                ["x"] = 83.262039503581,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats F-18s and techs on Catapult 1 Nimitz Carrier.

    local staticObj = {
        ["name"] = namePrefix ..  "Cat1 F-18 3", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 402 Alex 'Red Sky' Jonischskies Hi Viz",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 15.950453495473,
                                                ["angle"] = 3.6495592326962,
                                                ["x"] = 91.559690927119,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats F-18s and techs on Catapult 1 Nimitz Carrier.

    local staticObj = {
        ["name"] = namePrefix ..  "Cat1 F-18 4", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 402 Alex 'Red Sky' Jonischskies Hi Viz",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 13.854390702424,
                                                ["angle"] = 3.6495592326962,
                                                ["x"] = 102.95885426481,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************

end

function DYNDECK.sc_cat2l_f18(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. "_" .. templateName .. "_"

    -- Creates 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 400 Paul 'Greekbull' Tsaras CO",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -0.56539029044469,
                                                ["angle"] = 435.79308202651,
                                                ["x"] = 49.037352753452,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vfa-25 generic",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -1.9165360388852,
                                                ["angle"] = 435.79308202651,
                                                ["x"] = 60.08834944242,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vmfa-122 high visibility",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -3.3698449825059,
                                                ["angle"] = 435.79308202651,
                                                ["x"] = 70.985443953678,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- *******************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 426 Matt 'Gannon' Wayne",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -4.7172584559018,
                                                ["angle"] = 435.79308202651,
                                                ["x"] = 82.042290909375,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vmfa-122",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -5.6807811134881,
                                                ["angle"] = 435.79308202651,
                                                ["x"] = 92.660709237033,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 6", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vmfa-122",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -6.9761561406201,
                                                ["angle"] = 435.79308202651,
                                                ["x"] = 104.14295655801,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 7", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Clean",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -7.9935357811509,
                                                ["angle"] = 435.79308202651,
                                                ["x"] = 115.02702279532,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 8", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Clean",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -8.8622980860768,
                                                ["angle"] = 435.79308202651,
                                                ["x"] = 125.99653280804,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 9", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vmfa-122",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -8.4189546313416,
                                                ["angle"] = 429.73678952209,
                                                ["x"] = 136.63282885359,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L F-18 10", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Clean",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -9.0716331338308,
                                                ["angle"] = 354.47819217609,
                                                ["x"] = 149.78327421946,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L Tech-Y 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 5.3374882673047,
                                                ["angle"] = 116.13602952373,
                                                ["x"] = 42.777801593228,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L Tech-B 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 5.5495708687677,
                                                ["angle"] = 117.65446597297,
                                                ["x"] = 47.052935840525,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L Tech-B 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 0.22348151799788,
                                                ["angle"] = 117.65446597297,
                                                ["x"] = 90.125866213387,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L Tech-B 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -1.4497604680265,
                                                ["angle"] = 117.65446597297,
                                                ["x"] = 102.70969022384,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats 9 F-18s on Carrier Bow Catapult 2.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2L Tech-W 5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -0.86790735153088,
                                                ["angle"] = 115.90913672097,
                                                ["x"] = 107.96544928822,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
end

function DYNDECK.sc_cat2r_f18(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. "_" .. templateName .. "_"

    -- Creats aircraft and techs on Catapult 2 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2R F-18 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 400 Paul 'Greekbull' Tsaras CO",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -0.42373331700052,
                                                ["angle"] = 479.77537917677,
                                                ["x"] = 48.801296065951,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Catapult 2 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2R F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vfa-25 generic",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -1.9165360388852,
                                                ["angle"] = 479.77537917677,
                                                ["x"] = 60.08834944242,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Catapult 2 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2R F-18 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vmfa-122 high visibility",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -3.3698449825059,
                                                ["angle"] = 479.77537917677,
                                                ["x"] = 70.985443953678,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Catapult 2 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2R Tech-Y 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 5.4478270146218,
                                                ["angle"] = 160.11832667399,
                                                ["x"] = 42.31126245152,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Catapult 2 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2R Tech-B 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 5.6211179625298,
                                                ["angle"] = 161.63676312323,
                                                ["x"] = 47.1192869069,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Catapult 2 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2R Tech-B 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 3.0795751066997,
                                                ["angle"] = 2.0089497358215,
                                                ["x"] = 58.878521974936,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Catapult 2 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2R Tech-B 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -1.1587672360767,
                                                ["angle"] = 5.1330890968913,
                                                ["x"] = 72.452471779597,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Catapult 2 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Cat2R Tech-Y 5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 0.51246658829964,
                                                ["angle"] = 5.5170615323301,
                                                ["x"] = 72.529540910213,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
end

function DYNDECK.sc_el1_f14(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. templateName

    -- Creats aircraft and techs on Elevator 1.

    local staticObj = {
        ["name"] = namePrefix ..  "EL1 F-14 1", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vf-2 f-14b nk106",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 35.302135340188,
                                                ["angle"] = 488.51947872927,
                                                ["x"] = 34.225363793548,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Elevator 1.

    local staticObj = {
        ["name"] = namePrefix ..  "EL1 F-14 2", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-31 F-14B NK207",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 35.291531537177,
                                                ["angle"] = 488.51947872927,
                                                ["x"] = 23.073027603039,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Elevator 1.

    local staticObj = {
        ["name"] = namePrefix ..  "EL1 Tech-Y 1", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 25.600520086,
                                                ["angle"] = 381.30390277925,
                                                ["x"] = 32.588099427781,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
end

function DYNDECK.sc_el2_f14(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. templateName

    -- Creats aircraft and techs on Elevator 2 on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "EL2 F-14 1", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vf-102 diamondbacks",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 35.325475194068,
                                                ["angle"] = 639.31592610159,
                                                ["x"] = -11.513878068668,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Elevator 2 on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "EL2 F-14 2", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vf-102 diamondbacks",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 35.445525464645,
                                                ["angle"] = 639.31592610159,
                                                ["x"] = -22.431866014385,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Elevator 2 on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "EL2 Tech-P 1", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "purple",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 31.795247390641,
                                                ["angle"] = 383.43320446668,
                                                ["x"] = -25.667554517406,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Elevator 2 on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "EL2 Tech-B 2", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 27.717919574706,
                                                ["angle"] = 379.00006816662,
                                                ["x"] = -19.747781252829,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Elevator 2 on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "EL2 Tech-W 3", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 27.084279884623,
                                                ["angle"] = 382.43836679304,
                                                ["x"] = -14.045921751688,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Elevator 2 on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "EL2 Tech-B 4", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 30.995417005646,
                                                ["angle"] = 383.1888583714,
                                                ["x"] = -14.715059620154,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************

end

function DYNDECK.sc_el3_f14(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. templateName

    -- Creats aircraft and techs on Elevator 3 on Nimitz Carriers

    local staticObj = {
        ["name"] = namePrefix ..  "EL3 F-14 1", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-2 F-14B NK104",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 35.039680685218,
                                                ["angle"] = 488.51947872927,
                                                ["x"] = -90.683695983407,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Elevator 3 on Nimitz Carriers

    local staticObj = {
        ["name"] = namePrefix ..  "EL3 F-14 2", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-2 F-14B NK105",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 35.026055483354,
                                                ["angle"] = 488.51947872927,
                                                ["x"] = -101.6661596454,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Elevator 3 on Nimitz Carriers

    local staticObj = {
        ["name"] = namePrefix ..  "EL3 Tech-R 1", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 31.270646458947,
                                                ["angle"] = 384.16624275252,
                                                ["x"] = -105.93608363993,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Elevator 3 on Nimitz Carriers

    local staticObj = {
        ["name"] = namePrefix ..  "EL3 Tech-W 2", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 26.443518892345,
                                                ["angle"] = 382.80488593596,
                                                ["x"] = -95.772647928271,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Elevator 3 on Nimitz Carriers

    local staticObj = {
        ["name"] = namePrefix ..  "EL3 Tech-B 3", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 26.163495978953,
                                                ["angle"] = 384.14878946,
                                                ["x"] = -92.537165392662,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Elevator 3 on Nimitz Carriers

    local staticObj = {
        ["name"] = namePrefix ..  "EL3 Tech-P 4", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "purple",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 27.732737950045,
                                                ["angle"] = 378.84298853394,
                                                ["x"] = -86.125063737489,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
end

function DYNDECK.sc_el4_f14(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. templateName

    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "EL4 F-14 1", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-31 F-14B NK202",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -35.445383461716,
                                                ["angle"] = 497.94425669004,
                                                ["x"] = -107.40221763538,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "EL4 F-14 2", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-31 F-14B NK203",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -35.411844968488,
                                                ["angle"] = 497.94425669004,
                                                ["x"] = -96.289773067514,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "EL4 Tech-B 1", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "purple",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -30.030244498687,
                                                ["angle"] = 382.43836679304,
                                                ["x"] = -111.78160739991,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "EL4 Tech-R 2", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -29.671642155997,
                                                ["angle"] = 384.02661641236,
                                                ["x"] = -103.49094182992,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "EL4 Tech-B 3", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -25.072092217455,
                                                ["angle"] = 380.86757046625,
                                                ["x"] = -105.05066039867,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "EL4 Tech-W 4", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -26.320193673524,
                                                ["angle"] = 383.39829788164,
                                                ["x"] = -99.244388878579,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "EL4 Tech-B 5", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -26.404337009315,
                                                ["angle"] = 380.76285071113,
                                                ["x"] = -93.512643472046,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************

end

function DYNDECK.sc_el1_f18(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. templateName

    -- Creats aircraft and techs on Elevator 1.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL1 F-18 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vmfa-122",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 33.421244398461,
                                                ["angle"] = 224.62569582771,
                                                ["x"] = 23.527064339876,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Elevator 1.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL1 F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vmfa-122",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 33.553319932144,
                                                ["angle"] = 224.62569582771,
                                                ["x"] = 34.459724906861,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Elevator 1.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL1 Tech-Y 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 25.408732227881,
                                                ["angle"] = 117.41011987769,
                                                ["x"] = 33.100003646528,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
end

function DYNDECK.sc_el2_f18(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. templateName

    -- Creats aircraft and techs on Elevator 2 on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "EL2 F-18 1", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Generic",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 33.595167768456,
                                                ["angle"] = 375.42214320003,
                                                ["x"] = -21.531554066515,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Elevator 2 on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "EL2 F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Clean",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 33.850214385975,
                                                ["angle"] = 375.42214320003,
                                                ["x"] = -11.761692917277,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Elevator 2 on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "EL2 Tech-P 1", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "purple",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 33.17968132775,
                                                ["angle"] = 119.53942156512,
                                                ["x"] = -24.424874106349,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Elevator 2 on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "EL2 Tech-B 2", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "purple",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 33.17968132775,
                                                ["angle"] = 119.53942156512,
                                                ["x"] = -24.424874106349,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Elevator 2 on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "EL2 Tech-W 3", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                        ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 27.084279884623,
                                                ["angle"] = 118.54458389148,
                                                ["x"] = -14.045921751688,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Elevator 2 on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "EL2 Tech-B 4", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 30.540175245342,
                                                ["angle"] = 119.29507546984,
                                                ["x"] = -14.065938601277,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************

end

function DYNDECK.sc_el3_f18(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. templateName

    -- Creats aircraft and techs on Elevator 3 on Nimitz Carriers
    
    local staticObj = {
        ["name"] = namePrefix .. "EL3 F-18 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vmfa-122",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 33.21480070767,
                                                ["angle"] = 224.62569582771,
                                                ["x"] = -101.46372616621,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Elevator 3 on Nimitz Carriers
    
    local staticObj = {
        ["name"] = namePrefix .. "EL3 F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Clean",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 33.275586055124,
                                                ["angle"] = 224.62569582771,
                                                ["x"] = -90.506253749648,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Elevator 3 on Nimitz Carriers
    
    local staticObj = {
        ["name"] = namePrefix .. "EL3 Tech-R 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 32.838770595401,
                                                ["angle"] = 120.27245985096,
                                                ["x"] = -103.85624140846,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Elevator 3 on Nimitz Carriers
    
    local staticObj = {
        ["name"] = namePrefix .. "EL3 Tech-W 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 26.443518892345,
                                                ["angle"] = 118.9111030344,
                                                ["x"] = -95.772647928271,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Elevator 3 on Nimitz Carriers
    
    local staticObj = {
        ["name"] = namePrefix .. "EL3 Tech-B 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 26.163495978953,
                                                ["angle"] = 120.25500655844,
                                                ["x"] = -92.537165392662,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Elevator 3 on Nimitz Carriers
    
    local staticObj = {
        ["name"] = namePrefix .. "EL3 Tech-P 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "purple",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 32.372135214934,
                                                ["angle"] = 114.94920563238,
                                                ["x"] = -88.080092987373,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
end

function DYNDECK.sc_el4_f18(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. templateName

    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 F-18 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Generic",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -33.344235799775,
                                                ["angle"] = 234.05047378848,
                                                ["x"] = -107.29391769261,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Clean",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -33.406129444774,
                                                ["angle"] = 234.05047378848,
                                                ["x"] = -95.604236622335,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 Tech-B 1", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "purple",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -31.964097133702,
                                                ["angle"] = 118.54458389148,
                                                ["x"] = -110.23901828911,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 Tech-R 2", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -29.671642155997,
                                                ["angle"] = 120.1328335108,
                                                ["x"] = -103.49094182992,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 Tech-B 3", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -25.072092217455,
                                                ["angle"] = 116.97378756469,
                                                ["x"] = -105.05066039867,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 Tech-W 4", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -27.725434969865,
                                                ["angle"] = 119.50451498008,
                                                ["x"] = -98.238166449895,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft the techs on Elevator 4 on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "EL4 Tech-B 5", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -26.717017857683,
                                                ["angle"] = 116.86906780957,
                                                ["x"] = -93.431793780025,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    
end

function DYNDECK.sc_island(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. templateName

    -- Creats aircraft and techs around island on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Island E-2Cx", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vaw-125 tigertails",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 15.467359055958,
                                                ["angle"] = 557.61706381573,
                                                ["x"] = -35.289777030018,
                                            }, -- end of ["offsets"]
                                            ["type"] = "E-2C",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs around island on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Island Tech-Y 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 7.0412458731262,
                                                ["angle"] = 160.11832667399,
                                                ["x"] = -37.131948660666,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs around island on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Island Tech-P 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "purple",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 21.632701538063,
                                                ["angle"] = 162.52688104174,
                                                ["x"] = -33.324470195337,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
end

function DYNDECK.sc_deckeq(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. templateName

    -- Creats deck equipment around island on Nimitz class carrier.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 26.179609650167,
                                                ["angle"] = 545.06814649389,
                                                ["x"] = -34.726986137793,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats a UH-60 on the helipad of a Hazard perry.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 34.074706103411,
                                                ["angle"] = 546.01062428996,
                                                ["x"] = 71.571823411897,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats a UH-60 on the helipad of a Hazard perry.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 14.835235254354,
                                                ["angle"] = 375.47450307759,
                                                ["x"] = -54.859983171871,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats a UH-60 on the helipad of a Hazard perry.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Tow 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -34.290094792497,
                                                ["angle"] = 507.63083403861,
                                                ["x"] = -119.2372580741,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-31A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats a UH-60 on the helipad of a Hazard perry.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Mover-1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 22.11354181959,
                                                ["angle"] = 523.07699791876,
                                                ["x"] = -48.306093823847,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-32A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats a UH-60 on the helipad of a Hazard perry.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Mover-2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 21.835171682406,
                                                ["angle"] = 523.07699791876,
                                                ["x"] = -42.875676980416,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-32A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats a UH-60 on the helipad of a Hazard perry.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Crain", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 26.547575156325,
                                                ["angle"] = 585.8914032757,
                                                ["x"] = -69.02095322825,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-36A",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats a UH-60 on the helipad of a Hazard perry.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq Rescue", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 20.684031571391,
                                                ["angle"] = 545.01578661633,
                                                ["x"] = -72.889667764425,
                                            }, -- end of ["offsets"]
                                            ["type"] = "AS32-p25",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats a UH-60 on the helipad of a Hazard perry.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq SH-60B-1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "standard",
                                            ["category"] = "Helicopters",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 21.156945293163,
                                                ["angle"] = 561.0030025646,
                                                ["x"] = -63.23041749546,
                                            }, -- end of ["offsets"]
                                            ["type"] = "SH-60B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats a UH-60 on the helipad of a Hazard perry.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq SH-60B-2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "standard",
                                            ["category"] = "Helicopters",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 19.992908088869,
                                                ["angle"] = 561.0030025646,
                                                ["x"] = -51.334443322704,
                                            }, -- end of ["offsets"]
                                            ["type"] = "SH-60B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats a UH-60 on the helipad of a Hazard perry.
    
    local staticObj = {
        ["name"] = namePrefix .. "Deckeq E-2D", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vaw-125 tigertails",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 24.709702325664,
                                                ["angle"] = 557.61706381573,
                                                ["x"] = -79.053240272477,
                                            }, -- end of ["offsets"]
                                            ["type"] = "E-2C",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
end

function DYNDECK.sc_patiol_f14(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. templateName

    -- Creats aircraft and techs on Patio on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "PatioL F-14 1", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vf-31 tomcatters nk101 (2004)",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 25.272174412871,
                                                ["angle"] = 55.416024846851,
                                                ["x"] = -137.05946340778,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "PatioL F-14 2", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-2 F-14B NK102",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 25.90766034143,
                                                ["angle"] = 55.276398506692,
                                                ["x"] = -125.05018529034,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "PatioL F-14 3", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-2 F-14B NK103",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 26.688365467764,
                                                ["angle"] = 55.171678751572,
                                                ["x"] = -113.62551094625,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "PatioL Tech-W 1", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 24.249266486735,
                                                ["angle"] = 47.684216260516,
                                                ["x"] = -118.84548836107,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "PatioL Tech-B 2", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 20.198280514752,
                                                ["angle"] = 27.804916080299,
                                                ["x"] = -119.93375446631,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "PatioL Tech-B 3", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 19.50378327452,
                                                ["angle"] = 28.241248393297,
                                                ["x"] = -129.01825825982,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "PatioL Tech-B 4", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 19.680574336987,
                                                ["angle"] = 27.141690964541,
                                                ["x"] = -110.40087259709,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "PatioL Tech-Y 5", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 17.991715812614,
                                                ["angle"] = 30.108750692932,
                                                ["x"] = -135.51865999092,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  "PatioL Tech-Y 6", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 17.751052416906,
                                                ["angle"] = 30.894148856329,
                                                ["x"] = -110.36489862637,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
end

function DYNDECK.sc_patior_f14(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. templateName

    -- Creats aircraft and techs on Patio on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioR F-14 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-2 F-14B NK103",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 25.574397958365,
                                                ["angle"] = 12.184219274949,
                                                ["x"] = -140.22202233315,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioR F-14 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-2 F-14B NK106",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 26.999894815472,
                                                ["angle"] = 24.27935099127,
                                                ["x"] = -126.3733451222,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioR F-14 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-2 F-14B NK102",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 28.245066265035,
                                                ["angle"] = 30.230923740571,
                                                ["x"] = -115.09659159312,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioR Tech-W 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 25.273813754869,
                                                ["angle"] = 3.701919110256,
                                                ["x"] = -131.81665467857,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioR Tech-B 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 23.24388530906,
                                                ["angle"] = 3.5448394775765,
                                                ["x"] = -119.34764000727,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioR Tech-B 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 23.726752809735,
                                                ["angle"] = 3.6146526476563,
                                                ["x"] = -130.88525791424,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioR Tech-B 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 19.911959307137,
                                                ["angle"] = 6.8435117638458,
                                                ["x"] = -114.74868459558,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioR Tech-Y 5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 20.905678081278,
                                                ["angle"] = 5.2727154370509,
                                                ["x"] = -126.96371630654,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Patio on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "PatioR Tech-Y 6", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 18.76100756934,
                                                ["angle"] = 6.8435117638458,
                                                ["x"] = -110.09545944759,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
end

function DYNDECK.sc_patiol_f18(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. templateName

    -- Creats aircraft and techs on finger on Nimitz Carriers

    local staticObj = {
        ["name"] = namePrefix ..  "PatioL F-18 1", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vmfa-122",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 23.333414700347,
                                                ["angle"] = 5.7265010425694,
                                                ["x"] = -142.47883139923,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on finger on Nimitz Carriers

    local staticObj = {
        ["name"] = namePrefix ..  "PatioL F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Clean",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 25.489198597179,
                                                ["angle"] = 5.0109160492517,
                                                ["x"] = -128.62332397449,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on finger on Nimitz Carriers

    local staticObj = {
        ["name"] = namePrefix ..  "PatioL F-18 3", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Generic",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 27.432193601072,
                                                ["angle"] = 4.8538364165722,
                                                ["x"] = -116.23331243811,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on finger on Nimitz Carriers

    local staticObj = {
        ["name"] = namePrefix ..  "PatioL Tech-W 1", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 24.444990970708,
                                                ["angle"] = 3.7891855728557,
                                                ["x"] = -137.57043416091,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on finger on Nimitz Carriers

    local staticObj = {
        ["name"] = namePrefix ..  "PatioL Tech-B 2", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 21.586105244976,
                                                ["angle"] = 3.5622927700964,
                                                ["x"] = -137.10340081464,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on finger on Nimitz Carriers

    local staticObj = {
        ["name"] = namePrefix ..  "PatioL Tech-B 3", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 22.108589187036,
                                                ["angle"] = 3.5622927700964,
                                                ["x"] = -125.91383567431,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on finger on Nimitz Carriers

    local staticObj = {
        ["name"] = namePrefix ..  "PatioL Tech-B 4", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 26.921940063067,
                                                ["angle"] = 5.5694214098899,
                                                ["x"] = -118.34952748705,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on finger on Nimitz Carriers

    local staticObj = {
        ["name"] = namePrefix ..  "PatioL Tech-Y 5", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 19.591039946127,
                                                ["angle"] = 5.3250753146107,
                                                ["x"] = -114.02559376099,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
end

function DYNDECK.sc_patior_f18(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. templateName

    -- Creats F-18s and Techs on Finger.

    local staticObj = {
        ["name"] = namePrefix .. "PatioR F-18 1", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Generic",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 27.235224469639,
                                                ["angle"] = 5.4472483622503,
                                                ["x"] = -114.93158495153,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats F-18s and Techs on Finger.

    local staticObj = {
        ["name"] = namePrefix .. "PatioR F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Clean",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 25.872561341676,
                                                ["angle"] = 5.55196811737,
                                                ["x"] = -125.21379408858,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats F-18s and Techs on Finger.

    local staticObj = {
        ["name"] = namePrefix .. "PatioR F-18 3", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vmfa-122",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 25.018040335181,
                                                ["angle"] = 5.9010339677688,
                                                ["x"] = -136.68694073897,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats F-18s and Techs on Finger.

    local staticObj = {
        ["name"] = namePrefix .. "PatioR Tech-G 1", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "green",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -24.322739531564,
                                                ["angle"] = 1.6598838854226,
                                                ["x"] = -88.353782408567,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats F-18s and Techs on Finger.

    local staticObj = {
        ["name"] = namePrefix .. "PatioR Tech-G 2", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "green",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -20.650600765722,
                                                ["angle"] = 14.226254499782,
                                                ["x"] = -111.11725081114,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats F-18s and Techs on Finger.

    local staticObj = {
        ["name"] = namePrefix .. "PatioR Tech-W 2", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 23.19980412265,
                                                ["angle"] = 4.312784348454,
                                                ["x"] = -119.58220353962,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats F-18s and Techs on Finger.

    local staticObj = {
        ["name"] = namePrefix .. "PatioR Tech-Y 1", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 22.729152691366,
                                                ["angle"] = 4.5571304437332,
                                                ["x"] = -112.43738784538,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
end

function DYNDECK.sc_corral(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. "_" .. templateName .. "_"

    -- Creates aircraft and techs on Corral on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Corral F-18 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 Clean",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 32.777470310288,
                                                ["angle"] = 224.62569582771,
                                                ["x"] = 5.9309357552636,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Corral on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Corral Tech-B 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 29.62261911384,
                                                ["angle"] = 118.85874315684,
                                                ["x"] = 2.1943722273475,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on Corral on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "Corral Tech-W 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 24.854273797478,
                                                ["angle"] = 116.27565586389,
                                                ["x"] = 7.4119005094149,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
end

function DYNDECK.sc_fantail_f18(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. templateName

    -- Creats aircraft and techs on Fan Tail of Nimitz Class Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  namePrefix ..  "FT F-18-2", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 401 Brennan 'Goonie' Haltli  XO Alternate 1994",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 6.5562057387847,
                                                ["angle"] = 6.2151932331278,
                                                ["x"] = -153.90243998348,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Fan Tail of Nimitz Class Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  namePrefix ..  "FT F-18-1", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 400 Paul 'Greekbull' Tsaras CO Low Vis",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.62341317287,
                                                ["angle"] = 6.1802866480879,
                                                ["x"] = -153.13519210902,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Fan Tail of Nimitz Class Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  namePrefix ..  "FT F-18-3", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VMFA-122C_DC_00_CAG_Terry",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -3.299429679681,
                                                ["angle"] = 6.2151932331278,
                                                ["x"] = -154.30318520217,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Fan Tail of Nimitz Class Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  namePrefix ..  "FT F-18-4", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 410 Dargel 'Loco' Napoles",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -12.684961593476,
                                                ["angle"] = 7.0354979815652,
                                                ["x"] = -145.46005275256,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Fan Tail of Nimitz Class Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  namePrefix ..  "FT F-18-5", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VFA-25 407 Scott 'Bonz' Reagan CO Low Vis OS",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -14.27002078993,
                                                ["angle"] = 1.1537384023443,
                                                ["x"] = -134.06044829341,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
    -- Creats aircraft and techs on Fan Tail of Nimitz Class Carriers.

    local staticObj = {
        ["name"] = namePrefix ..  namePrefix ..  "FT F-18-6", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VMFA-122C_DC_000_POM",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -21.202331190479,
                                                ["angle"] = 1.1362851098243,
                                                ["x"] = -119.57187523335,
                                            }, -- end of ["offsets"]
                                            ["type"] = "FA-18C_hornet",
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    -- ********************************************************
end

function DYNDECK.sc_fantail_f14(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. templateName

    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT F-14B 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-2 F-14B NK100",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 18.179512487887,
                                                ["angle"] = 496.26874060812,
                                                ["x"] = -154.54050081595,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT F-14B 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-31 F-14B NK207",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 6.7391817566416,
                                                ["angle"] = 496.30364719316,
                                                ["x"] = -155.27503906218,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT F-14B 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-2 F-14B NK101_NPD",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -5.0029690814996,
                                                ["angle"] = 496.30364719316,
                                                ["x"] = -155.87628096397,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT F-14B 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-31 F-14B NK207",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -13.005046297121,
                                                ["angle"] = 497.1239519416,
                                                ["x"] = -146.66496187523,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT F-14B 5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-2 F-14B NK102_NPD",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -15.307549672268,
                                                ["angle"] = 491.24219236238,
                                                ["x"] = -135.97118197623,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT F-14B 6", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "VF-31 F-14B NK201 CO",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -21.875030227257,
                                                ["angle"] = 491.22473906986,
                                                ["x"] = -120.15838880036,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14B",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT Tech-Y 1", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 14.618622991992,
                                                ["angle"] = 149.85579067227,
                                                ["x"] = -143.34737720138,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT Tech-R 2", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 3.8587904552019,
                                                ["angle"] = 150.3270295703,
                                                ["x"] = -148.39389397052,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT Tech-R 3", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 2.9951744287039,
                                                ["angle"] = 150.60628225062,
                                                ["x"] = -148.6959220144,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT Tech-B 4", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -3.2820572675681,
                                                ["angle"] = 148.33735422303,
                                                ["x"] = -146.46714599295,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT Tech-W 5", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -5.4176867628193,
                                                ["angle"] = 146.87127765135,
                                                ["x"] = -135.06168999672,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
    -- Creats aircraft and techs on fan tail on Nimitz Carriers.
    
    local staticObj = {
        ["name"] = namePrefix .. "FT Tech-Y 6", -- unit name (Name this something identifiable if you wish to remove it later)
    
    -- Copy and paste over this with the units information
                                            ["livery_id"] = "yellow",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -11.185698655444,
                                                ["angle"] = 151.70583967938,
                                                ["x"] = -117.66135621609,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
    -- Copy and paste over this with the units information end
    
    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
    
    -- ********************************************************
end

function DYNDECK.sc_wires(shipID, templateName) -- template for deck template function

    local namePrefix = "dyndeck_" .. shipID .. templateName

	-- ********************************************************
	-- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires Tech-G 1", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "green",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 24.571513678523,
												["angle"] = 5.0109160492517,
												["x"] = -109.38597605227,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires Tech-G 2", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "green",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 16.105060984841,
												["angle"] = 111.66798663863,
												["x"] = -76.98153012923,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires Tech-G 3", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
										["livery_id"] = "green",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 10.701253058197,
												["angle"] = 112.20903870674,
												["x"] = -43.328997939506,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires Tech-G 4", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "green",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = -20.650600765722,
												["angle"] = 334.66870516596,
												["x"] = -111.11725081114,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires Tech-G 5", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "green",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = -24.862850276162,
												["angle"] = 334.66870516596,
												["x"] = -88.432445487217,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires LSO1-1", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = -20.639902404069,
												["angle"] = 18.991003357727,
												["x"] = -128.87964937709,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_lso4_usa",
											["type"] = "Carrier LSO Personell 4",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats techs along landing area on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Wires LSO4-2", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = -22.336654402517,
												["angle"] = 40.476006449779,
												["x"] = -130.51429093913,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_lso3_usa",
											["type"] = "Carrier LSO Personell 3",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
    -- ********************************************************

end

function DYNDECK.sc_street(shipID, templateName) -- template for deck template function

    local namePrefix = "dyndeck_" .. shipID .. templateName
	-- Creats aircraft and techs on street on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Street F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "VFA-25 406 Ryan 'GreenHead' Kitts",
											["category"] = "Planes",
											["offsets"] = 
											{
												["y"] = 8.6288177467084,
												["angle"] = 657.50225690737,
												["x"] = -7.0777660328889,
											}, -- end of ["offsets"]
											["type"] = "FA-18C_hornet",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats aircraft and techs on street on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Street F-18 3", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "VFA-25 413 Adam 'sickdog' Soloway",
											["category"] = "Planes",
											["offsets"] = 
											{
												["y"] = 6.9391671683504,
												["angle"] = 657.50225690737,
												["x"] = 2.5541960441424,
											}, -- end of ["offsets"]
											["type"] = "FA-18C_hornet",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats aircraft and techs on street on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Street F-18 4", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "vmfa-122 high visibility",
											["category"] = "Planes",
											["offsets"] = 
											{
												["y"] = 5.4704260470337,
												["angle"] = 657.50225690737,
												["x"] = 12.099386533672,
											}, -- end of ["offsets"]
											["type"] = "FA-18C_hornet",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats aircraft and techs on street on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Street Tech-Y 1", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "yellow",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 3.6189556139081,
												["angle"] = 492.14976357342,
												["x"] = -12.865438917002,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats aircraft and techs on street on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Street Tech-Y 2", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "yellow",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 3.0638087495994,
												["angle"] = 17.629646541172,
												["x"] = 14.649276218361,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats aircraft and techs on street on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Street Tech-Y 3", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "yellow",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 11.274891964877,
												["angle"] = 19.217896160486,
												["x"] = 19.925853226823,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	
end

function DYNDECK.sc_bow(shipID, templateName) -- template for deck template function

    local namePrefix = "dyndeck_" .. shipID .. templateName
	-- Creats aircraft and Techs on Bow on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Bow F-18 1", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "VFA-25 Clean",
											["category"] = "Planes",
											["offsets"] = 
											{
												["y"] = -3.848033676395,
												["angle"] = 731.99290938249,
												["x"] = 164.12363956928,
											}, -- end of ["offsets"]
											["type"] = "FA-18C_hornet",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats aircraft and Techs on Bow on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Bow F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "VMFA-122C_DC_04_Gigs",
											["category"] = "Planes",
											["offsets"] = 
											{
												["y"] = 6.2231174373491,
												["angle"] = 731.99290938249,
												["x"] = 164.16779592396,
											}, -- end of ["offsets"]
											["type"] = "FA-18C_hornet",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats aircraft and Techs on Bow on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Bow Tech-B 1", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "brown",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = -0.91963539000237,
												["angle"] = 493.12714795453,
												["x"] = 158.59517086731,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	-- Creats aircraft and Techs on Bow on Nimitz Carriers.

	local staticObj = {
		["name"] = namePrefix .. "Bow Tech-W 2", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "white",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 0.96975688117813,
												["angle"] = 493.63329343761,
												["x"] = 158.16543528477,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************
	
end

function DYNDECK.sc_point(shipID, templateName) -- template for deck template function

    local namePrefix = "dyndeck_" .. shipID .. templateName
	-- Creats static aircraft and techs on the Point on Nimitz carriers.

	local staticObj = {
		["name"] = namePrefix .. "Point S-3B 1", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "S3_VS37",
											["category"] = "Planes",
											["offsets"] = 
											{
												["y"] = 34.100242104084,
												["angle"] = 375.42214320003,
												["x"] = 49.68480942168,
											}, -- end of ["offsets"]
											["type"] = "S-3B Tanker",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************-- Creats static aircraft and techs on the Point on Nimitz carriers.
	-- Creats static aircraft and techs on the Point on Nimitz carriers.

	local staticObj = {
		["name"] = namePrefix .. "Point F-18 2", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "VFA-25 407  Scott 'Bonz' Reagan Custom",
											["category"] = "Planes",
											["offsets"] = 
											{
												["y"] = 33.476355525632,
												["angle"] = 375.42214320003,
												["x"] = 59.061195556497,
											}, -- end of ["offsets"]
											["type"] = "FA-18C_hornet",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************-- Creats static aircraft and techs on the Point on Nimitz carriers.

	local staticObj = {
		["name"] = namePrefix .. "Point Tech-B 1", -- unit name (Name this something identifiable if you wish to remove it later)

	-- Copy and paste over this with the units information
											["livery_id"] = "brown",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 29.547724102961,
												["angle"] = 119.76631436788,
												["x"] = 56.582054462759,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
		["unitId"] = 1,
		["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
		["x"] = 0,			
		["heading"] = 0,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

	-- ********************************************************

end

--- END Dynamic Deck Templates