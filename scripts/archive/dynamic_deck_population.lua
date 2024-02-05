env.info( "[JTF-1] dynamic_deck_population" )
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- Dynamic Deck Population
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

DYNDECK = {
    menu = {},
    templates = {},
}

DYNDECK.ship = {
    {
        name = "CVN-72 Lincoln", -- Name will be used for ship's menu entry
        id = 20122, -- unit ID in Mission Editor
        coalitionID = 2, -- 1, red, 2 blue
        fullTemplateActive = false, -- flag to denote a full deck template is active
        templates = {
            {
                -- Submenu group under which template should appear. 
                -- "" assumes full template. 
                -- If a name is present, partial template assumed. 
                -- Value will be used as the text for group in the submenu.
                -- Templates with same group name will appear in same group submenu

                group = "", 

                -- name of template as it appears in the name of the function containing the template

                name = "sc_flex4c234", 

                -- text that will appear in the template's menu entry

                menutext = "Launch and Recovery medium density", 

                -- whether a full deck clear should not be performed prior to applying the template. 
                -- True = do not clear deck (for partial templates). 
                -- False = clear deck first (for full templates)

                noClear = false, 

                -- flag to denote template is active. 
                -- True = active (do not re-apply the template if it seelcted from the menu). 
                -- False = template is not active.

                active = false 
            },
            {
                group = "",
                name = "sc_lch_low", 
                menutext = "Launch low density", 
                noClear = true, 
                active = false
            }, 
            {
                group = "",
                name = "sc_lch_med", 
                menutext = "Launch medium density", 
                noClear = true, 
                active = false
            }, 
            {
                group = "",
                name = "sc_lch_hvy", 
                menutext = "Launch high density", 
                noClear = true, 
                active = false
            }, 
            {
                group = "",
                name = "sc_rec_low", 
                menutext = "Recovery low density", 
                noClear = true, 
                active = false
            }, 
            {
                group = "",
                name = "sc_rec_med", 
                menutext = "Recovery medium density", 
                noClear = true, 
                active = false
            }, 
            {
                group = "",
                name = "sc_rec_hvy", 
                menutext = "Recovery high density", 
                noClear = true, 
                active = false
            }, 
            {
                group = "Cat",
                name = "sc_cat1l_f18", 
                menutext = "F18 Cat 1 Launch", 
                noClear = true, 
                active = false
            }, 
            {
                group = "Cat",
                name = "sc_cat1r_f18", 
                menutext = "F18 Cat 1 Recovery", 
                noClear = true, 
                active = false
            }, 
            {
                group = "Cat",
                name = "sc_cat2l_f18", 
                menutext = "F18 Cat 2 Launch", 
                noClear = true, 
                active = false
            }, 
            {
                group = "Cat",
                name = "sc_cat2r_f18", 
                menutext = "F18 Cat 2 Recovery", 
                noClear = true, 
                active = false
            }, 
            {
                group = "Elevators",
                name = "sc_el1_f14", 
                menutext = "F14 EL1", 
                noClear = true, 
                active = false
            }, 
            {
                group = "Elevators",
                name = "sc_el2_f14", 
                menutext = "F14 EL2", 
                noClear = true, 
                active = false
            }, 
            {
                group = "Elevators",
                name = "sc_el3_f14", 
                menutext = "F14 EL3", 
                noClear = true, 
                active = false
            }, 
            {
                group = "Elevators",
                name = "sc_el4_f14", 
                menutext = "F14 EL4", 
                noClear = true, 
                active = false
            }, 
            {
                group = "Elevators",
                name = "sc_el1_f18", 
                menutext = "F18 EL1", 
                noClear = true, 
                active = false
            }, 
            {
                group = "Elevators",
                name = "sc_el2_f18", 
                menutext = "F18 EL2", 
                noClear = true, 
                active = false
            }, 
            {
                group = "Elevators",
                name = "sc_el3_f18", 
                menutext = "F18 EL3", 
                noClear = true, 
                active = false
            }, 
            {
                group = "Elevators",
                name = "sc_el4_f18", 
                menutext = "F18 EL4", 
                noClear = true, 
                active = false
            }, 
            {
                group = "Island",
                name = "sc_island", 
                menutext = "AC and Tech around Island", 
                noClear = true, 
                active = false
            }, 
            {
                group = "Island",
                name = "sc_deckeq", 
                menutext = "Deck eqpt around Island", 
                noClear = true, 
                active = false
            }, 
            {
                group = "Patio",
                name = "sc_patiol_f14", 
                menutext = "F14 on Patio Launch", 
                noClear = true, 
                active = false
            }, 
            {
                group = "Patio",
                name = "sc_patior_f14", 
                menutext = "F14 on Patio Recovery", 
                noClear = true, 
                active = false
            }, 
            {
                group = "Patio",
                name = "sc_patiol_f18", 
                menutext = "F18 on Patio Launch", 
                noClear = true, 
                active = false
            }, 
            {
                group = "Patio",
                name = "sc_patior_f18", 
                menutext = "F18 on Patio Recovery", 
                noClear = true, 
                active = false
            }, 
            {
                group = "Corral",
                name = "sc_corral", 
                menutext = "AC and Tech Corral", 
                noClear = true, 
                active = false
            }, 
            {
                group = "Fantail",
                name = "sc_fantail_f14", 
                menutext = "F14 on Fantail", 
                noClear = true, 
                active = false
            }, 
            {
                group = "Fantail",
                name = "sc_fantail_f18", 
                menutext = "F18 on Fantail", 
                noClear = true, 
                active = false
            },
            {
                group = "Other",
                name = "sc_wires", 
                menutext = "Techs along Wires", 
                noClear = true, 
                active = false
            }, 
            {
                group = "Other",
                name = "sc_street", 
                menutext = "AC and techs on Street", 
                noClear = true, 
                active = false
            }, 
            {
                group = "Other",
                name = "sc_bow", 
                menutext = "AC and techs on Bow", 
                noClear = true, 
                active = false
            }, 
            {
                group = "Other",
                name = "sc_point", 
                menutext = "AC and techs on Point", 
                noClear = true, 
                active = false
            }, 
        }
    },
    -- {
    --     name = "CVN-59 Forrestal",
    --     id = 1202,
    --     coalitionID = 2,
    --     fullTemplateActive = false,
    --     templates = {
    --         {
    --             group = "", 
    --             name = "forrestal_flex4c234",
    --             menutext = "Launch and Recovery medium density",
    --             noClear = false,
    --             active = false
    --         },
    --     }
    -- },
}

-- Remove template objects from the ship
function DYNDECK:clearDeck(templateName, shipID, coalitionID, shipIndex, templateIndex)
    BASE:T("[DYNDECK] clearDeck called.")

    local staticFind = templateName or ("dyndeck_" .. shipID) -- search string for identifying objects to remove
    local statObj = coalition.getStaticObjects(coalitionID) -- table of all static objects for coalition
 
    -- step through table to find statics with the search string in thier name
    for i, static in pairs(statObj) do
        local staticName = static:getName()
        if string.match(staticName, ".*" .. staticFind .. ".*") then
            static:destroy() -- destroy found static
        end
    end
    
    if templateName then
        -- if a template name was passed to clearDeck change its active tag to false
        DYNDECK.ship[shipIndex].templates[templateIndex].active = false
    else
        -- if no template name was provided change the active tag for all the ship's templates to false 
        for j, template in ipairs(DYNDECK.ship[shipIndex].templates) do
            DYNDECK.ship[shipIndex].templates[j].active = false
        end
        -- set the ship's fullTemplateActive tag to false
        DYNDECK.ship[shipIndex].fullTemplateActive = false
    end

end

-- Apply the selected template to the ship
function DYNDECK:applyTemplate(templateName, shipID, coalitionID, noClear, shipIndex, templateIndex)
    BASE:T("[DYNDECK] applyTemplate called.")
 
    if DYNDECK[templateName] then -- check called template exists!
        -- only apply the template if it is *not* already active
 
        if not DYNDECK.ship[shipIndex].templates[templateIndex].active then
            BASE:T("[DYNDECK] Template not active.")
 
            if DYNDECK.ship[shipIndex].fullTemplateActive or (not noClear) then -- a full template is being, or has already been, applied
                BASE:T("[DYNDECK] Clear Deck.")
                -- clear deck before applying template
                DYNDECK:clearDeck(false, shipID, coalitionID, shipIndex)
            end
 
            BASE:T("[DYNDECK] Apply template: " .. templateName)
            -- call function for the template
            DYNDECK[templateName](shipID, templateName)
            -- mark the template as active
            DYNDECK.ship[shipIndex].templates[templateIndex].active = true
 
            if not noClear then 
                -- mark ship as having a full template applied
                DYNDECK.ship[shipIndex].fullTemplateActive = true
            end
        else
            BASE:T("[DYNDECK] TEMPLATE ALREADY ACTIVE!")
        end
 
    else -- if template does not exist
        _msg = "[DYNDECK] ERROR! REQUESTED SHIP TEMPLATE NOT FOUND: " .. templateName
        BASE:T(_msg)
        MESSAGE:New(_msg):ToAll()
    end
end

function DYNDECK:addMenu()

    BASE:T("[DYNDECK] Add template menus to mission.")
 
    -- add menu root
    DYNDECK.menu = MENU_MISSION:New("Dynamic Deck")

    -- add ship menus
     for shipIndex, menuship in ipairs(DYNDECK.ship) do
  
        -- add menu for ship
        DYNDECK.menu[menuship.id] = MENU_MISSION:New(menuship.name, DYNDECK.menu)
        -- add submenu for COMPLETE templates
        DYNDECK.menu[menuship.id].complete = MENU_MISSION:New("Complete Templates", DYNDECK.menu[menuship.id])
        -- add submenu for PARTIAL templates
        DYNDECK.menu[menuship.id].partial = MENU_MISSION:New("Partial Templates", DYNDECK.menu[menuship.id])
  
        
        -- add menu commands for full templates first
        for templateIndex, template in ipairs(menuship.templates) do
  
            if template.group == "" then -- this is a full template and should be placed in the ship's root menu
  
             end
  
        end

        -- add group submenus and add/remove commands for partial templates
        for templateIndex, template in ipairs(menuship.templates) do
 
            if template.group == "" then -- this is a complete template and should be placed in the Complete Templates submenu
                BASE:T("[DYNDECK] Add Full Template: " .. template.name)
  
                -- add command to ship root menu for full template 
                MENU_MISSION_COMMAND:New(template.menutext, DYNDECK.menu[menuship.id].complete, DYNDECK.applyTemplate, self, template.name, menuship.id, menuship.coalitionID, false, shipIndex ,templateIndex)

            else -- this is a partial template and should be placed in the Partial Templates submenu
                BASE:T("[DYNDECK] Add partial template.")

                -- add submenu for group if it doesn't already exist
                if not DYNDECK.menu[menuship.id].partial[template.group] then
                    BASE:T("[DYNDECK] Add Group submenu: " .. template.group)
 
                    DYNDECK.menu[menuship.id].partial[template.group] = MENU_MISSION:New(template.group, DYNDECK.menu[menuship.id].partial) -- add group submenu
                    DYNDECK.menu[menuship.id].partial[template.group].templates = {} -- container for grouped template submenus
 
                end
 
                if not DYNDECK.menu[menuship.id].partial[template.group].templates[template.name] then -- check template entry isn't a duplicate
                    BASE:T("[DYNDECK] Add template submenu: " .. template.name)

                    -- add a submenu for the group template
                    DYNDECK.menu[menuship.id].partial[template.group].templates[template.name] = MENU_MISSION:New(template.menutext, DYNDECK.menu[menuship.id].partial[template.group])

                    -- add a menu to apply the partial template
                    MENU_MISSION_COMMAND:New("Add",  DYNDECK.menu[menuship.id].partial[template.group].templates[template.name], DYNDECK.applyTemplate, self, template.name, menuship.id, menuship.coalitionID, true, shipIndex ,templateIndex)

                    -- add a menu to remove the partial template
                    MENU_MISSION_COMMAND:New("Remove", DYNDECK.menu[menuship.id].partial[template.group].templates[template.name], DYNDECK.clearDeck, self, template.name, menuship.id, menuship.coalitionID, shipIndex ,templateIndex)  

                else
                    BASE:T("[DYNDECK] ERROR! Menu has already been added for template: " .. template.name)
                end
 
            end
 
        end

        -- add menu to completely clear the ships deck of all statics
        MENU_MISSION_COMMAND:New("Clear Deck", DYNDECK.menu[menuship.id], DYNDECK.clearDeck, self, false, menuship.id, menuship.coalitionID, shipIndex)  
 
    end

end

DYNDECK:addMenu()

-- default templates for SC and Forrestal. Additional templates should be placed in dynamic_deck_templates.lua and loaded in ME after this file.

function DYNDECK.sc_flex4c234(shipID, templateName) 

    local namePrefix = "dyndeck_" .. shipID .. templateName

	-- Created by Redkite: https://www.youtube.com/user/RedKiteRender/

	local staticObj = {

		["groupId"] = 400,		-- ids of the unit we're spawning (will auto increment if id taken)
		["unitId"] = 401,
		["rate"] = 30,
		["name"] = namePrefix .. "4temp EL1 Hornet 1", -- unit name (Name this something identifiable if you wish to remove it later)

		["type"] = "FA-18C_hornet", 			-- unit, category and livery of unit to place.
		["category"] = "Planes",
		["livery_id"] = "VFA-37",

		["y"] = -274433.54379664,
		["heading"] = 37.55948550292,		-- The initial location of the unit (required else unit will offet on origin of map)
		["x"] = -90767.765053252,

		["offsets"] = {				-- The offsets that choose where on the deck it will spawn
			["y"] = 31.035356269975,
			["angle"] = 4.7123889803847,
			["x"] = 23.392320767991
		}, -- end of ["offsets"]
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj)

	-- ********************************************************



	local staticObj = {

		["groupId"] = 401,		-- ids of the unit we're spawning (will auto increment if id taken)
		["unitId"] = 401,
		["rate"] = 30,
		["name"] = namePrefix .. "4temp EL1 Hornet 2", -- unit name (Name this something identifiable if you wish to remove it later)

		["type"] = "FA-18C_hornet", 			-- unit, category and livery of unit to place.
		["category"] = "Planes",
		["livery_id"] = "VFA-37",

		["y"] = 274432.9647788,
		["heading"] =  4.7123889803847,		-- The initial location of the unit (required else unit will offet on origin of map)
		["x"] =  -90757.458535686,

		["offsets"] = {				-- The offsets that choose where on the deck it will spawn
			["y"] = 31.61437411001,
			["angle"] = 4.7123889803847,
			["x"] = 33.698838333992,
		}, -- end of ["offsets"]
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj)

	-- ********************************************************



	local staticObj = {

		["groupId"] = 403,		-- ids of the unit we're spawning (will auto increment if id taken)
		["unitId"] = 403,
		["rate"] = 30,
		["name"] = namePrefix .. "4temp EL2 S3", -- unit name (Name this something identifiable if you wish to remove it later)

		["type"] = "S-3B Tanker", 			-- unit, category and livery of unit to place.
		["category"] = "Planes",
		["livery_id"] = "usaf standard",
		
		["offsets"] = {				-- The offsets that choose where on the deck it will spawn
			["y"] = 29.84889531997,
			["angle"] =  4.4505895925855,
			["x"] = -14.761768433003,
		}, -- end of ["offsets"]

		["y"] = -274434.73025759,	-- The initial location of the unit (required else unit will offet on origin of map)
		["x"] =  -90805.919142453,
		["heading"] =  4.4505895925855,	

		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
	}
	coalition.addStaticObject(country.id.USA, staticObj)

	-- ********************************************************

	local staticObj = {
		
	-- Segment you need to change start  
		["groupId"] = 1,		-- id's of the unit we're spawning (will auto increment if id taken)
		["unitId"] = 1,
		["name"] = namePrefix .. "4temp EL2 Hornet", -- unit name (Name this something identifiable if you wish to remove it later)
		
		
	
		["livery_id"] = "VFA-37",
		["category"] = "Planes",
		["offsets"] = {				-- The offsets that choose where on the deck it will spawn
			["y"] = 31.382766969968,
			["angle"] = 4.7123889803847,
			["x"] = -25.013570722003,
		}, -- end of ["offsets"]
		["type"] = "FA-18C_hornet", 			-- unit, category and livery of unit to place.
	-- Segment you need to change end


		["x"] = -90816.170944742,			-- The initial location of the unit (required else unit will offet on origin of map)
		["y"] = -274433.19638594,
		["heading"] = 4.7123889803847,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
		["rate"] = 30,
	}
	coalition.addStaticObject(country.id.USA, staticObj)

	-- ********************************************************


	local staticObj = {

	-- Segment you need to change start  

		["name"] = namePrefix .. "4temp Finger Seahawk", -- unit name (Name this something identifiable if you wish to remove it later)


		["livery_id"] = "standard",
		["category"] = "Helicopters",
		["offsets"] = {				-- The offsets that choose where on the deck it will spawn
			["y"] = -25.023610410048,
			["angle"] = 1.7976891295542,
			["x"] = -120.511512843,
		}, -- end of ["offsets"]
		["type"] = "SH-60B",			-- unit, category and livery of unit to place.
	-- Segment you need to change end

	-- these can be left as is, but are required.
		["groupId"] = 33,		-- id's of the unit we're spawning (will auto increment if id taken)
		["unitId"] = 33,
		["y"] = -00127900,			-- The initial location of the unit (required else unit will offet on origin of map)
		["x"] = -00126557,			
		["heading"] = 37.55948550292,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
		["rate"] = 30,
	}
	coalition.addStaticObject(country.id.USA, staticObj)

	-- ********************************************************


	local staticObj = {

	-- Segment you need to change start  

		["name"] = namePrefix .. "4temp Corral Crane", -- unit name (Name this something identifiable if you wish to remove it later)


		["category"] = "ADEquipment",
		["offsets"] = {				-- The offsets that choose where on the deck it will spawn
			["y"] = 33.351427629997,
			["angle"] = 4.6600291028249,
			["x"] = -0.92642854900623,
		}, -- end of ["offsets"]
		["type"] = "AS32-36A",			-- unit, category and livery of unit to place.
	-- Segment you need to change end

	-- these can be left as is, but are required.
		["groupId"] = 33,		-- id's of the unit we're spawning (will auto increment if id taken)
		["unitId"] = 33,
		["y"] = -00127900,			-- The initial location of the unit (required else unit will offet on origin of map)
		["x"] = -00126557,			
		["heading"] = 37.55948550292,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
		["rate"] = 30,
	}
	coalition.addStaticObject(country.id.USA, staticObj)

	-- ********************************************************

	local staticObj = {

	-- Segment you need to change start  

		["name"] = namePrefix .. "4temp Point Firetruck", -- unit name (Name this something identifiable if you wish to remove it later)


		["category"] = "ADEquipment",
		["offsets"] = {				-- The offsets that choose where on the deck it will spawn
												["y"] = 32.424999079958,
												["angle"] = 5.4279739737024,
												["x"] = 72.724640796994,
		}, -- end of ["offsets"]
		["type"] = "AS32-p25",			-- unit, category and livery of unit to place.
	-- Segment you need to change end

	-- these can be left as is, but are required.
		["groupId"] = 33,		-- id's of the unit we're spawning (will auto increment if id taken)
		["unitId"] = 33,
		["y"] = -00127900,			-- The initial location of the unit (required else unit will offet on origin of map)
		["x"] = -00126557,			
		["heading"] = 37.55948550292,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
		["rate"] = 30,
	}
	coalition.addStaticObject(country.id.USA, staticObj)

	-- ********************************************************

	local staticObj = {
		
	-- Segment you need to change start  

		["name"] = namePrefix .. "4temp Junk Yard Tug", -- unit name (Name this something identifiable if you wish to remove it later)


		["category"] = "ADEquipment",
		["offsets"] = {				-- The offsets that choose where on the deck it will spawn
												["y"] = 30.242116749985,
												["angle"] = 2.4958208303519,
												["x"] = -79.610005513998,
		}, -- end of ["offsets"]
		["type"] = "AS32-31A",			-- unit, category and livery of unit to place.
	-- Segment you need to change end

	-- these can be left as is, but are required.
		["groupId"] = 33,		-- id's of the unit we're spawning (will auto increment if id taken)
		["unitId"] = 33,
		["y"] = -00127900,			-- The initial location of the unit (required else unit will offet on origin of map)
		["x"] = -00126557,			
		["heading"] = 37.55948550292,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
		["rate"] = 30,
	}
	coalition.addStaticObject(country.id.USA, staticObj)


	-- ********************************************************

	local staticObj = {
	-- Segment you need to change start  

		["name"] = namePrefix .. "4temp EL4 Tomcat 1", -- unit name (Name this something identifiable if you wish to remove it later)

											["livery_id"] = "VF-102 Diamondbacks",
											["category"] = "Planes",
											["offsets"] = 
											{
												["y"] = -32.180430089997,
												["angle"] = 1.9373154697137,
												["x"] = -98.393250321998,
											}, -- end of ["offsets"]
											["type"] = "F-14B",
	-- Segment you need to change end

	-- these can be left as is, but are required.
	--	["groupId"] = 33,		-- id's of the unit we're spawning (will auto increment if id taken?)
		["unitId"] = 33,
		["y"] = -00127900,			-- The initial location of the unit (required else unit will offet on origin of map)
		["x"] = -00126557,			
		["heading"] = 37.55948550292,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
		["rate"] = 30,
	}
	coalition.addStaticObject(country.id.USA, staticObj)

	-- ********************************************************


	local staticObj = {

		["name"] = namePrefix .. "4temp EL4 Tomcat 2", -- unit name (Name this something identifiable if you wish to remove it later)
	-- Copy and paste over this with the units information
										["livery_id"] = "VF-102 Diamondbacks 102",
											["category"] = "Planes",
											["offsets"] = 
											{
												["y"] = -32.924847350048,
												["angle"] = 1.7627825445143,
												["x"] = -110.574623714,
											}, -- end of ["offsets"]
											["type"] = "F-14B",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 33,		-- id's of the unit we're spawning (will auto increment if id taken?)
		["unitId"] = 33,
		["y"] = -00127900,			-- The initial location of the unit (required else unit will offet on origin of map)
		["x"] = -00126557,			
		["heading"] = 37.55948550292,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
		["rate"] = 30,
	}
	coalition.addStaticObject(country.id.USA, staticObj)

	-- ********************************************************

	local staticObj = {

		["name"] = namePrefix .. "4temp Corral E2", -- unit name (Name this something identifiable if you wish to remove it later)
	-- Copy and paste over this with the units information
										["livery_id"] = "E-2D Demo",
											["category"] = "Planes",
											["offsets"] = 
											{
												["y"] = 30.665721859958,
												["angle"] = 4.6949356878647,
												["x"] = 8.8025239199924,
											}, -- end of ["offsets"]
											["type"] = "E-2C",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 33,		-- id's of the unit we're spawning (will auto increment if id taken?)
		["unitId"] = 33,
		["y"] = -00127900,			-- The initial location of the unit (required else unit will offet on origin of map)
		["x"] = -00126557,			
		["heading"] = 37.55948550292,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
		["rate"] = 30,
	}
	coalition.addStaticObject(country.id.USA, staticObj)

	-- ********************************************************

	local staticObj = {

		["name"] = namePrefix .. "4temp Point Hornet", -- unit name (Name this something identifiable if you wish to remove it later)
	-- Copy and paste over this with the units information
											["livery_id"] = "VFA-37",
											["category"] = "Planes",
											["type"] = "FA-18C_hornet",
											["offsets"] = 
											{
												["y"] = 34.190822379955,
												["angle"] = 3.3335788713092,
												["x"] = 61.561528349994,
											}, -- end of ["offsets"]
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 33,		-- id's of the unit we're spawning (will auto increment if id taken?)
		["unitId"] = 33,
		["y"] = -00127900,			-- The initial location of the unit (required else unit will offet on origin of map)
		["x"] = -00126557,			
		["heading"] = 37.55948550292,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
		["rate"] = 30,
	}
	coalition.addStaticObject(country.id.USA, staticObj)

	-- ********************************************************


	local staticObj = {

		["name"] = namePrefix .. "4temp LSO Station 3", -- unit name (Name this something identifiable if you wish to remove it later)
	-- Copy and paste over this with the units information
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = -22.370473980031,
												["angle"] = 2.4434609527921,
												["x"] = -130.61201797701,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_lso_usa",
											["type"] = "Carrier LSO Personell",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 33,		-- id's of the unit we're spawning (will auto increment if id taken?)
		["unitId"] = 33,
		["y"] = -00127900,			-- The initial location of the unit (required else unit will offet on origin of map)
		["x"] = -00126557,			
		["heading"] = 37.55948550292,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
		["rate"] = 30,
	}
	coalition.addStaticObject(country.id.USA, staticObj)

	-- ********************************************************



	local staticObj = {

		["name"] = namePrefix .. "4temp LSO Station 1", -- unit name (Name this something identifiable if you wish to remove it later)
	-- Copy and paste over this with the units information
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = -21.789118479996,
												["angle"] = 4.2935099599061,
												["x"] = -129.42353100701,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_lso1_usa",
											["type"] = "Carrier LSO Personell 1",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 33,		-- id's of the unit we're spawning (will auto increment if id taken?)
		["unitId"] = 33,
		["y"] = -00127900,			-- The initial location of the unit (required else unit will offet on origin of map)
		["x"] = -00126557,			
		["heading"] = 37.55948550292,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
		["rate"] = 30,
	}
	coalition.addStaticObject(country.id.USA, staticObj)

	-- ********************************************************


	local staticObj = {

		["name"] = namePrefix .. "4temp LSO Station 2", -- unit name (Name this something identifiable if you wish to remove it later)
	-- Copy and paste over this with the units information
										["livery_id"] = "white",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = -22.656188270019,
												["angle"] = 1.850049007114,
												["x"] = -129.497732263,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
											["unitId"] = 17,
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 33,		-- id's of the unit we're spawning (will auto increment if id taken?)
		["unitId"] = 33,
		["y"] = -00127900,			-- The initial location of the unit (required else unit will offet on origin of map)
		["x"] = -00126557,			
		["heading"] = 37.55948550292,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
		["rate"] = 30,
	}
	coalition.addStaticObject(country.id.USA, staticObj)

	-- ********************************************************

	local staticObj = {

		["name"] = namePrefix .. "4temp Point Tech 3", -- unit name (Name this something identifiable if you wish to remove it later)
	-- Copy and paste over this with the units information
											["livery_id"] = "white",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 31.799837369996,
												["angle"] = 1.850049007114,
												["x"] = 58.869844022993,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 33,		-- id's of the unit we're spawning (will auto increment if id taken?)
		["unitId"] = 33,
		["y"] = -00127900,			-- The initial location of the unit (required else unit will offet on origin of map)
		["x"] = -00126557,			
		["heading"] = 37.55948550292,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
		["rate"] = 30,
	}
	coalition.addStaticObject(country.id.USA, staticObj)
	-- ********************************************************
	local staticObj = {

		["name"] = namePrefix .. "4temp Point Tech 2", -- unit name (Name this something identifiable if you wish to remove it later)
	-- Copy and paste over this with the units information
											["livery_id"] = "purple",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 36.657607259986,
												["angle"] = 5.9341194567807,
												["x"] = 60.15744568099,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 33,		-- id's of the unit we're spawning (will auto increment if id taken?)
		["unitId"] = 33,
		["y"] = -00127900,			-- The initial location of the unit (required else unit will offet on origin of map)
		["x"] = -00126557,			
		["heading"] = 37.55948550292,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
		["rate"] = 30,
	}
	coalition.addStaticObject(country.id.USA, staticObj)
	-- ********************************************************
	local staticObj = {

		["name"] = namePrefix .. "4temp Point Tech 1", -- unit name (Name this something identifiable if you wish to remove it later)
	-- Copy and paste over this with the units information
											["livery_id"] = "purple",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 32.502165549959,
												["angle"] = 2.460914245312,
												["x"] = 67.356309497001,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 33,		-- id's of the unit we're spawning (will auto increment if id taken?)
		["unitId"] = 33,
		["y"] = -00127900,			-- The initial location of the unit (required else unit will offet on origin of map)
		["x"] = -00126557,			
		["heading"] = 37.55948550292,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
		["rate"] = 30,
	}
	coalition.addStaticObject(country.id.USA, staticObj)
	-- ********************************************************
	local staticObj = {

		["name"] = namePrefix .. "4temp Corral Tech 1", -- unit name (Name this something identifiable if you wish to remove it later)
	-- Copy and paste over this with the units information
											["livery_id"] = "yellow",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 25.203805239988,
												["angle"] = 4.7472955654246,
												["x"] = 15.325497041995,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 33,		-- id's of the unit we're spawning (will auto increment if id taken?)
		["unitId"] = 33,
		["y"] = -00127900,			-- The initial location of the unit (required else unit will offet on origin of map)
		["x"] = -00126557,			
		["heading"] = 37.55948550292,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
		["rate"] = 30,
	}
	coalition.addStaticObject(country.id.USA, staticObj)
	-- ********************************************************
	local staticObj = {

		["name"] = namePrefix .. "4temp Corral Tech 2", -- unit name (Name this something identifiable if you wish to remove it later)
	-- Copy and paste over this with the units information
											["livery_id"] = "yellow",
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 24.753144659975,
												["angle"] = 5.218534463463,
												["x"] = 13.844755134996,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_tech_USA",
											["type"] = "us carrier tech",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 33,		-- id's of the unit we're spawning (will auto increment if id taken?)
		["unitId"] = 33,
		["y"] = -00127900,			-- The initial location of the unit (required else unit will offet on origin of map)
		["x"] = -00126557,			
		["heading"] = 37.55948550292,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
		["rate"] = 30,
	}
	coalition.addStaticObject(country.id.USA, staticObj)
	-- ********************************************************
	local staticObj = {

		["name"] = namePrefix .. "4temp Junk Yard Seaman", -- unit name (Name this something identifiable if you wish to remove it later)
	-- Copy and paste over this with the units information
											["category"] = "Personnel",
											["offsets"] = 
											{
												["y"] = 31.255831669958,
												["angle"] = 4.7472955654246,
												["x"] = -78.473079361007,
											}, -- end of ["offsets"]
											["shape_name"] = "carrier_seaman_USA",
											["type"] = "Carrier Seaman",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 33,		-- id's of the unit we're spawning (will auto increment if id taken?)
		["unitId"] = 33,
		["y"] = -00127900,			-- The initial location of the unit (required else unit will offet on origin of map)
		["x"] = -00126557,			
		["heading"] = 37.55948550292,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
		["rate"] = 30,
	}
	coalition.addStaticObject(country.id.USA, staticObj)
	-- ********************************************************
	local staticObj = {

		["name"] = namePrefix .. "4temp EL2 Tug", -- unit name (Name this something identifiable if you wish to remove it later)
	-- Copy and paste over this with the units information
											["category"] = "ADEquipment",
											["offsets"] = 
											{
												["y"] = 25.035044669989,
												["angle"] = 2.4958208303519,
												["x"] = -22.810439552006,
											}, -- end of ["offsets"]
											["type"] = "AS32-31A",
	-- Copy and paste over this with the units information end

	-- these can be left as is, but is required.
		["groupId"] = 33,		-- id's of the unit we're spawning (will auto increment if id taken?)
		["unitId"] = 33,
		["y"] = -00127900,			-- The initial location of the unit (required else unit will offet on origin of map)
		["x"] = -00126557,			
		["heading"] = 37.55948550292,
		["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
		["linkOffset"] = true,
		["dead"] = false,
		["rate"] = 30,
	}
	coalition.addStaticObject(country.id.USA, staticObj)

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

function DYNDECK.forrestal_flex4c234(shipID, templateName)

    local namePrefix = "dyndeck_" .. shipID .. templateName

    -- Forrestal Full Deck 3 Cats 4 Spawns

    local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 22.33673287998,
                                                ["angle"] = 4.3982297150257,
                                                ["x"] = -77.835629449983,
                                            }, -- end of ["offsets"]
                                            ["type"] = "CV_59_MD3",
                                            ["unitId"] = 27,
                                            ["rate"] = 1,
                                            ["y"] = 469450.90816145,
                                            ["x"] = -360934.97848659,
                                            ["name"] = namePrefix .. "CV-59 MD-3 Mule 1",
                                            ["heading"] = 4.3982297150257,
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                        ["livery_id"] = "vf-33 starfighters ab201 (1988)",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 29.972092159966,
                                                ["angle"] = 4.6949356878647,
                                                ["x"] = -70.971807360009,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14A-135-GR",
                                            ["unitId"] = 34,
                                            ["rate"] = "50",
                                            ["y"] = 469458.54352073,
                                            ["x"] = -360928.1146645,
                                            ["name"] = namePrefix .. "CV-59 F14A heck 1",
                                            ["heading"] = 4.6949356878647,
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)

    -- Copy and paste over this with the units information
                                            ["livery_id"] = "vf-33 starfighters ab201 (1988)",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 26.235489899991,
                                                ["angle"] = 1.5882496193148,
                                                ["x"] = -62.675864739984,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14A-135-GR",
                                            ["unitId"] = 35,
                                            ["rate"] = "50",
                                            ["y"] = 469454.80691847,
                                            ["x"] = -360919.81872188,
                                            ["name"] = namePrefix .. "CV-59 F14A heck 2",
                                            ["heading"] = 1.5882496193148,
    -- Copy and paste over this with the units information end

    -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)

                                            ["livery_id"] = "VF-21 Freelancers 200",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 10.262743929983,
                                                ["angle"] = 3.7350045992679,
                                                ["x"] = 171.91009173996,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14A-135-GR",
                                            ["unitId"] = 2,
                                            ["rate"] = "50",
                                            ["y"] = 469438.8341725,
                                            ["x"] = -360685.2327654,
                                            ["name"] = namePrefix .. "CV-59 F14A bug 1",
                                            ["heading"] = 3.7350045992679,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

    local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            ["livery_id"] = "VF-21 Freelancers 200",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 10.134759989975,
                                                ["angle"] = 3.7350045992679,
                                                ["x"] = 157.95984155999,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14A-135-GR",
                                            ["unitId"] = 5,
                                            ["rate"] = "50",
                                            ["y"] = 469438.70618856,
                                            ["x"] = -360699.18301558,
                                            ["name"] = namePrefix .. "CV-59 F14A bug 2",
                                            ["heading"] = 3.7350045992679,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "VF-21 Freelancers 200",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 10.817341029993,
                                                ["angle"] = 3.7350045992679,
                                                ["x"] = 143.58297822002,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14A-135-GR",
                                            ["unitId"] = 8,
                                            ["rate"] = "50",
                                            ["y"] = 469439.3887696,
                                            ["x"] = -360713.55987892,
                                            ["name"] = namePrefix .. "CV-59 F14A bug 3",
                                            ["heading"] = 3.7350045992679,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "VF-21 Freelancers 200",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 11.457260769967,
                                                ["angle"] = 3.7350045992679,
                                                ["x"] = 128.35288858,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14A-135-GR",
                                            ["unitId"] = 9,
                                            ["rate"] = "50",
                                            ["y"] = 469440.02868934,
                                            ["x"] = -360728.78996856,
                                            ["name"] = namePrefix .. "CV-59 F14A bug 4",
                                            ["heading"] = 3.7350045992679,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "USMC VMA-311 Tomcats",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 14.070305300003,
                                                ["angle"] = 5.1312680008633,
                                                ["x"] = -2.6952501999913,
                                            }, -- end of ["offsets"]
                                            ["type"] = "A-4E-C",
                                            ["unitId"] = 23,
                                            ["rate"] = 40,
                                            ["y"] = 469442.64173387,
                                            ["x"] = -360859.83810734,
                                            ["name"] = namePrefix .. "CV-59 A4 mid 1",
                                            ["heading"] = 5.1312680008633,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 28.15586408996,
                                                ["angle"] = 4.7298422729046,
                                                ["x"] = -41.413245120028,
                                            }, -- end of ["offsets"]
                                            ["type"] = "CV_59_NS60",
                                            ["unitId"] = 26,
                                            ["rate"] = 1,
                                            ["y"] = 469456.72729266,
                                            ["x"] = -360898.55610226,
                                            ["name"] = namePrefix .. "CV-59 NS-60 Tilly 1",
                                            ["heading"] = 4.7298422729046,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 22.33673287998,
                                                ["angle"] = 4.3982297150257,
                                                ["x"] = -77.835629449983,
                                            }, -- end of ["offsets"]
                                            ["type"] = "CV_59_MD3",
                                            ["unitId"] = 27,
                                            ["rate"] = 1,
                                            ["y"] = 469450.90816145,
                                            ["x"] = -360934.97848659,
                                            ["name"] = namePrefix .. "CV-59 MD-3 Mule 1",
                                            ["heading"] = 4.3982297150257,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 31.27796856995,
                                                ["angle"] = 5.2883476335428,
                                                ["x"] = -50.06724542001,
                                            }, -- end of ["offsets"]
                                            ["type"] = "CV_59_Large_Forklift",
                                            ["unitId"] = 28,
                                            ["rate"] = 1,
                                            ["y"] = 469459.84939714,
                                            ["x"] = -360907.21010256,
                                            ["name"] = namePrefix .. "CV-59 Large Forklift 1",
                                            ["heading"] = -0.9948376736368,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 15.971448700002,
                                                ["angle"] = 0.2094395102393,
                                                ["x"] = 84.003947869991,
                                            }, -- end of ["offsets"]
                                            ["type"] = "CV_59_H60",
                                            ["unitId"] = 29,
                                            ["rate"] = 1,
                                            ["y"] = 469444.54287727,
                                            ["x"] = -360773.13890927,
                                            ["name"] = namePrefix .. "CV-59 Hyster 60 1",
                                            ["heading"] = 0.2094395102393,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "VF-31 AE204 1988",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 11.447393599956,
                                                ["angle"] = 3.7350045992679,
                                                ["x"] = 113.54730550997,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14A-135-GR",
                                            ["unitId"] = 31,
                                            ["rate"] = "50",
                                            ["y"] = 469440.01882217,
                                            ["x"] = -360743.59555163,
                                            ["name"] = namePrefix .. "CV-59 F14A bug 5",
                                            ["heading"] = 3.7350045992679,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "VF-31 AE200 1988",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 13.325865889958,
                                                ["angle"] = 3.7350045992679,
                                                ["x"] = 99.885688829992,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14A-135-GR",
                                            ["unitId"] = 32,
                                            ["rate"] = "50",
                                            ["y"] = 469441.89729446,
                                            ["x"] = -360757.25716831,
                                            ["name"] = namePrefix .. "CV-59 F14A bug 6",
                                            ["heading"] = 3.7350045992679,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "vf-33 starfighters ab201 (1988)",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 29.972092159966,
                                                ["angle"] = 4.6949356878647,
                                                ["x"] = -70.971807360009,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14A-135-GR",
                                            ["unitId"] = 34,
                                            ["rate"] = "50",
                                            ["y"] = 469458.54352073,
                                            ["x"] = -360928.1146645,
                                            ["name"] = namePrefix .. "CV-59 F14A heck 1",
                                            ["heading"] = 4.6949356878647,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "vf-33 starfighters ab201 (1988)",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 26.235489899991,
                                                ["angle"] = 1.5882496193148,
                                                ["x"] = -62.675864739984,
                                            }, -- end of ["offsets"]
                                            ["type"] = "F-14A-135-GR",
                                            ["unitId"] = 35,
                                            ["rate"] = "50",
                                            ["y"] = 469454.80691847,
                                            ["x"] = -360919.81872188,
                                            ["name"] = namePrefix .. "CV-59 F14A heck 2",
                                            ["heading"] = 1.5882496193148,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "USMC VMA-311 Tomcats",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 12.865749110002,
                                                ["angle"] = 5.1312680008633,
                                                ["x"] = 6.0377822199953,
                                            }, -- end of ["offsets"]
                                            ["type"] = "A-4E-C",
                                            ["unitId"] = 36,
                                            ["rate"] = 40,
                                            ["y"] = 469441.43717768,
                                            ["x"] = -360851.10507492,
                                            ["name"] = namePrefix .. "CV-59 A4 mid 2",
                                            ["heading"] = 5.1312680008633,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "USN VA-144 Roadrunners",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 13.123868289986,
                                                ["angle"] = 5.1312680008633,
                                                ["x"] = 14.899874229974,
                                            }, -- end of ["offsets"]
                                            ["type"] = "A-4E-C",
                                            ["unitId"] = 37,
                                            ["rate"] = 40,
                                            ["y"] = 469441.69529686,
                                            ["x"] = -360842.24298291,
                                            ["name"] = namePrefix .. "CV-59 A4 mid 3",
                                            ["heading"] = 5.1312680008633,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "USN VA-144 Roadrunners",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 12.263471009966,
                                                ["angle"] = 5.1312680008633,
                                                ["x"] = 24.837462849973,
                                            }, -- end of ["offsets"]
                                            ["type"] = "A-4E-C",
                                            ["unitId"] = 38,
                                            ["rate"] = 40,
                                            ["y"] = 469440.83489958,
                                            ["x"] = -360832.30539429,
                                            ["name"] = namePrefix .. "CV-59 A4 mid 4",
                                            ["heading"] = 5.1312680008633,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "VAW-124 BearAces",
                                            ["category"] = "Planes",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.332032859966,
                                                ["angle"] = 4.2062434973063,
                                                ["x"] = 76.439462339971,
                                            }, -- end of ["offsets"]
                                            ["type"] = "E-2C",
                                            ["unitId"] = 40,
                                            ["rate"] = "100",
                                            ["y"] = 469444.90346143,
                                            ["x"] = -360780.7033948,
                                            ["name"] = namePrefix .. "CV-59 E2D bug 1",
                                            ["heading"] = 4.2062434973063,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 24.159426649974,
                                                ["angle"] = 4.7298422729046,
                                                ["x"] = 66.45111609,
                                            }, -- end of ["offsets"]
                                            ["type"] = "CV_59_NS60",
                                            ["unitId"] = 41,
                                            ["rate"] = 1,
                                            ["y"] = 469452.73085522,
                                            ["x"] = -360790.69174105,
                                            ["name"] = namePrefix .. "CV-59 NS-60 Tilly 2",
                                            ["heading"] = 4.7298422729046,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["mass"] = 1500,
                                            ["category"] = "Cargos",
                                            ["canCargo"] = false,
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.458585369983,
                                                ["angle"] = 4.6425758103049,
                                                ["x"] = 88.506038529973,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "ammo_box_cargo",
                                            ["type"] = "ammo_cargo",
                                            ["unitId"] = 43,
                                            ["rate"] = 100,
                                            ["y"] = 469445.03001394,
                                            ["x"] = -360768.63681861,
                                            ["name"] = namePrefix .. "CV-59 Ammo 1",
                                            ["heading"] = -1.6406094968747,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["mass"] = 1500,
                                            ["category"] = "Cargos",
                                            ["canCargo"] = false,
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.453315379971,
                                                ["angle"] = 4.6425758103049,
                                                ["x"] = 89.827295569994,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "ammo_box_cargo",
                                            ["type"] = "ammo_cargo",
                                            ["unitId"] = 44,
                                            ["rate"] = 100,
                                            ["y"] = 469445.02474395,
                                            ["x"] = -360767.31556157,
                                            ["name"] = namePrefix .. "CV-59 Ammo 2",
                                            ["heading"] = -1.6406094968747,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["mass"] = 1500,
                                            ["category"] = "Cargos",
                                            ["canCargo"] = false,
                                            ["offsets"] = 
                                            {
                                                ["y"] = 29.497724729998,
                                                ["angle"] = 4.6425758103049,
                                                ["x"] = 62.634507059993,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "ammo_box_cargo",
                                            ["type"] = "ammo_cargo",
                                            ["unitId"] = 45,
                                            ["rate"] = 100,
                                            ["y"] = 469458.0691533,
                                            ["x"] = -360794.50835008,
                                            ["name"] = namePrefix .. "CV-59 Ammo 3",
                                            ["heading"] = -1.6406094968747,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["mass"] = 1500,
                                            ["category"] = "Cargos",
                                            ["canCargo"] = false,
                                            ["offsets"] = 
                                            {
                                                ["y"] = 30.737726669991,
                                                ["angle"] = 4.8345620280243,
                                                ["x"] = 61.212707380007,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "ammo_box_cargo",
                                            ["type"] = "ammo_cargo",
                                            ["unitId"] = 46,
                                            ["rate"] = 100,
                                            ["y"] = 469459.30915524,
                                            ["x"] = -360795.93014976,
                                            ["name"] = namePrefix .. "CV-59 Ammo 4",
                                            ["heading"] = -1.4486232791553,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["mass"] = 1500,
                                            ["category"] = "Cargos",
                                            ["canCargo"] = false,
                                            ["offsets"] = 
                                            {
                                                ["y"] = 24.599187659973,
                                                ["angle"] = 0.0174532925199,
                                                ["x"] = -45.894397350028,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "ammo_box_cargo",
                                            ["type"] = "ammo_cargo",
                                            ["unitId"] = 47,
                                            ["rate"] = 100,
                                            ["y"] = 469453.17061623,
                                            ["x"] = -360903.03725449,
                                            ["name"] = namePrefix .. "CV-59 Ammo 5",
                                            ["heading"] = 0.0174532925199,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["mass"] = 1500,
                                            ["category"] = "Cargos",
                                            ["canCargo"] = false,
                                            ["offsets"] = 
                                            {
                                                ["y"] = 23.251629469974,
                                                ["angle"] = 0.0174532925199,
                                                ["x"] = -45.874063010036,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "ammo_box_cargo",
                                            ["type"] = "ammo_cargo",
                                            ["unitId"] = 48,
                                            ["rate"] = 100,
                                            ["y"] = 469451.82305804,
                                            ["x"] = -360903.01692015,
                                            ["name"] = namePrefix .. "CV-59 Ammo 6",
                                            ["heading"] = 0.0174532925199,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["mass"] = 840,
                                            ["category"] = "Cargos",
                                            ["canCargo"] = false,
                                            ["offsets"] = 
                                            {
                                                ["y"] = 24.196566589992,
                                                ["angle"] = 1.4835298641951,
                                                ["x"] = -48.328411909984,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "m117_cargo",
                                            ["type"] = "m117_cargo",
                                            ["unitId"] = 49,
                                            ["rate"] = 100,
                                            ["y"] = 469452.76799516,
                                            ["x"] = -360905.47126905,
                                            ["name"] = namePrefix .. "CV-59 Bombs 1",
                                            ["heading"] = 1.4835298641951,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["mass"] = 840,
                                            ["category"] = "Cargos",
                                            ["canCargo"] = false,
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.106317459955,
                                                ["angle"] = 4.6425758103049,
                                                ["x"] = 91.922479700006,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "m117_cargo",
                                            ["type"] = "m117_cargo",
                                            ["unitId"] = 50,
                                            ["rate"] = 100,
                                            ["y"] = 469444.67774603,
                                            ["x"] = -360765.22037744,
                                            ["name"] = namePrefix .. "CV-59 Bombs 2",
                                            ["heading"] = -1.6406094968747,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["mass"] = 840,
                                            ["category"] = "Cargos",
                                            ["canCargo"] = false,
                                            ["offsets"] = 
                                            {
                                                ["y"] = 16.031181099999,
                                                ["angle"] = 4.6425758103049,
                                                ["x"] = 93.406567899976,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "m117_cargo",
                                            ["type"] = "m117_cargo",
                                            ["unitId"] = 51,
                                            ["rate"] = 100,
                                            ["y"] = 469444.60260967,
                                            ["x"] = -360763.73628924,
                                            ["name"] = namePrefix .. "CV-59 Bombs 3",
                                            ["heading"] = -1.6406094968747,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["mass"] = 840,
                                            ["category"] = "Cargos",
                                            ["canCargo"] = false,
                                            ["offsets"] = 
                                            {
                                                ["y"] = 15.933522039966,
                                                ["angle"] = 4.6425758103049,
                                                ["x"] = 94.803157570015,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "m117_cargo",
                                            ["type"] = "m117_cargo",
                                            ["unitId"] = 52,
                                            ["rate"] = 100,
                                            ["y"] = 469444.50495061,
                                            ["x"] = -360762.33969957,
                                            ["name"] = namePrefix .. "CV-59 Bombs 4",
                                            ["heading"] = -1.6406094968747,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["mass"] = 840,
                                            ["category"] = "Cargos",
                                            ["canCargo"] = false,
                                            ["offsets"] = 
                                            {
                                                ["y"] = 21.045754369989,
                                                ["angle"] = 4.7298422729046,
                                                ["x"] = 62.761577569996,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "m117_cargo",
                                            ["type"] = "m117_cargo",
                                            ["unitId"] = 53,
                                            ["rate"] = 100,
                                            ["y"] = 469449.61718294,
                                            ["x"] = -360794.38127957,
                                            ["name"] = namePrefix .. "CV-59 Bombs 5",
                                            ["heading"] = -1.553343034275,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["mass"] = 840,
                                            ["category"] = "Cargos",
                                            ["canCargo"] = false,
                                            ["offsets"] = 
                                            {
                                                ["y"] = 21.37175436999,
                                                ["angle"] = 0,
                                                ["x"] = 26.183162770001,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "m117_cargo",
                                            ["type"] = "m117_cargo",
                                            ["unitId"] = 54,
                                            ["rate"] = 100,
                                            ["y"] = 469449.94318294,
                                            ["x"] = -360830.95969437,
                                            ["name"] = namePrefix .. "CV-59 Bombs 6",
                                            ["heading"] = 0,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["mass"] = 840,
                                            ["category"] = "Cargos",
                                            ["canCargo"] = false,
                                            ["offsets"] = 
                                            {
                                                ["y"] = 20.893985959992,
                                                ["angle"] = 0,
                                                ["x"] = 23.123464139993,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "m117_cargo",
                                            ["type"] = "m117_cargo",
                                            ["unitId"] = 56,
                                            ["rate"] = 100,
                                            ["y"] = 469449.46541453,
                                            ["x"] = -360834.019393,
                                            ["name"] = namePrefix .. "CV-59 Bombs 8",
                                            ["heading"] = 0,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["mass"] = 840,
                                            ["category"] = "Cargos",
                                            ["canCargo"] = false,
                                            ["offsets"] = 
                                            {
                                                ["y"] = 19.439851770003,
                                                ["angle"] = 0,
                                                ["x"] = 23.309999260004,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "m117_cargo",
                                            ["type"] = "m117_cargo",
                                            ["unitId"] = 57,
                                            ["rate"] = 100,
                                            ["y"] = 469448.01128034,
                                            ["x"] = -360833.83285788,
                                            ["name"] = namePrefix .. "CV-59 Bombs 9",
                                            ["heading"] = 0,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["mass"] = 1500,
                                            ["category"] = "Cargos",
                                            ["canCargo"] = false,
                                            ["offsets"] = 
                                            {
                                                ["y"] = 21.212431159976,
                                                ["angle"] = 4.7298422729046,
                                                ["x"] = 28.729959079996,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "ammo_box_cargo",
                                            ["type"] = "ammo_cargo",
                                            ["unitId"] = 58,
                                            ["rate"] = 100,
                                            ["y"] = 469449.78385973,
                                            ["x"] = -360828.41289806,
                                            ["name"] = namePrefix .. "CV-59 Ammo 7",
                                            ["heading"] = -1.553343034275,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 26.728229369968,
                                                ["angle"] = 1.2740903539558,
                                                ["x"] = -54.847454730014,
                                            }, -- end of ["offsets"]
                                            ["type"] = "CV_59_MD3",
                                            ["unitId"] = 59,
                                            ["rate"] = 1,
                                            ["y"] = 469455.29965794,
                                            ["x"] = -360911.99031187,
                                            ["name"] = namePrefix .. "CV-59 MD-3 Mule 2",
                                            ["heading"] = 1.274090353955,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 11.97817606997,
                                                ["angle"] = 2.8797932657906,
                                                ["x"] = 90.446121620014,
                                            }, -- end of ["offsets"]
                                            ["type"] = "CV_59_MD3",
                                            ["unitId"] = 60,
                                            ["rate"] = 1,
                                            ["y"] = 469440.54960464,
                                            ["x"] = -360766.69673552,
                                            ["name"] = namePrefix .. "CV-59 MD-3 Mule 3",
                                            ["heading"] = 2.8797932657906,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 19.195021889987,
                                                ["angle"] = 5.7246799465414,
                                                ["x"] = 28.489813330001,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
                                            ["unitId"] = 65,
                                            ["rate"] = 20,
                                            ["y"] = 469447.76645046,
                                            ["x"] = -360828.65304381,
                                            ["name"] = namePrefix .. "CV-59 Technician 1",
                                            ["heading"] = -0.5585053606382,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 17.918418669957,
                                                ["angle"] = 6.1959188445799,
                                                ["x"] = 28.31462095998,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
                                            ["unitId"] = 66,
                                            ["rate"] = 20,
                                            ["y"] = 469446.48984724,
                                            ["x"] = -360828.82823618,
                                            ["name"] = namePrefix .. "CV-59 Technician 2",
                                            ["heading"] = -0.0872664625997,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 21.632032659953,
                                                ["angle"] = 4.3633231299858,
                                                ["x"] = 30.092285580002,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
                                            ["unitId"] = 67,
                                            ["rate"] = 20,
                                            ["y"] = 469450.20346123,
                                            ["x"] = -360827.05057156,
                                            ["name"] = namePrefix .. "CV-59 Technician 3",
                                            ["heading"] = -1.9198621771938,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 31.081593789975,
                                                ["angle"] = 4.3458698374659,
                                                ["x"] = 62.348933589994,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
                                            ["unitId"] = 68,
                                            ["rate"] = 20,
                                            ["y"] = 469459.65302236,
                                            ["x"] = -360794.79392355,
                                            ["name"] = namePrefix .. "CV-59 Technician 4",
                                            ["heading"] = -1.9373154697137,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 24.131282319955,
                                                ["angle"] = 3.2463124087094,
                                                ["x"] = -44.513802300033,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
                                            ["unitId"] = 69,
                                            ["rate"] = 20,
                                            ["y"] = 469452.70271089,
                                            ["x"] = -360901.65665944,
                                            ["name"] = namePrefix .. "CV-59 Technician 5",
                                            ["heading"] = -3.0368728984702,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 25.487857559987,
                                                ["angle"] = 4.1713369122664,
                                                ["x"] = -47.165706939995,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
                                            ["unitId"] = 70,
                                            ["rate"] = 20,
                                            ["y"] = 469454.05928613,
                                            ["x"] = -360904.30856408,
                                            ["name"] = namePrefix .. "CV-59 Technician 6",
                                            ["heading"] = -2.1118483949132,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 29.100804699992,
                                                ["angle"] = 0.9424777960769,
                                                ["x"] = 61.324876810017,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
                                            ["unitId"] = 71,
                                            ["rate"] = 20,
                                            ["y"] = 469457.67223327,
                                            ["x"] = -360795.81798033,
                                            ["name"] = namePrefix .. "CV-59 Technician 7",
                                            ["heading"] = 0.9424777960769,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 27.730528499989,
                                                ["angle"] = 1.3439035240356,
                                                ["x"] = 62.48927043,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
                                            ["unitId"] = 72,
                                            ["rate"] = 20,
                                            ["y"] = 469456.30195707,
                                            ["x"] = -360794.65358671,
                                            ["name"] = namePrefix .. "CV-59 Technician 8",
                                            ["heading"] = 1.3439035240356,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 11.66171458998,
                                                ["angle"] = 2.9496064358704,
                                                ["x"] = -5.2636686500045,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
                                            ["unitId"] = 73,
                                            ["rate"] = 20,
                                            ["y"] = 469440.23314316,
                                            ["x"] = -360862.40652579,
                                            ["name"] = namePrefix .. "CV-59 Technician 9",
                                            ["heading"] = 2.9496064358704,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "red",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 14.806669440004,
                                                ["angle"] = 4.7123889803847,
                                                ["x"] = 88.081767519994,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
                                            ["unitId"] = 74,
                                            ["rate"] = 20,
                                            ["y"] = 469443.37809801,
                                            ["x"] = -360769.06108962,
                                            ["name"] = namePrefix .. "CV-59 Technician 10",
                                            ["heading"] = -1.5707963267949,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "blue",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 6.6044085899484,
                                                ["angle"] = 3.9444441095072,
                                                ["x"] = 22.162760849984,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
                                            ["unitId"] = 75,
                                            ["rate"] = 20,
                                            ["y"] = 469435.17583716,
                                            ["x"] = -360834.98009629,
                                            ["name"] = namePrefix .. "CV-59 Technician 11",
                                            ["heading"] = -2.3387411976724,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 5.6825801399536,
                                                ["angle"] = 0.907571211037,
                                                ["x"] = 21.009934830014,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
                                            ["unitId"] = 76,
                                            ["rate"] = 20,
                                            ["y"] = 469434.25400871,
                                            ["x"] = -360836.13292231,
                                            ["name"] = namePrefix .. "CV-59 Technician 12",
                                            ["heading"] = 0.907571211037,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "blue",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 12.482483859989,
                                                ["angle"] = 4.6425758103049,
                                                ["x"] = -6.3519227600191,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
                                            ["unitId"] = 77,
                                            ["rate"] = 20,
                                            ["y"] = 469441.05391243,
                                            ["x"] = -360863.4947799,
                                            ["name"] = namePrefix .. "CV-59 Technician 13",
                                            ["heading"] = -1.6406094968747,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "blue",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 9.8248471499537,
                                                ["angle"] = 3.700098014228,
                                                ["x"] = 76.027643800015,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
                                            ["unitId"] = 78,
                                            ["rate"] = 20,
                                            ["y"] = 469438.39627572,
                                            ["x"] = -360781.11521334,
                                            ["name"] = namePrefix .. "CV-59 Technician 14",
                                            ["heading"] = -2.5830872929516,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "blue",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 8.5271150099579,
                                                ["angle"] = 1.6057029118347,
                                                ["x"] = 75.335432389984,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
                                            ["unitId"] = 79,
                                            ["rate"] = 20,
                                            ["y"] = 469437.09854358,
                                            ["x"] = -360781.80742475,
                                            ["name"] = namePrefix .. "CV-59 Technician 15",
                                            ["heading"] = 1.6057029118347,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 9.5831095199683,
                                                ["angle"] = 5.7944931166212,
                                                ["x"] = 74.820895490004,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
                                            ["unitId"] = 80,
                                            ["rate"] = 20,
                                            ["y"] = 469438.15453809,
                                            ["x"] = -360782.32196165,
                                            ["name"] = namePrefix .. "CV-59 Technician 16",
                                            ["heading"] = -0.4886921905584,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 9.395204159955,
                                                ["angle"] = 5.235987755983,
                                                ["x"] = 89.386125179997,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
                                            ["unitId"] = 81,
                                            ["rate"] = 20,
                                            ["y"] = 469437.96663273,
                                            ["x"] = -360767.75673196,
                                            ["name"] = namePrefix .. "CV-59 Technician 17",
                                            ["heading"] = -1.0471975511966,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 7.5748663699487,
                                                ["angle"] = 4.6425758103049,
                                                ["x"] = 20.888940159988,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
                                            ["unitId"] = 82,
                                            ["rate"] = 20,
                                            ["y"] = 469436.14629494,
                                            ["x"] = -360836.25391698,
                                            ["name"] = namePrefix .. "CV-59 Technician 18",
                                            ["heading"] = -1.6406094968747,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 13.475844899949,
                                                ["angle"] = 1.3962634015954,
                                                ["x"] = 28.803845649993,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
                                            ["unitId"] = 83,
                                            ["rate"] = 20,
                                            ["y"] = 469442.04727347,
                                            ["x"] = -360828.33901149,
                                            ["name"] = namePrefix .. "CV-59 Technician 19",
                                            ["heading"] = 1.3962634015954,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "brown",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 9.4500615699799,
                                                ["angle"] = 3.4382986264288,
                                                ["x"] = 90.874154079997,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
                                            ["unitId"] = 84,
                                            ["rate"] = 20,
                                            ["y"] = 469438.02149014,
                                            ["x"] = -360766.26870306,
                                            ["name"] = namePrefix .. "CV-59 Technician 20",
                                            ["heading"] = -2.8448866807508,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "purple",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 28.252880869957,
                                                ["angle"] = 5.3930673886625,
                                                ["x"] = 32.270201759995,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
                                            ["unitId"] = 85,
                                            ["rate"] = 20,
                                            ["y"] = 469456.82430944,
                                            ["x"] = -360824.87265538,
                                            ["name"] = namePrefix .. "CV-59 Technician 21",
                                            ["heading"] = -0.8901179185171,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "purple",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 23.989666519978,
                                                ["angle"] = 3.7699111843077,
                                                ["x"] = -53.761342699989,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
                                            ["unitId"] = 86,
                                            ["rate"] = 20,
                                            ["y"] = 469452.56109509,
                                            ["x"] = -360910.90419984,
                                            ["name"] = namePrefix .. "CV-59 Technician 22",
                                            ["heading"] = -2.5132741228719,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "purple",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 7.5537387600052,
                                                ["angle"] = 5.7770398241012,
                                                ["x"] = 19.452221489977,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
                                            ["unitId"] = 87,
                                            ["rate"] = 20,
                                            ["y"] = 469436.12516733,
                                            ["x"] = -360837.69063565,
                                            ["name"] = namePrefix .. "CV-59 Technician 24",
                                            ["heading"] = -0.5061454830784,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "purple",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 11.661630999995,
                                                ["angle"] = 4.7123889803847,
                                                ["x"] = 87.133109899994,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_tech_USA",
                                            ["type"] = "us carrier tech",
                                            ["unitId"] = 88,
                                            ["rate"] = 20,
                                            ["y"] = 469440.23305957,
                                            ["x"] = -360770.00974724,
                                            ["name"] = namePrefix .. "CV-59 Technician 23",
                                            ["heading"] = -1.5707963267949,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -2.7689845300047,
                                                ["angle"] = 3.8397243543875,
                                                ["x"] = 98.852623810002,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_shooter",
                                            ["type"] = "us carrier shooter",
                                            ["unitId"] = 89,
                                            ["rate"] = 20,
                                            ["y"] = 469425.80244404,
                                            ["x"] = -360758.29023333,
                                            ["name"] = namePrefix .. "CV-59 Shooter 1",
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -2.6633533000131,
                                                ["angle"] = 4.904375198104,
                                                ["x"] = 97.342026819999,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_shooter",
                                            ["type"] = "us carrier shooter",
                                            ["unitId"] = 90,
                                            ["rate"] = 20,
                                            ["y"] = 469425.90807527,
                                            ["x"] = -360759.80083032,
                                            ["name"] = namePrefix .. "CV-59 Shooter 2",
                                            ["heading"] = -1.378810109075,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "green",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -2.104307260015,
                                                ["angle"] = 3.682644721708,
                                                ["x"] = 88.38926252001,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_shooter",
                                            ["type"] = "us carrier shooter",
                                            ["unitId"] = 91,
                                            ["rate"] = 20,
                                            ["y"] = 469426.46712131,
                                            ["x"] = -360768.75359462,
                                            ["name"] = namePrefix .. "CV-59 Shooter 3",
                                            ["heading"] = -2.6005405854716,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "white",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -1.142018720042,
                                                ["angle"] = 5.0440015382636,
                                                ["x"] = 89.373070589965,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_shooter",
                                            ["type"] = "us carrier shooter",
                                            ["unitId"] = 92,
                                            ["rate"] = 20,
                                            ["y"] = 469427.42940985,
                                            ["x"] = -360767.76978655,
                                            ["name"] = namePrefix .. "CV-59 Shooter 5",
                                            ["heading"] = -1.239183768916,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["mass"] = 840,
                                            ["category"] = "Cargos",
                                            ["canCargo"] = false,
                                            ["offsets"] = 
                                            {
                                                ["y"] = 24.73112368997,
                                                ["angle"] = 4.7298422729046,
                                                ["x"] = 62.647827629989,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "m117_cargo",
                                            ["type"] = "m117_cargo",
                                            ["unitId"] = 95,
                                            ["rate"] = 100,
                                            ["y"] = 469453.30255226,
                                            ["x"] = -360794.49502951,
                                            ["name"] = namePrefix .. "CV-59 Bombs 10",
                                            ["heading"] = -1.553343034275,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["livery_id"] = "green",
                                            ["category"] = "Personnel",
                                            ["offsets"] = 
                                            {
                                                ["y"] = -2.0484931700048,
                                                ["angle"] = 3.8048177693476,
                                                ["x"] = 90.597058320011,
                                            }, -- end of ["offsets"]
                                            ["shape_name"] = "carrier_shooter",
                                            ["type"] = "us carrier shooter",
                                            ["unitId"] = 93,
                                            ["rate"] = 20,
                                            ["y"] = 469426.5229354,
                                            ["x"] = -360766.54579882,
                                            ["name"] = namePrefix .. "CV-59 Shooter 4",
                                            ["heading"] = -2.478367537832,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object
                                            
                                            local staticObj = {
        ["name"] = namePrefix .. "dDeck_forrestal", -- unit name (Name this something identifiable if you wish to remove it later)
                                            
                                                                                    ["category"] = "ADEquipment",
                                            ["offsets"] = 
                                            {
                                                ["y"] = 21.043987939949,
                                                ["angle"] = 4.6949356878647,
                                                ["x"] = -7.95861625002,
                                            }, -- end of ["offsets"]
                                            ["type"] = "CV_59_H60",
                                            ["unitId"] = 94,
                                            ["rate"] = 1,
                                            ["y"] = 469449.61541651,
                                            ["x"] = -360865.10147339,
                                            ["name"] = namePrefix .. "CV-59 Hyster 60 3",
                                            ["heading"] = -1.5882496193149,
                                            
                                            -- these can be left as is, but is required.
        ["groupId"] = 1,		-- id's of the group/unit we're spawning (will auto increment if id taken?)
        ["unitId"] = 1,
        ["y"] = 0,			-- The initial location of the unit (required else unit will offset on origin of map)
        ["x"] = 0,			
        ["heading"] = 0,
        ["linkUnit"] = shipID, -- This value must be set Via 'shipID = #' where # is the id of the ship you wish to spawn on
        ["linkOffset"] = true,
        ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, staticObj) -- makes the object

end

--- END Dynamic Deck Population
