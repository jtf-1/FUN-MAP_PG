-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- Mission script dynamic loader
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


local JTFbase = _G
local __JTFfilepath = 'E:/GitHub/FUN-MAP_NTTR/scripts/dynamic/'

__JTFLoader = {}

__JTFLoader.Include = function( JTFIncludeFile )
	if not __JTFLoader.Includes[JTFIncludeFile] then
		__JTFLoader.Includes[JTFIncludeFile] = JTFIncludeFile
		local f = assert( JTFbase.loadfile( __JTFfilepath .. JTFIncludeFile ) )
		if f == nil then
			error ("Mission Loader: could not load mission file " .. JTFIncludeFile )
		else
			env.info( "[JTF-1] Mission Loader: " .. JTFIncludeFile .. " dynamically loaded." )
			return f()
		end
	end
end

__JTFLoader.Includes = {}

__JTFLoader.Include( 'mission_files.lua' ) -- "E:\GitHub\FUN-MAP_NTTR\scripts\dynamic\mission_files.lua"

--- End mission script dynamic loader