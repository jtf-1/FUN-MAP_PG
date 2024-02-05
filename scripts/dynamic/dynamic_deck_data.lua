env.info( "[JTF-1] dynamic_deck_templates" )
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- Dynamic Deck Templates
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--
-- NOTE: dynamic_deck_population.lua should be loaded AFTER this file.
--
-- Load order in miz MUST be;
--     1. dynamic_deck_data.lua
--     2. dynamic_deck.lua
--
--     dynamic_deck_templates.lua can be loaded either before or after these files

local _msg

if not DYNDECK then -- Error prevention. Create empty container if DDP module not loaded.
    _msg = "[JTF-1 DYNDECK] CORE FILE NOT LOADED!"
    DYNDECK = {}
elseif not DYNDECK.sc_ then
    _msg = "[JTF-1 DYNDECK] TEMPLATE FILE NOT LOADED!"
    BASE:E(_msg)
end

if _msg then
    SUPPORTAC:E(_msg)
end

DYNDECK.ship = {
    {
        name = "CVN-72 Lincoln", -- Name will be used for ship's menu entry
        unit = "JTF-1_CVN72", -- name of ship unit object
        --id = 20566, -- unit ID in Mission Editor
        coalitionID = 2, -- 1, red, 2 blue
        fullTemplateActive = false, -- flag to denote a full deck template is active
        templates = {
            -- {
            --     -- Submenu group under which template should appear. 
            --     -- "" assumes full template. 
            --     -- If a name is present, partial template assumed. 
            --     -- Value will be used as the text for group in the submenu.
            --     -- Templates with same group name will appear in same group submenu

            --     group = "", 

            --     -- name of template as it appears in the name of the function containing the template

            --     name = "sc_flex4c234", 

            --     -- text that will appear in the template's menu entry

            --     menutext = "Launch and Recovery medium density", 

            --     -- whether a full deck clear should not be performed prior to applying the template. 
            --     -- True = do not clear deck (for partial templates). 
            --     -- False = clear deck first (for full templates)

            --     noClear = false, 

            --     -- flag to denote template is active. 
            --     -- True = active (do not re-apply the template if it seelcted from the menu). 
            --     -- False = template is not active.

            --     active = false 
            -- },
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
}

if DYNDECK.Start then
    DYNDECK:Start()
end
