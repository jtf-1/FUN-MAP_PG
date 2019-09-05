-- Label parameters
-- Copyright (C) 2018, Eagle Dynamics.



-- labels =  0  -- NONE
-- labels =  1  -- FULL
-- labels =  2  -- ABBREVIATED
-- labels =  3  -- DOT ONLY

-- Off: No labels are used
-- Full: As we have now
-- Abbreviated: Only red or blue dot and unit type name based on side
-- Dot Only: Only red or blue dot based on unit side



--local IS_DOT 		 = labels and labels ==  3
--local IS_ABBREVIATED = labels and labels ==  2
local IS_DOT 		 = true
local IS_ABBREVIATED = false

AirOn			 		= true
GroundOn 		 		= true
NavyOn		 	 		= true
WeaponOn 		 		= true
labels_format_version 	= 1 -- labels format vesrion
---------------------------------
-- Label text format symbols
-- %N - name of object
-- %D - distance to object
-- %P - pilot name
-- %n - new line 
-- %% - symbol '%'
-- %x, where x is not NDPn% - symbol 'x'
-- %C - extended info for vehicle's and ship's weapon systems
------------------------------------------
-- Example
-- labelFormat[5000] = {"Name: %N%nDistance: %D%n Pilot: %P","LeftBottom",0,0}
-- up to 5km label is:
--       Name: Su-33
--       Distance: 30km
--       Pilot: Pilot1


-- alignment options 
--"RightBottom"
--"LeftTop"
--"RightTop"
--"LeftCenter"
--"RightCenter"
--"CenterBottom"
--"CenterTop"
--"CenterCenter"
--"LeftBottom"


-- labels font properties {font_file_name, font_size_in_pixels, text_shadow_offset_x, text_shadow_offset_y, text_blur_type}
-- text_blur_type = 0 - none
-- text_blur_type = 1 - 3x3 pixels
-- text_blur_type = 2 - 5x5 pixels
font_properties =  {"DejaVuLGCSans.ttf", 2, 0, 0, 0}

local aircraft_symbol_near  =  "˙"  --U+02C8
local aircraft_symbol_far   =  "˙"  --U+02C8

local ground_symbol_near    = "˙"  --U+02C8
local ground_symbol_far     = "˙"  --U+02C8

local navy_symbol_near      = "˙"  --U+02C8
local navy_symbol_far       = "˙"  --U+02C8

local weapon_symbol_near    = "˙"  --U+02C8
local weapon_symbol_far     = "˙"  --U+02C8

local function dot_symbol(blending,opacity)
    return {"˙","CenterCenter", blending or 1.0 , opacity  or 0.1}
end

local NAME 				   = "%N"
local NAME_DISTANCE_PLAYER = "%N%n %D%n %P"
local NAME_DISTANCE        = "%N%n %D"
local DISTANCE             =   "%n %D"

-- Text shadow color in {red, green, blue, alpha} format, volume from 0 up to 255
-- alpha will by multiplied by opacity value for corresponding distance
local text_shadow_color = {128, 128, 128, 255}
local text_blur_color 	= {0, 0, 255, 255}

local EMPTY = {"", "CenterCenter", 1, 1, 0, 0}

-- Force DOT labels

AirFormat = {
--[distance]		= {format, alignment, color_blending_k, opacity, shift_in_pixels_x, shift_in_pixels_y}
[1000]	= EMPTY,
[2000]	= {aircraft_symbol_near	, "CenterCenter"	,0	, 0.75	,0	, 0}, --dot_symbol(0,0.25), --
[10000]	= {aircraft_symbol_far 	, "CenterCenter"	,0	, 0.5	,0	, 0}, --dot_symbol(0,0.1), --
[20000]	= {aircraft_symbol_far 	, "CenterCenter"	,0	, 0.25	,0	, 0}, --dot_symbol(0,0.05), --
[30000] = {aircraft_symbol_far  , "CenterCenter"  ,0  , 0.1 ,0  , 0}, --dot_symbol(0,0.05), --
}

GroundFormat = {
--[distance]		= {format , alignment, color_blending_k, opacity, shift_in_pixels_x, shift_in_pixels_y}
[1000]	= EMPTY,
[5000]	=  {ground_symbol_far	,"CenterCenter"	,0	, 0.75	,0	, 0}, --dot_symbol(0,0.25), --
[10000]	=  {ground_symbol_far	,"CenterCenter"	,0	, 0.5	,0	, 0}, --dot_symbol(0, 0.1), --
[20000] =  {ground_symbol_far ,"CenterCenter" ,0  , 0.25  ,0  , 0}, --dot_symbol(0, 0.1), --
}

NavyFormat = {
--[distance]		= {format, alignment, color_blending_k, opacity, shift_in_pixels_x, shift_in_pixels_y}
[1000]	= EMPTY,
[5000]	= {navy_symbol_near		,"CenterCenter"	,0	, 0.5	,0	, 0}, --dot_symbol(0,0.75), --
[10000]	= {navy_symbol_far		,"CenterCenter"	,0	, 0.75	,0	, 0}, --dot_symbol(0,0.5), --
[20000]	= {navy_symbol_far		,"CenterCenter"	,0	, 0.5	,0	, 0}, --dot_symbol(0,0.25), --
[30000] = {navy_symbol_far    ,"CenterCenter" ,0  , 0.25 ,0  , 0}, --dot_symbol(0,0.25), --
}

WeaponFormat = {
--[distance]		= {format ,alignment, color_blending_k, opacity, shift_in_pixels_x, shift_in_pixels_y}
[1000]	= EMPTY,
[5000]	= {weapon_symbol_far	,"CenterCenter"	,0	, 0.25	,0	, 0}, --dot_symbol(0,0.1),--
[10000]	= {weapon_symbol_far	,"CenterCenter"	,0	, 0.5	,0	, 0}, --dot_symbol(0,0.05),--
[20000] = {weapon_symbol_far  ,"CenterCenter" ,0  , 0.25 ,0  , 0}, --dot_symbol(0,0.05),--
}



PointFormat = { 
[1e10]	= {"%N%n%D", "CenterCenter"},
}


-- Colors in {red, green, blue} format, volume from 0 up to 255

ColorAliesSide   = {85, 85, 85}
ColorEnemiesSide = {85, 85, 85}
ColorUnknown     = {85, 85, 85} -- will be blend at distance with coalition color



ShadowColorNeutralSide 	= {0,0,0,0}
ShadowColorAliesSide	= {0,0,0,0}
ShadowColorEnemiesSide 	= {0,0,0,0}
ShadowColorUnknown 		= {0,0,0,0}

BlurColorNeutralSide 	= {50, 50, 50 ,255}
BlurColorAliesSide		= {50, 50, 50 ,255}
BlurColorEnemiesSide	= {50, 50, 50 ,255}
BlurColorUnknown		= {50, 50, 50 ,255}
