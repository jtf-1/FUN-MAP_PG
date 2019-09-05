-- Label parameters
-- Copyright (C) 2018, Eagle Dynamics.

AirOn			 		= true
GroundOn 		 	= true
NavyOn		 	 	= true
WeaponOn 		 	= true
labels_format_version = 1 -- labels format version

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

local function dot_symbol(blending,opacity)
    return {"˙","CenterCenter", blending or 1.0 , opacity  or 0.1}
end

local EMPTY = {"", "CenterCenter", 1, 1, 0, 0}

-- Force DOT labels

AirFormat = {
-- [distance up to which dot will be applied]	= dot_symbol(color_blending_k, opacity)
[1000]	= EMPTY,
[2000]	= dot_symbol(0,0.75), 
[10000]	= dot_symbol(0,0.5), 
[20000]	= dot_symbol(0,0.25), 
[30000] = dot_symbol(0,0.1), 
}

GroundFormat = {
[1000]	= EMPTY,
[5000]	=  dot_symbol(0,0.75), 
[10000]	=  dot_symbol(0, 0.5), 
[20000] =  dot_symbol(0, 0.25), 
}

NavyFormat = {
[1000]	= EMPTY,
[5000]	= dot_symbol(0,0.5), 
[10000]	= dot_symbol(0,0.75), 
[20000]	= dot_symbol(0,0.5), 
[30000] = dot_symbol(0,0.25), 
}

WeaponFormat = {
[1000]	= EMPTY,
[5000]	= dot_symbol(0,0.25),
[10000]	= dot_symbol(0,0.5),
[20000] = dot_symbol(0,0.25),
}

-- Colors in {red, green, blue} format, volume from 0 up to 255
ColorAliesSide   = {85, 85, 85}
ColorEnemiesSide = {85, 85, 85}
ColorUnknown     = {85, 85, 85} -- will be blend at distance with coalition color

-- DO NOT MODIFY ANYTHING BELOW
ShadowColorNeutralSide  = {0,0,0,0}
ShadowColorAliesSide  = {0,0,0,0}
ShadowColorEnemiesSide  = {0,0,0,0}
ShadowColorUnknown    = {0,0,0,0}

BlurColorNeutralSide  = {50, 50, 50 ,255}
BlurColorAliesSide    = {50, 50, 50 ,255}
BlurColorEnemiesSide  = {50, 50, 50 ,255}
BlurColorUnknown    = {50, 50, 50 ,255}

local text_shadow_color = {128, 128, 128, 255}
local text_blur_color   = {0, 0, 255, 255}

PointFormat = { 
[1e10]  = {"%N%n%D", "CenterCenter"},
}

font_properties =  {"DejaVuLGCSans.ttf", 2, 0, 0, 0}
