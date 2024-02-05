env.info( "[JTF-1] markspawn" )
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- BEGIN MARK SPAWN
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--
-- Sourced from Virtual 57th and refactored for JTF-1
--
--
-- **NOTE**: MARKSPAWN_TEMPLATES.LUA MUST BE LOADED AFTER THIS FILE IS LOADED!
--
-- This file contains functions and key values and should be loaded first.
-- The file markspawn_templates.lua contains the built-in templates used for spawning assets.
--
-- If MARKSPAWN_DATA.LUA is used it should be loaded after MARKSPAWN.LUA and 
-- MARKSPAWN_TEMPLATES.LUA and the call to MARKSPAWN:Start() at the end of the templates
-- file should be commented out.
--
-- Load order in miz MUST be;
--     1. markspawn.lua
--     2. markspawn_templates.lua
--     3. [OPTIONAL] markspawn_data.lua
--
-- Use F10 map marks to spawn BVR opponents or ground threats anywhere on the map. 
-- Add mark to map then type the CMD syntax below in the map mark text field. 
-- The command will execute on mouse-clicking out of the text box.
--
-- COMMANDS
-- ========
-- 
-- - ASPAWN: = Spawn Air Group
-- - GSPAWN: = Spawn Ground Group
-- - NSPAWN: = Spawn Navy Group
-- - WXREPORT: = display message with weather conditions
-- - DELETE: = Delete one, or more, Group(s)
-- 
-- Airspawn syntax
-- ---------------
-- 
-- CMD ASPAWN: [type][, [option]: [value]][...]
-- 
-- 
-- Airspawn Types
-- --------------
-- 
-- - F4
-- - SU25
-- - SU27
-- - MIG29
-- - SU25
-- - MIG23
-- - F16
-- - F18
-- - F16SEAD
-- - F18SEAD
-- - OPTIONS	(will list the types available for this command)
-- 
-- 
-- Airspawn Options
-- ----------------
-- 
-- - HDG: [degrees] - default 000
-- - ALT: [flight level] - default 280 (28,000ft)
-- - DIST:[nm] - default 0 (spawn on mark point)
-- - NUM: [1-4] - default 1
-- - SPD: [knots] - default 425
-- - SKILL: [AVERAGE, GOOD, HIGH, EXCELLENT, RANDOM] - default AVERAGE
-- - TASK: [CAP] - default NOTHING
-- - SIDE: [RED, BLUE, NEUTRAL] - default RED (Russia)
-- 
-- 
-- Example
-- -------
-- 
-- CMD ASPAWN: MIG29, NUM: 2, HDG: 180, SKILL: GOOD
-- 
-- Will spawn 2x MiG29 at the default speed of 425 knots, with heading 180 and skill level GOOD.
-- 
-- 
-- Groundspawn Syntax
-- ------------------
-- 
-- CMD GSPAWN: [groundspawn type][, [option]: [value]][...]
-- 
-- 
-- Groundspawn Types
-- -----------------
-- 
-- - SA2		(battery)
-- - SA3		{battery)
-- - SA6		(battery)
-- - SA8		(single)
-- - SA10		(battery)
-- - SA11		(battery)
-- - SA15		(single)
-- - SA19		(single)
-- - ZSU23		(ZSU23 Shilka)
-- - ZU23EMP	(ZU23 fixed emplacement)
-- - ZU23URAL	(ZU23 mounted on Ural)
-- - CONLIGHT      (Supply convoy)
-- - CONHEAVY	(Armoured convoy) 
-- - OPTIONS	(will list the types available for this command)
-- 
-- 
-- Groundspawn Options
-- ----------------
-- 
-- - ALERT: [GREEN, AUTO, RED] - default RED 
-- - SKILL: [AVERAGE, GOOD, HIGH, EXCELLENT, RANDOM] - default AVERAGE
-- 
-- 
-- Example
-- -------
-- 
-- CMD GSPAWN: SA6, ALERT: GREEN, SKILL: HIGH
-- 
-- Will spawn an SA6 Battery on the location of the map mark, in alert state GREEN and with skill level HIGH.
-- 
-- 
-- Weather Report Syntax
-- ---------------------
-- 
-- CMD WXREPORT: [QFE, METRIC]
-- 
-- 
-- Weather Report Options
-- ----------------------
-- 
-- - QFE   (Pressure displayed as QFE) - default QNH
-- - METRIC  (Produces the report in Metric format (mp/s, hPa) - default Imperial
-- 
-- 
-- Example
-- -------
-- 
-- CMD WXREPORT:
-- 
-- Will report Wind in knots, QNH in inHg, temperature in centigrade at the mark's position
-- 
-- CMD WXREPORT: QFE
-- 
-- Will report wind in knots, QFE in inHg, temperature in centigrade at the mark's position
-- 
-- 
-- Delete Spawn Syntax
-- -------------------
-- 
-- CMD DELETE: [object] [object option[s]]
-- 
-- 
-- Delete Spawn Objects
-- --------------------
-- 
-- - GROUP [requires name of Command Spawned Group in F10 map]
-- - KIND [requires option CAT and/or TYPE and/or ROLE] [SIDE]
-- - AREA  [Zone radius defined by RAD option] [CAT, TYPE, ROLE, SIDE]
-- - NEAREST [CAT, TYPE, ROLE, SIDE]
-- - ALL
-- 
-- 
-- Delete Spawn Options
-- --------------------
-- 
-- - CAT: [AIR, GROUND] - default ALL
-- - TYPE: [the spawned object Type] - default ALL
-- - ROLE: [CAS, SEAD, SAM, AAA, CVY] - default ALL
-- - SIDE: [RED, BLUE, NEUTRAL, ALL] - default RED
-- - RAD: [radius from mark in NM] - default 5NM
-- 
-- 
-- Example
-- -------
-- 
-- CMD DELETE: GROUP MIG29#001 
-- 
-- - Will remove the spawned group named MIG29#001
-- 
-- CMD DELETE: KIND TYPE: SA15
-- 
-- - will remove all SA15 groups
-- 
-- CMD DELETE: KIND ROLE: SAM
-- 
-- - will remove all groups with the SAM role
-- 
-- CMD DELETE: AREA TYPE: SA8
-- 
-- - will remove all SA8 groups within 5NM of mark
-- 
-- CMD DELETE: AREA RAD: 1 ROLE: SAM SIDE: ALL
-- 
-- - will remove all groups within 5NM of the mark, with the SAM role, on Red, Blue and Neutral sides 
-- 
-- 
-- Cut-n-Paste Command Examples
-- ----------------------------
-- 
-- CMD GSPAWN: SA8, ALERT: RED, SKILL: HIGH
-- 
-- CMD GSPAWN: SA15, ALERT: RED, SKILL: HIGH
-- 
-- CMD ASPAWN: MIG29, NUM: 2, HDG: 90, SKILL: GOOD, ALT: 280, TASK: CAP, SIDE: RED
--
-- CMD DELETE: GROUP MIG29A#001
--
-- TASK TYPES
-- ----------
-- CAP, REFUELING, CAS, SEAD, TASMO, AWACS, AFAC
--


MARKSPAWN = {}
-- inherit methods,  properties etc from BASE for event handler, trace etc
MARKSPAWN = BASE:Inherit( MARKSPAWN, BASE:New() )

MARKSPAWN.traceTitle = "[JTF-1] "
MARKSPAWN.version = "1.0"
MARKSPAWN.ClassName = "MARKSPAWN"

--MARKSPAWN.MLTgtArray = {}
MARKSPAWN.radioPresets = {}
MARKSPAWN.MLSpawnedGroups = {}
MARKSPAWN.templates = {}

MARKSPAWN.default = {
	-- DEFAULT VALUES
	DEFAULT_BLUE_COUNTRY = 2, -- USA
	DEFAULT_RED_COUNTRY = 0, -- RUSSIA
	DEFAULT_NEUTRAL_COUNTRY = 7, -- USAF AGRRESSORS
	MLDefaultAirAlt = 200, -- altitude Flight Level
	MLDefaultHdg = 000,
	MLDefaultSkill = "AVERAGE",
	MLDefaultDistance = 0,
	MLDefaultGroundDistance = 0,
	MLDefaultROE = "FREE",
	MLDefaultROT = "EVADE",
	MLDefaultFreq = 251,
	MLDefaultNum = 1,
	MLDefaultAirSpeed = 425,
	MLDefaultGroundSpeed = 21,
	MLDefaultAlert = "RED",
	MLDefaultGroundTask = "NOTHING",
}

-- SPAWNABLE GROUP TYPES
MARKSPAWN.spawnTypes = { -- types available for spawning
	------------------------ BVR ------------------------
    { template = "BVR_MIG23",  	msType = "MIG23",   	category = "air",     role = "CAP"},
    { template = "BVR_SU25",   	msType = "SU25",    	category = "air",     role = "CAP"},
    { template = "BVR_MIG29A", 	msType = "MIG29",   	category = "air",     role = "CAP"},
    { template = "BVR_SU27",   	msType = "SU27",    	category = "air",     role = "CAP"},
    { template = "BVR_F4",     	msType = "F4",      	category = "air",     role = "CAP"},
    { template = "BVR_F16",    	msType = "F16",     	category = "air",     role = "CAP"},
    { template = "BVR_F18",    	msType = "F18",     	category = "air",     role = "CAP"},
    ------------------------ CAS ------------------------
    { template = "CAS_MQ9",    	msType = "MQ9",     	category = "air",     role = "CAS"},
    { template = "CAS_WINGLOON",msType = "WINGLOON",    category = "air",     role = "CAS"},
    ------------------------ SEAD ------------------------
	{ template = "SEAD_F16",    msType = "F16SEAD",	category = "air",     role = "SEAD"},
	{ template = "SEAD_F18",    msType = "F18SEAD",	category = "air",     role = "SEAD"},
	------------------------ SAM ------------------------
    { template = "SA6",    		msType = "SA6",	  		category = "ground",  role = "SAM"},
    { template = "SA8",    		msType = "SA8", 		category = "ground",  role = "SAM"},
    { template = "SA10",   		msType = "SA10", 		category = "ground",  role = "SAM"},
    { template = "SA11",   		msType = "SA11", 		category = "ground",  role = "SAM"},
    { template = "SA15",   		msType = "SA15", 		category = "ground",  role = "SAM"},
    { template = "SA19",   		msType = "SA19", 		category = "ground",  role = "SAM"},
	------------------------ AAA ------------------------
    { template = "ZSU23_Shilka",msType = "ZSU23",		category = "ground",  role = "AAA"},
    { template = "ZU23_Emp",	msType = "ZU23EMP",		category = "ground",  role = "AAA"},
    { template = "ZU23_Ural",	msType = "ZU23URAL",	category = "ground",  role = "AAA"},
	------------------------ CONVOY ------------------------
    { template = "CON_light",	msType = "CONLIGHT",	category = "ground",  role = "CON"},
    { template = "CON_heavy",	msType = "CONHEAVY",	category = "ground",  role = "CON"},
	------------------------ ARTILLERY ------------------------
	------------------------ INFANTRY ------------------------
	------------------------ SHIP ------------------------
}

-----------------
-- START MARKSPAWN
-----------------

function MARKSPAWN:Start()
	_msg = string.format("%sVERSION %s", self.traceTitle, self.version)
	self:T(_msg)

	-----------------
	-- ADD SPAWNS
	-----------------

	-- Add SPAWN objects to each template
	-- Spawn Late Activated groups using built-in templates if the template group is not
	-- being sourrced from in the mission itself

	for index, spawnType in ipairs(self.spawnTypes) do
		local templateName = spawnType.template
		local spawnAlias = "MS_" .. templateName

		-- if a late activated group is present in the mission, use that as a spawn template
		if GROUP:FindByName(templateName) then
			_msg = string.format("%sSpawn Template %s found in mission.",
				self.traceTitle,
				templateName
			)
			self:T(_msg)

			spawnType.spawn = SPAWN:NewWithAlias(templateName, spawnAlias)

		-- if a late activated group is NOT found in the mission, look for a built-in template
		else 

			local spawnTemplate
	
			-- look in MARKSPAWN templates
			if self.templates[templateName] then
				_msg = string.format("%sUse spawn template from MARKSPAWN.templates for %s.",
					self.traceTitle,
					templateName
				)
				self:T(_msg)

				spawnTemplate = self.templates[templateName]
	
			-- look in MISSIONSPAWN templates
			elseif MISSIONSPAWN and MISSIONSPAWN.templates[templateName] then
				_msg = string.format("%sUse spawn template from MISSIONSPAWN.templates for %s.",
					self.traceTitle,
					templateName
				)
				self:T(_msg)

				spawnTemplate = MISSIONSPAWN.templates[templateName]

			end

			-- If we have a template, generate the SPAWN object
			if spawnTemplate ~= nil then
				_msg = string.format("%sSpawn Group and use as SPAWN for type %s.",
					self.traceTitle,
					templateName
				)
				self:T(_msg)

				local spawnCategory =  spawnTemplate.category
				local spawnCoordinate = COORDINATE:New(0,0,0)
				local spawnCountryid = self.default.DEFAULT_RED_COUNTRY
				local spawnCoalition = coalition.side.RED

				-- add a late activated group to be used as the spawn template
				local spawn = SPAWN:NewFromTemplate(spawnTemplate, templateName, spawnAlias, true)
					:InitCountry(spawnCountryid)
					:InitCoalition(spawnCoalition)
					:InitCategory(spawnCategory)
					--:InitPositionCoordinate(spawnCoordinate)
					:InitLateActivated()
				
				spawn:OnSpawnGroup(
					function(spawngroup)
						local groupName = spawngroup:GetName()
						spawnType.spawn = SPAWN:New(groupName)
					end
					,spawnType
				)
				spawn:Spawn()
			
			-- Template cannot be found in miz, MARKSPAWN.templates or MISSIONSPAWN.templates
			else
				_msg = string.format("%sError! Could not find template %s.",
					self.traceTitle,
					templateName
				)
				self:E(_msg)
			end
		end
	end

	-----------------
	-- MARK POINT EVENT HANDLER
	-----------------
	self:HandleEvent(EVENTS.MarkChange)
	
	-- IF MARK IS A "CMD", SEND MARK DATA TO PARSER
	function self:OnEventMarkChange( EventData )
		_msg = string.format("%sMARK CHANGE EVENT", self.traceTitle)
		self:T(_msg)
		local text = EventData.text
		local x, _ = string.find(text, "CMD")
		if(x ~= nil) then
			self:parseMark(EventData)
			self:MLRemoveMark(EventData.idx)
		else
			return
		end
	end
	
end

-----------------
-- CMD PARSER
-----------------

function MARKSPAWN:parseMark(mark)

	_msg = self.traceTitle
	self:T({_msg, text = mark.text, pos = mark.pos})

	local cmdOption = false
	local text = mark.text
	local pos = mark.pos

	-- Command Search patterns
	local cmdASPAWN = "ASPAWN:%s*(%w+)"
	local cmdGSPAWN = "GSPAWN:%s*(%w+)"
	local cmdNSPAWN = "NSPAWN:%s*(%w+)"
	local cmdRADIO = "RADIO:%s*(%w+)"
	local cmdWX = "WXREPORT:%s*(.*)"
	local cmdDELETE = "DELETE:%s*(%w+)"
	-- Option search patterns
	local optionOpt = "OPTIONS"
	local optionHdg = "HDG:%s*(%d+)"
	local optionAlt = "ALT:%s*(%d+)"
	local optionTask = "TASK:%s*(%w+)"
	local optionSkill = "SKILL:%s*(%w+)"
	local optionDist = "DIST:%s*(%d+)"
	local optionROE = "ROE:%s*(%w+)"
	local optionWPS = "WPS:%s*{(.*)}"
	local optionFreq = "FREQ:%s*(%d[%d.]+)"
	local optionBand = "BAND:%s*(%w+)"
	local optionPwr = "PWR:%s*(%d+)"
	local optionNum = "NUM:%s*(%d+)"
	local optionSpd = "SPD:%s*(%d+)"
	local optionSide = "SIDE:%s*(%w+)"
	local optionForm = "FORM:%s*(%w+)"
	local optionBase = "BASE:%s*(%w+)"
	local optionName = "NAME:%s*(%w+)"
	local optionROT = "ROT:%s*(%w+)"
	local optionAlert = "ALERT:%s*(%w+)"
	local optionTGT = "TGT:%s*(%w+)"
	-- Delete Class patterns
	local optionDelGrp = "GROUP%s*(.+)"
	-- Delete Option patterns
	local optionDelCat = "CAT:%s*(%w+)"
	local optionDelSide = "SIDE:%s*(%w+)"
	local optionDelRad = "RAD:%s*(%d+)"
	local optionDelType = "TYPE:%s*(%w+)"
	local optionDelRole = "ROLE:%s*(%w+)"

	-----------------
	-- CMD AIR GROUP
	-----------------

	local i, _, spawnValue = string.find(text, cmdASPAWN)
	if(i ~= nil) then
		cmdOption = true
		if(spawnValue:upper() == optionOpt) then
			self:MLListSpawnOptions("air", mark)
		else
			local _, _, heading = string.find(text, optionHdg)
			local _, _, altitude = string.find(text, optionAlt)
			local _, _, task = string.find(text,optionTask)
			local _, _, skill = string.find(text,optionSkill)
			local _, _, distance = string.find(text,optionDist)
			local _, _, ROE = string.find(text, optionROE)
			local _, _, WPS = string.find(text, optionWPS)
			local _, _, freq = string.find(text, optionFreq)
			local _, _, num = string.find(text, optionNum)
			local _, _, speed = string.find(text, optionSpd)
			local _, _, side = string.find(text, optionSide)
			local _, _, formation = string.find(text, optionForm)
			local _, _, base = string.find(text, optionBase)
			local _, _, groupName = string.find(text, optionName)
			local _, _, ROT = string.find(text, optionROT)

			local spawnTable = {
				msType = spawnValue,
				heading = heading,
				altitude = altitude,
				task = task, 
				skill = skill, 
				distance = distance, 
				roe = ROE, 
				WP = WPS, 
				pos = pos, 
				freq = freq, 
				num = num, 
				speed = speed,
				side = side, 
				formation = formation,
				base = base,
				groupName = groupName,
				rot = ROT,
			}

			self:MLAirSpawn(spawnTable)
		end
	end
	
	-----------------
	-- CMD GROUND GROUP
	-----------------

	local j, _, spawnValue = string.find(text, cmdGSPAWN)
	if(j ~= nil) then
		cmdOption = true
		if(spawnValue:upper() == optionOpt) then
			self:MLListSpawnOptions("ground", mark)
		else
			local _, _, heading = string.find(text, optionHdg)
			local _, _, skill = string.find(text,optionSkill)
			local _, _, distance = string.find(text,optionDist)
			local _, _, ROE = string.find(text, optionROE)
			local _, _, WP = string.find(text, optionWPS)
			local _, _, alert = string.find(text, optionAlert)
			local _, _, speed = string.find(text, optionSpd)
			local _, _, side = string.find(text, optionSide)
			local _, _, formation = string.find(text, optionForm)  
			local _, _, groupName = string.find(text, optionName)
			local _, _, tgtName = string.find(text, optionTGT)

			local spawnTable = {
				msType = spawnValue,
				heading = heading,
				skill = skill, 
				distance = distance, 
				roe = ROE, 
				WP = WP, 
				pos = pos,
				speed = speed,
				coalition = side,
				formation = formation,
				alert = alert,
				side = side,
				groupName = groupName,
				tgt = tgtName
			}

			self:MLGroundSpawn(spawnTable)
		end
	end
		
	-----------------
	-- CMD RADIO
	-----------------

	local k, _, spawnValue = string.find(text, cmdRADIO)
	if(k ~= nil) then
		cmdOption = true
		self:T("[JTF-1] SpawnValue: " .. spawnValue)
		self:T("[JTF-1] Other Text: " .. k)
		local _, _, freq = string.find(text, optionFreq)
		local _, _, band = string.find(text,optionBand)
		local _, _, power = string.find(text,optionPwr)
		
		local spawnTable = {
			song = spawnValue,
			freq = freq,
			band = band, 
			power = power, 
		}

		_msg = string.format("%sRADIO: ", self.traceTitle)
		self:T({"[JTF-1] RADIO: ", spawnTable})
		--self:MLRadioSpawn(spawnTable)
	end
	
	-----------------
	-- CMD NAVY GROUP
	-----------------

	--spawn a naval group
	local l, _, spawnValue = string.find(text, cmdNSPAWN)
	if(l ~= nil) then
		cmdOption = true
		if(spawnValue:upper() == optionOpt) then
		self:MLListSpawnOptions("naval", mark)
		else
		local _, _, heading = string.find(text, optionHdg)
		local _, _, skill = string.find(text,optionSkill)
		local _, _, distance = string.find(text,optionDist)
		local _, _, ROE = string.find(text, optionROE)
		local _, _, WP = string.find(text, optionWPS)
		local _, _, alert = string.find(text, optionAlert)
		local _, _, speed = string.find(text, optionSpd)
		local _, _, side = string.find(text, optionSide)
		local _, _, formation = string.find(text, optionForm)  
		local _, _, groupName = string.find(text, optionName)
		local _, _, tgtName = string.find(text, optionTGT)
		
		local spawnTable = {
			msType = spawnValue,
			heading = heading,
			skill = skill, 
			distance = distance, 
			roe = ROE, 
			WP = WP, 
			pos = pos,
			speed = speed,
			coalition = side,
			formation = formation,
			alert = alert,
			side = side,
			groupName = groupName,
			tgt = tgtName
		}

		self:T({"[JTF-1] NSPAWN: ", spawnTable})
		self:MLNavalSpawn(spawnTable)
		end
	end
	
	-----------------
	-- CMD DELETE GROUP
	-----------------

	--Delete one or more groups
	local l, _, deleteCMD = string.find(text, cmdDELETE)
	if(l ~= nil) then
		cmdOption = true
		local _, _, category = string.find(text, optionDelCat) -- "CAT (%w+)"
		local _, _, side = string.find(text,optionDelSide) -- "SIDE (%w+)"
		local _, _, radius = string.find(text,optionDelRad) -- "RAD (%d+)"
		local _, _, msType = string.find(text,optionDelType) -- "TYPE (%w+)"
		-- local _, _, template = string.find(text,optionDelType) -- "TYPE (%w+)"
		local _, _, groupName = string.find(text, optionDelGrp) -- "GROUP%s*(.+)"
		local _, _, role = string.find(text, optionDelRole) -- "ROLE (.+)"
		
		local spawnTable = {
			cmd = deleteCMD,
			category = category,
			side = side,
			radius = radius,
			msType = msType,
			groupName = groupName,
			role = role
		}

		self:MLDeleteGroup(spawnTable, mark)
	end

	-----------------
	-- CMD WX REPORT
	-----------------

	local m, _, repoString = string.find(text, cmdWX)
	if(m ~= nil) then
		cmdOption = true
		self:MLWxReport(repoString, mark)
	end

	if not cmdOption then
		self:E("[JTF-1] ERROR! CMD not found.")
	end

end
  
-----------------
-- SPAWN AIR GROUP(S)
-----------------

function MARKSPAWN:MLAirSpawn(SpawnTable)

	local msType = SpawnTable.msType
	local heading = tonumber(SpawnTable.heading) or self.default.MLDefaultHdg
	local altitude = tonumber(SpawnTable.altitude) or self.default.MLDefaultAirAlt
	altitude = UTILS.FeetToMeters(altitude * 100)
	local task = SpawnTable.task or "C"
	local skill = self:MLSkillCheck(SpawnTable.skill) or self.default.MLDefaultSkill
	local distance = tonumber(SpawnTable.distance) or self.default.MLDefaultDistance
	local ROE = SpawnTable.roe or self.default.MLDefaultROE
	local ROT = SpawnTable.rot or self.default.MLDefaultROT
	local freq = tonumber(SpawnTable.freq) or self.default.MLDefaultFreq
	local num = tonumber(SpawnTable.num) or self.default.MLDefaultNum
	local speed = tonumber(SpawnTable.speed) or self.default.MLDefaultAirSpeed
	local form = SpawnTable.formation or nil
	local base = SpawnTable.base or nil
	local spawnCoord = COORDINATE:NewFromVec3(SpawnTable.pos):SetAltitude(altitude,true)
	local spawner = self:comparator(msType)
	local category = self:GetProperty(msType, "category")
	local role = self:GetProperty(msType, "role")

	if(spawner == nil) then
		return
	end

	local template = GROUP:FindByName( spawner.SpawnTemplatePrefix )
	local waypointNameString = SpawnTable.WP or nil
	
	-- switch country/coalition if desired
	local coal, country
	if(SpawnTable.side) then
		coal, country = self:MLSideComparator(SpawnTable.side, template)
	else
		coal = template:GetCoalition()
		country = template:GetCountry()
	end
	local group
	
	-- spawn the group
	if(base) then
		local airbase
		if(base == "NEAREST") then 
			self:T("[JTF-1] learn 2 spell, scrub")
			local theater = env.mission.theatre
			local distance = 0
		else
			airbase = AIRBASE:FindByName(base)
			if(airbase == nil) then 
				airbase = AIRBASE:GetAllAirbases()[1]
			end
		end
		group = spawner:InitGrouping(num):InitSkill(skill):InitCoalition(coal):InitCountry(country):InitHeading(heading):SpawnAtAirbase(airbase,SPAWN.Takeoff.Cold,nil)
	else
		self:T("[JTF-1] ASPAWN: " .. coal .. " " .. country)
		group = spawner:InitGrouping(num):InitSkill(skill):InitCoalition(coal):InitCountry(country):InitHeading(heading):SpawnFromVec3(spawnCoord:GetVec3())
		_groupName = group.GroupName
		self:T("[JTF-1] ASPAWN: " .. _groupName)
	end
	
	self.MLSpawnedGroups[#self.MLSpawnedGroups + 1] = {group = group, side = coal, msType = msType, category = category, role = role}
	-- set ROE
	self:MLSetROE(ROE,group)
	-- set ROT
	self:MLSetROT(ROT,group)
	--if no distance, then we orbit
	if(waypointNameString) then
		local waypointCoords = self:MLFindWaypoints(waypointNameString)
		if(#waypointCoords > 0) then
			self:T('[JTF-1] MORE WAYPOINTS')
			local route = {}
			route[#route + 1] = spawnCoord:WaypointAir(POINT_VEC3.RoutePointAltType.BARO,POINT_VEC3.RoutePointType.TurningPoint,POINT_VEC3.RoutePointAction.TurningPoint,UTILS.KnotsToKmph(speed),true)
			for idx, waypoint in pairs(waypointCoords) do
				route[#route + 1] = waypoint:SetAltitude(altitude,true):WaypointAir(POINT_VEC3.RoutePointAltType.BARO,POINT_VEC3.RoutePointType.TurningPoint,POINT_VEC3.RoutePointAction.TurningPoint,UTILS.KnotsToKmph(speed),true)
			end
			group:Route(route)
		else
			local orbitEndPoint = spawnCoord:Translate(UTILS.NMToMeters(15),heading)
			local orbit = { 
				id = 'Orbit', 
				params = { 
					pattern = AI.Task.OrbitPattern.RACE_TRACK,
					point = spawnCoord:GetVec2(),
					point2 = orbitEndPoint:GetVec2(),
					speed = UTILS.KnotsToMps(speed),
					altitude = altitude
				} 
			}

			group:SetTask( orbit, 2 )
		end
	elseif(distance == 0) then
		local orbitEndPoint = spawnCoord:Translate(UTILS.NMToMeters(15),heading)
		local orbit = { 
			id = 'Orbit', 
			params = { 
				pattern = AI.Task.OrbitPattern.RACE_TRACK,
				point = spawnCoord:GetVec2(),
				point2 = orbitEndPoint:GetVec2(),
				speed = UTILS.KnotsToMps(speed),
				altitude = altitude
			} 
		}

		group:SetTask( orbit, 2 )
	--if distance, we create a waypoint way the fuck out in the boonies
	elseif(distance > 0) then
		local WP1 = spawnCoord:Translate(UTILS.NMToMeters(distance),heading)
		:WaypointAir(POINT_VEC3.RoutePointAltType.BARO,POINT_VEC3.RoutePointType.TurningPoint,POINT_VEC3.RoutePointAction.TurningPoint,UTILS.KnotsToKmph(speed),true)
		local WP2 = spawnCoord:Translate(UTILS.NMToMeters(distance),heading * 2)
		:WaypointAir(POINT_VEC3.RoutePointAltType.BARO,POINT_VEC3.RoutePointType.TurningPoint,POINT_VEC3.RoutePointAction.TurningPoint,UTILS.KnotsToKmph(speed),true)
		
		local route = {WP1, WP2}
		group:Route(route)
	else
		self:T("[JTF-1] We Fucked Up")
	end
	local taskTable = {}
	if(task ~= "NOTHING") then
		taskTable = self:MLSetTask(task,group)
		group:PushTask ( group:TaskCombo( self:MLSetTask(task,group) ) , 3 )
	end
	--set group frequency
	if(freq) then
		if(freq <= 20) then
			freq = self:MLRadioPreset(freq)
		end
			self:T("[JTF-1] freq:".. freq)
			freq = freq * 1000000
			local SetFrequency = { 
			id = 'SetFrequency', 
			params = { 
				frequency = freq, 
				modulation = 0, 
			}
		}
		group:SetCommand(SetFrequency)
	end

 end

-----------------
-- SPAWN GROUND GROUP(S)
-----------------

function MARKSPAWN:MLGroundSpawn(SpawnTable)
	local msType = SpawnTable.msType
	local heading = tonumber(SpawnTable.heading) or self.default.MLDefaultHdg
	local task = SpawnTable.task or self.default.MLDefaultGroundTask
	local skill = self:MLSkillCheck(SpawnTable.skill) or self.default.MLDefaultSkill
	local distance = tonumber(SpawnTable.distance) or self.default.MLDefaultGroundDistance
	local ROE = SpawnTable.roe or self.default.MLDefaultROE
	local freq = tonumber(SpawnTable.freq) or self.default.MLDefaultFreq
	local speed = tonumber(SpawnTable.speed) or self.default.MLDefaultGroundSpeed 
	local form = SpawnTable.formation or nil
	local alert = SpawnTable.alert or self.default.MLDefaultAlert
	local spawnCoord = COORDINATE:NewFromVec3(SpawnTable.pos)
	local spawner = self:comparator(msType)
	local category = self:GetProperty(msType, "category")
	local role = self:GetProperty(msType, "role")

	if(spawner == nil) then
		self:E("[JTF-1] ERROR! spawner not found in spawnOptions.")
		return
	end

	local template = GROUP:FindByName( spawner.SpawnTemplatePrefix )
	local waypointNameString = SpawnTable.WP or nil
	
	--local spawnCoord = COORDINATE:NewFromVec3(SpawnTable.pos)
	local coal, country

	if(SpawnTable.side) then
		coal, country = self:MLSideComparator(SpawnTable.side, template)
	else
		coal = template:GetCoalition()
		country = template:GetCountry()
	end

	
	local group = spawner:InitSkill(skill):InitCoalition(coal):InitCountry(country):SpawnFromVec3(spawnCoord:GetVec3())

	local _group = group.GroupName
	self:T("[JTF-1] GSPAWN: " .. _group)
	
	self.MLSpawnedGroups[#self.MLSpawnedGroups + 1] = {group = group, side = coal, msType = msType, category = category, role = role}
	
	self:MLSetROE(ROE,group)
	self:MLSetAlarm(alert,group)
	-- add waypoints
	--if no distance, then we orbit
	if(waypointNameString) then
		local waypointCoords = self:MLFindWaypoints(waypointNameString)
		self:T('MORE WAYPOINTS')
		local route = {}
		for idx, waypoint in pairs(waypointCoords) do
		route[#route + 1] = waypoint:WaypointGround(UTILS.KnotsToKmph(speed),form)
		end
		group:Route(route)
	elseif(distance > 0) then
		local WP = spawnCoord:Translate(UTILS.NMToMeters(distance),heading)
		group:RouteGroundTo(WP, speed, form, 1)
	end
end
  
-----------------
-- SPAWN NAVY GROUP(S)
-----------------

function MARKSPAWN:MLNavalSpawn(SpawnTable)
	local msType = SpawnTable.msType
	local heading = tonumber(SpawnTable.heading) or 000
	local task = SpawnTable.task or "NOTHING"
	local skill = self:MLSkillCheck(SpawnTable.skill) or "AVERAGE"
	local distance = tonumber(SpawnTable.distance) or 0
	local ROE = SpawnTable.roe or "FREE"
	local freq = tonumber(SpawnTable.freq) or 251
	local speed = tonumber(SpawnTable.speed) or 30
	local form = SpawnTable.formation or nil
	local alert = SpawnTable.alert or "AUTO"
	local spawnCoord = COORDINATE:NewFromVec3(SpawnTable.pos)
	local spawner = self:comparator(msType)
	local category = self:GetProperty(msType, "category")
	local role = self:GetProperty(msType, "role")
	local tgt = nil
	if(spawner == nil) then
		return
	end
	local template = GROUP:FindByName( spawner.SpawnTemplatePrefix )
	local waypointNameString = SpawnTable.WP or nil
	
	local spawnCoord = COORDINATE:NewFromVec3(SpawnTable.pos)
	local coal, country
	if(SpawnTable.side) then
		coal, country = self:MLSideComparator(SpawnTable.side, template)
	else
		coal = template:GetCoalition()
		country = template:GetCountry()
	end

	local group = spawner:InitSkill(skill):InitCoalition(coal):InitCountry(country):InitHeading(heading):SpawnFromVec3(spawnCoord:GetVec3())
	self.MLSpawnedGroups[#self.MLSpawnedGroups + 1] = {group = group, side = coal, msType = msType, category = category, role = role}

	self:MLSetROE(ROE,group)
	--MLSetAlarm(alert,group)
	-- LETS DO WAYPOINTS YE JAMMY FOOKERS!
	--if no distance, then we orbit
	if(waypointNameString) then
		local waypointCoords = self:MLFindWaypoints(waypointNameString)
		self:T('MORE WAYPOINTS')
		local route = {}
		for idx, waypoint in pairs(waypointCoords) do
		route[#route + 1] = waypoint:WaypointGround(UTILS.KnotsToKmph(speed),nil)
		end
		group:Route(route)
	elseif(distance >= 0) then
		local WP = spawnCoord:Translate(UTILS.NMToMeters(distance),heading)
		group:RouteGroundTo(WP, speed, nil, 1)
	end
end
  
-----------------
-- DELETE SPAWN GROUP
-----------------

function MARKSPAWN:MLDeleteGroup(spawnTable,mark)

	local deleteCMD = spawnTable.cmd:upper()
	
	self:T(self.traceTitle .. " DELETE: " .. deleteCMD)

	local tblProperties = {}

	local coal = spawnTable.side or "RED"
	coal = coal:upper()
	local category = spawnTable.category or "ALL"
	category = category:upper()
	local msType = spawnTable.msType or "ALL"
	msType = msType:upper()
	local role = spawnTable.role or "ALL"
	role = role:upper()


	local radius =  spawnTable.radius or 5
	radius = UTILS.NMToMeters(radius)

	local template = spawnTable.template or nil

	if template then
		template = template:upper()
	end
	
	if (coal == "BLUE") then 
		coal = 2 
	elseif (coal == "NEUTRAL") then
		coal = 0 
	elseif (coal == "ALL") or (coal:upper() == "ANY") then
		coal = 99
	else -- default to RED
		coal = 1
	end
	
	_msg = string.format("%sDELETE - OPTIONS CMD: %s, SIDE: %s, TYPE: %s, CATEGORY: %s,  ROLE: %s, RADIUS: %d", 
		self.traceTitle,
		deleteCMD,
		tostring(coal or 99),
		(msType or "nil"),
		(category or "nil"),
		(role or "nil"),
		(radius or 0)
	)
	self:T(_msg)

	-- Delete by GROUP
	if(deleteCMD == "GROUP") then
		_msg = string.format("%sDELETE: Option GROUP.", self.traceTitle)
		self:T(_msg)

		local groupName = spawnTable.groupName 
		_msg = string.format("%sDELETE - groupName = %s", 
			self.traceTitle,
			(groupName or "nil")
		)
		self:T(_msg)

		local victim = GROUP:FindByName(groupName) or nil
		if victim then
			victim:Destroy(false)
		else
			self:T(self.traceTitle .. " DELETE -  GROUP not found!")
		end

	-- Delete by AREA
	elseif(deleteCMD == "AREA") then
		_msg = string.format("%sDELETE: Option RAD.", self.traceTitle)
		self:T(_msg)

		local deleteZone = ZONE_RADIUS:New("DeleteZone",COORDINATE:NewFromVec3(mark.pos):GetVec2(),radius)
		self:T({self.traceTitle .. " Marker Pos: ", mark.pos, " Zone Pos: ", deleteZone:GetVec2(), "Radius: ", deleteZone:GetRadius()})
		for idx, entry in pairs (self.MLSpawnedGroups) do
			if entry.group:IsAlive() then 

				local isCategory = (entry.category == category) or (category == "ALL")
				local isType = (entry.msType:upper() == msType) or (msType == "ALL")
				local isRole = (entry.role:upper() == role) or (role == "ALL")
				local isSide = (entry.side == coal) or (coal == 99)
				
				_msg = string.format("%sisCategory: %s, isType: %s, isRole: %s", 
					self.traceTitle,
					((isCategory and "True") or "False"),
					((isType and "True") or "False"),
					((isRole and "True") or "False"),
					((isSide and "True") or "False")
				)
				self:T(_msg)

				local groupPos = entry.group:GetVec2()
				local zoneVec2 = deleteZone:GetVec2()
				local isThere = ((groupPos.x - zoneVec2.x )^2 + ( groupPos.y - zoneVec2.y ) ^2 ) ^ 0.5 <= tonumber(deleteZone:GetRadius())

				self:T(self.traceTitle .. " ZONE: " .. ((groupPos.x - zoneVec2.x )^2 + ( groupPos.y - zoneVec2.y ) ^2 ) ^ 0.5)

				if(isThere) then
					self:T("self.traceTitle ..  Group in zone")
					if isType and (isCategory and isRole) then
						self:T(self.traceTitle .. " Type, Category and Role correct")
						self:T(self.traceTitle .. " Function Side: " .. coal .. "Group Side: " .. entry.side)
						if coal and ((entry.side == coal) or (coal == 99)) then
							self:T(self.traceTitle .. " Side correct")
							local victim = entry.group
							victim:Destroy(false)
							self.MLSpawnedGroups[idx] = nil
						end
					end
				else
					self:T(self.traceTitle .. " Group out of Zone")
				end
			else
				self:T(self.traceTitle .. " Group is not ALIVE")
				self.MLSpawnedGroups[idx] = nil
			end
		end
	
	-- Delete by NEAREST
	elseif(deleteCMD == "NEAREST") then
		_msg = string.format("%sDELETE: Option NEAREST.", self.traceTitle)
		self:T(_msg)

		local minDistance = -1
		local closest = 1
		local markPos = COORDINATE:NewFromVec3(mark.pos):GetVec2()

		if(self.MLSpawnedGroups[1].group:IsAlive()) then
			local groupPos = self.MLSpawnedGroups[1].group:GetVec2()
			minDistance = ((groupPos.x - markPos.x )^2 + ( groupPos.y - markPos.y ) ^2 ) ^ 0.5

			_msg = string.format("%sGroup idx 1 is alive. Min dist = ", 
				self.traceTitle
			)
			self:T({_msg, minDistance})
			
			-- find nearest group that meets the required criteria
			for idx, entry in pairs (self.MLSpawnedGroups) do
				if entry.group:IsAlive() then

					local isCategory = (entry.category == category) or (category == "ALL")
					local isType = (entry.msType:upper() == msType) or (msType == "ALL")
					local isRole = (entry.role:upper() == role) or (role == "ALL")
					local isSide = (entry.side == coal) or (coal == 99)

					_msg = string.format("%sisCategory: %s, isType: %s, isRole: %s", 
						self.traceTitle,
						((isCategory and "True") or "False"),
						((isType and "True") or "False"),
						((isRole and "True") or "False"),
						((isSide and "True") or "False")
					)
					self:T(_msg)
					
					if isType and (isCategory and isRole) then
						if(coal and ((entry.side == coal) or coal == 99)) then
							local groupPos = entry.group:GetVec2()
							local currentDistance = ((groupPos.x - markPos.x )^2 + ( groupPos.y - markPos.y ) ^2 ) ^ 0.5
							if(currentDistance < minDistance) then
								minDistance = currentDistance
								closest = idx
							end
						end
					end
				else
					self:T(self.traceTitle .. " Group is not ALIVE")
					self.MLSpawnedGroups[idx] = nil
				end
			end
			local closestEntry = self.MLSpawnedGroups[closest]

			local victim = closestEntry.group
			victim:Destroy(false)
			self.MLSpawnedGroups[closest] = nil

		end
	
	-- Delete by KIND
	elseif(deleteCMD == "KIND") then
		_msg = string.format("%sDELETE: Option TYPE.", self.traceTitle)
		self:T(_msg)

		if (category and msType) and role then
			_msg = string.format("%sDELETE: Filter Category, Type, Role.", self.traceTitle)
			self:T(_msg)
	
			for idx, entry in pairs (self.MLSpawnedGroups) do
				if entry.group:IsAlive() then
					_msg = string.format("%sentry.category: %s, cmd: %s, entry.msType: %s, cmd: %s, entry.role: %s, cmd: %s, entry.side: %s, cmd: %s", 
						self.traceTitle,
						(entry.category or "nil"),
						category,
						(entry.msType or "nil"),
						msType,
						(entry.role or "nil"),
						role,
						(entry.side or "nil"),
						tostring(coal)
					)
					self:T(_msg)

					local isCategory = (entry.category:upper() == category) or (category == "ALL")
					local isType = (entry.msType:upper() == msType) or (msType == "ALL")
					local isRole = (entry.role:upper() == role) or (role == "ALL")
					local isSide = (entry.side == coal) or (coal == 99)
					
					--_msg = string.format("%sCheck match", self.traceTitle)
					_msg = string.format("%sisCategory: %s, isType: %s, isRole: %s, isSide: %s", 
						self.traceTitle,
						((isCategory and "True") or "False"),
						((isType and "True") or "False"),
						((isRole and "True") or "False"),
						((isSide and "True") or "False")
					)
					self:T(_msg)
					-- self:T({_msg, isCategory = isCategory, isType = isType, isRole = isRole, isSide = isSide})
	
					if isType and (isCategory and isRole) then
						if(coal and ((entry.side == coal) or (coal == 99))) then
							self:T(self.traceTitle .. " Side correct")
							local victim = entry.group
							victim:Destroy(false)
							self.MLSpawnedGroups[idx] = nil
						end
					else
						self:T(self.traceTitle .. "category or type or side do not match entry")
					end
				else
					self:T("[JTF-1] Group is not alive.")
					self.MLSpawnedGroups[idx] = nil
				end
			end
		else
			self:E("[JTF-1] CATEGORY, TYPE or ROLE option not defined")
		end

	-- Delete ALL
	elseif(deleteCMD == "ALL") then
		_msg = string.format("%sDELETE: Option ALL.", self.traceTitle)
		self:T(_msg)

		for idx, entry in pairs (self.MLSpawnedGroups) do
			if entry.group:IsAlive() then

				_msg = string.format("%sentry.class: %s, entry.msType: %s, entry.role: %s, entry.side: %s", 
				self.traceTitle,
					(entry.category or "nil"),
					(entry.msType or "nil"),
					(entry.role or "nil"),
					(entry.side or "nil")
				)
				self:T(_msg)

				local isCategory = (entry.category == category) or (category == "ALL")
				local isType = (entry.msType:upper() == msType) or (msType == "ALL")
				local isRole = (entry.role:upper() == role) or (role == "ALL")
				local isSide = (entry.side == coal) or (coal == 99)
				
				_msg = string.format("%sisCategory: %s, isType: %s, isRole: %s, isSide: %s", 
					self.traceTitle,
					((isCategory and "True") or "False"),
					((isType and "True") or "False"),
					((isRole and "True") or "False"),
					((isSide and "True") or "False")
				)
				self:T(_msg)

				if isType and (isCategory and isRole) then
					if(coal and ((entry.side == coal) or coal == 99)) then
						self:T(self.traceTitle .. " Side correct")
						local victim = entry.group
						victim:Destroy(false)
						self.MLSpawnedGroups[idx] = nil
					end
				end
			else
				self.MLSpawnedGroups[idx] = nil
			end
		end
	else
		_msg = string.format("%sDELETE: Nothing done!", self.traceTitle)
		self:E(_msg)
	end
end

-----------------
-- WX REPORT
-----------------

function MARKSPAWN:MLWxReport(repoString, mark)
	_msg = string.format("%s WXREPORT. repostring = %s", 
		self.traceTitle,
		repoString
	)
	self:T(_msg)

	local qfe = false
	local metric = false
	local options = self:split(repoString, ",")
	--local pos = mark:GetCoordinate()
	self:T({options = options, markpos = {mark.pos}})

	for idx, option in pairs (options) do
		option = option:gsub("%s+", "")
		self:T({option_sub = option})
		if(option:upper() == "METRIC") then
		metric = true
		elseif(option:upper() == "QFE") then
		qfe = true
		end
	end
	
	local wxPos = COORDINATE:NewFromVec3(mark.pos) -- COORDINATE:NewFromVec3(self:MLConvertMarkPos(mark.pos))
	local wxLandHeight = wxPos:GetLandHeight()
	local heading, windSpeedMPS = wxPos:GetWind()
	
	_msg = string.format("%s Land Height: %d, Heading: %d, Speed m/s: %4.2f", 
		self.traceTitle,
		wxLandHeight,
		heading,
		windSpeedMPS
	)
	self:T(_msg)
	
	--heading = self:_Heading(heading + 180)
	local windSpeedKnots = UTILS.MpsToKnots(windSpeedMPS)
	local temperature = wxPos:GetTemperature()
	
	local pressure_hPa,pressure_inHg
	if(qfe) then
		pressure_hPa = wxPos:GetPressure(wxLandHeight)
	else
		pressure_hPa = wxPos:GetPressure(0)
	end
	pressure_inHg = pressure_hPa * 0.0295299830714
	
	local coal
	if(mark.initiator) then
		coal = UNIT:Find(mark.initiator):GetGroup():GetCoalition()
	else
		coal = mark.coalition
	end

	local msgWx = ""
	local msgWind, msgPressure, msgTemperature

	-- requested in Metric
	if(metric) then
		msgWind = string.format("Wind is from %03d Degrees at %.2f Mps",heading, windSpeedMPS)
		if(qfe) then
			msgPressure = string.format("QFE is %4.2f hPa", pressure_hPa)
		else
			msgPressure = string.format("QNH is %4.2f hPa", pressure_hPa)
		end
	-- requested in Imperial
	else
		msgWind = string.format("Wind is from %03d Degrees at %d Knots",heading, windSpeedKnots)
		if(qfe) then
			msgPressure = string.format("QFE is %4.2f inHg", pressure_inHg)
		else
			msgPressure = string.format("QNH is %4.2f inHg", pressure_inHg)
		end
	end
	
	msgTemperature = string.format("Temperature is %d Degrees C", temperature)

	msgWx = string.format("%s\n%s\n%s", 
		msgWind,
		msgPressure,
		msgTemperature
	)
	wxPos:MarkToCoalition(msgWx,coal,false,nil)

	_msg = string.format("%s%s", 
		self.traceTitle,
		(string.gsub(msgWx, "%c", " | "))
	)
	self:T(_msg)
	-- _msg = string.format("%s %s | %s | %s", 
	-- 	self.traceTitle,
	-- 	msgWind,
	-- 	msgPressure,
	-- 	msgTemperature
	-- )
	-- self:T(_msg)
end

-----------------
-- REMOVE CMD MARK POINT
-----------------

function MARKSPAWN:MLRemoveMark(markId)
	local allMarks = world.getMarkPanels()
	for idx, mark in pairs(allMarks) do
		if markId == mark.idx then
		trigger.action.removeMark(markId)
		allMarks[idx] = nil
		return
		end
	end
end

-----------------
-- SPAWN RADIO
-----------------

function MARKSPAWN:MLRadioSpawn(SpawnTable)
	local song = SpawnTable.song
	local freq = tonumber(SpawnTable.freq) or 251

	local band = SpawnTable.band or "AM"
	if(band == "FM") then
		band = 1
	else
		band = 0
	end
	local power = tonumber(SpawnTable.power) or 1200
	local loop = SpawnTable.loop

	self:T(freq)
	self:T(band)
	self:T(power)

	local radioPositionable = SpawnTable.group
	if(radioPositionable) then

		local pirateRadio = RADIO:New(radioPositionable)
		pirateRadio:NewGenericTransmission(song,freq,band,power,false)
		pirateRadio:Broadcast()
		self:T("[JTF-1] boobs")
	else
		MLRadio:NewGenericTransmission(song,freq,band,power,false)
		MLRadio:Broadcast()
		self:T("[JTF-1] tatas")
	end

end

-----------------
-- Get Property for SpawnType
-----------------

function MARKSPAWN:GetProperty(msType, property)
	_msg = string.format("%sGetProperty called for type: %s, property: %s", 
		self.traceTitle,
		tostring(msType),
		tostring(property)
	)
	self:T(_msg)

	for idx, spawnType in pairs(self.spawnTypes) do
		-- find the requested type
		if string.upper(msType) == string.upper(spawnType.msType) then
			-- get the requested property value
			local propertyVal = spawnType[property]
			-- if found return the value
			if propertyVal ~= nil then
				return propertyVal
			else
				_msg = string.format("%sError! Property %s not found for type %s",
					self.traceTitle,
					property,
					msType
				)
				self:E(_msg)
			end
		end
	end
	return nil
end

-----------------
-- Spawn Template Name String Comparison
-----------------

function MARKSPAWN:comparator(msType)
	for idx, val in pairs(self.spawnTypes) do
		if string.upper(msType) == string.upper(val.msType) then
			self:T("[JTF-1] Type: " .. val.msType)
			self:T("[JTF-1] Value: " .. val.category)
			self:T("[JTF-1] Role: " .. val.role)
			if val.spawn then
				return val.spawn, val.category, val.role
			else
				_msg = string.format("%sError! Skipping type for missing spawn template %s",
					self.traceTitle,
					val.template
				)
			end
		end
	end
	return nil
end

-----------------
-- Set ROE
-----------------

function MARKSPAWN:MLSetROE(ROEString, group)
	local text = string.upper(ROEString)
	if(text == "FREE") then 
		group:OptionROEWeaponFree()
	elseif (text == "RETURN") then
		group:OptionROEReturnFire()
	elseif (text == "HOLD") then
		group:OptionROEHoldFire()
	end
end

-----------------
-- Set ROT
-----------------

function MARKSPAWN:MLSetROT(ROTString, group)
	local text = string.upper(ROTString)
	if(text == "EVADE") then
		group:OptionROTEvadeFire()
	elseif (text == "PASSIVE") then
		group:OptionROTPassiveDefense()
	elseif (text == "NONE") then
		group:OptionROTNoReaction()
	end
end

-----------------
-- Set Alarm State
-----------------

function MARKSPAWN:MLSetAlarm(alarmString, group)
	local text = string.upper(alarmString)
	if(text == "GREEN") then 
		group:OptionAlarmStateGreen()
	elseif (text == "RED") then
		group:OptionAlarmStateRed()
	elseif (text == "AUTO") then
		group:OptionAlarmStateAuto()
	end
end

-----------------
-- Set Task
-----------------

function MARKSPAWN:MLSetTask(TaskString, group)
		local text = string.upper(TaskString)
		local taskTable = {}
	
		if(text == "CAP") then 
		local EngageTargets = { 
		id = 'EngageTargets', 
		params = { 
			maxDist = UTILS.NMToMeters(40), 
			targetTypes = {"Air"},
			priority = 0 
		} 
		}
		taskTable[1] = EngageTargets
	
	elseif (text == "REFUELING" or text == "TANKER") then
		local task = group:EnRouteTaskTanker()
		taskTable[1] = task
	
	elseif (text == "CAS") then
		local EngageTargets = { 
		id = 'EngageTargets', 
		params = { 
			maxDist = UTILS.NMToMeters(25), 
			targetTypes = {"Ground Units","Light armed ships","Helicopters"},
			priority = 0 
		} 
		}
	
	elseif (text == "SEAD") then
		local EngageTargets = { 
		id = 'EngageTargets', 
		params = {
			maxDist = UTILS.NMToMeters(25), 
			targetTypes = {"Air Defence"},
			priority = 0 
		} 
		}
		taskTable[1] = EngageTargets
	
	elseif (text == "TASMO") then
		local EngageTargets = { 
		id = 'EngageTargets', 
		params = { 
			maxDist = UTILS.NMToMeters(100), 
			targetTypes = {"Ships"},
			priority = 0 
		} 
		}
		taskTable[1] = EngageTargets
	
	elseif (text == "AWACS") then
		local task = group:EnRouteTaskAWACS()
		local EPLRS = { 
		id = 'EPLRS', 
		params = { 
			value = true,
		} 
		}
		group:SetCommand(EPLRS)
		taskTable[1] = task
	
	elseif (text == "AFAC") then
		local task = group:EnRouteTaskFAC(UTILS.NMToMeters(10), 0)
		taskTable[1] = task
	
	end
	
	return taskTable
end
  
-----------------
-- COALITION ENUMERATOR
-----------------
  
function MARKSPAWN:MLSideComparator(side, template)
	local coal
	local country = template:GetCountry()
	if(side == "BLUE") then
		coal = coalition.side.BLUE
		if(coal ~= template:GetCoalition()) then
			country = self.default.DEFAULT_BLUE_COUNTRY
		end
	elseif(side == "RED") then
		coal =  coalition.side.RED
		if(coal ~= template:GetCoalition()) then
			country = self.default.DEFAULT_RED_COUNTRY
		end
	elseif(side == "NEUTRAL") then
		coal =  coalition.side.NEUTRAL
		if(coal ~= template:GetCoalition()) then
			country = self.default.DEFAULT_NEUTRAL_COUNTRY
		end
	else
		coal = template:GetCoalition()
		country = template:GetCountry()
	end

	self:T(coal .. " " .. country)
	return coal, country
end

-----------------
-- Get Radio Preset
-----------------

function MARKSPAWN:MLRadioPreset(channel)
	return self.radioPresets[channel]
end

-----------------
-- CONVERT POS TO VEC2?
-----------------

function MARKSPAWN:MLConvertMarkPos(pos)
	local newPos = UTILS.DeepCopy(pos)
	local zVal = pos.x
	local xVal = pos.z
	newPos.z = zVal
	newPos.x = xVal
	_msg = self.traceTitle .. " newPos.z = " .. newPos.z .. " newPos.x = " .. newPos.x
	self:T(_msg)

	return newPos
end

-----------------
-- GET LIST OF WAYPOINT COORDINATES
-----------------

function MARKSPAWN:MLFindWaypoints(waypointNameList)
	self:T("[JTF-1] WAYPOINTS MODE TURN ON")
	local waypointNames={}
	local waypointCoords = {}
	--waypoints:gsub("%w*",function(name) table.insert(waypointNames,name) end)
	--for k, v in waypointNameList:gmatch("(%w*)") do
	--  table.insert(waypointNames,k)
	--end
	
	waypointNames = self:split(waypointNameList,",")
	local allMarks = world.getMarkPanels()
	for idx, name in pairs(waypointNames) do
		for idy, mark in pairs(allMarks) do
		self:T("[JTF-1] name: " .. name)
		self:T("[JTF-1] mark: " .. mark.text)
		if string.upper(name) == string.upper(mark.text) then
			waypointCoords[#waypointCoords + 1] = COORDINATE:NewFromVec3(mark.pos)
			break
		end
		end
	end
	return waypointCoords
end

-----------------
-- SPLIT STRING AT DELIMITER
-----------------

function MARKSPAWN:split(s, delimiter)
	local result = {};
	for match in (s..delimiter):gmatch("(.-)"..delimiter) do
		table.insert(result, match);
	end
	return result;
end

-----------------
-- Display message with the mark's command and options
-----------------

function MARKSPAWN:MLListSpawnOptions(category, mark)
	local messageString = ""
	for idx, value in pairs(self.spawnTypes) do
		--list name, role, maybe default coalition
		if value.spawn then
			if(category:upper() == value.category:upper()) then
				local name = value.msType
				local role = value.role
				local defaultCoalition = GROUP:FindByName( value.spawn.SpawnTemplatePrefix ):GetCoalition()
				local coal
				if(defaultCoalition == 1) then 
					coal = "Red" 
				elseif defaultCoalition == 2 then 
					coal = "Blue" 
				else 
					coal = "Neutral"
				end
				local line = string.format("Type: %s, Role: %s, Coalition: %s\n", 
					name, 
					role, 
					coal
				)
				messageString = messageString .. line 
			end
		else
			_msg = string.format("%sError! Skipping OPTIONS for missing spawn template %s.",
				self.traceTitle,
				value.template
			)
			self:T(_msg)
		end

	end
	self:T("[JTF-1] OPTIONS: " .. messageString)
	local DCSUnit = mark.initiator
	if(DCSUnit) then
		--local group = unit:GetGroup()
		local unit = UNIT:Find(DCSUnit)
		local group = unit:GetGroup()
		MESSAGE:New(messageString,30):ToUnit(unit) -- ToGroup(group)
	else
		local coal = mark.coalition
		self:T(coal)
		MESSAGE:New(messageString,30):ToCoalition(coal)
	end
end

-----------------
-- GET REVERSE OF HEADING 
-----------------

--stolen from moose, cred to them
function MARKSPAWN:_Heading(course)
	local h
	if course<=180 then
		h=math.rad(course)
	else
		h=-math.rad(360-course)
	end
	return h 
end

-----------------
-- VALIDATE SKILL OPTION 
-----------------

function MARKSPAWN:MLSkillCheck(skill)
	if(skill == nil) then
		return nil
	end

	skill = skill:upper()
	if(skill == "AVERAGE") then
		return skill
	elseif(skill == "NORMAL") then
		return skill
	elseif(skill == "GOOD") then
		return skill
	elseif(skill == "HIGH") then
		return skill
	elseif(skill == "EXCELLENT") then
		return skill
	elseif(skill == "RANDOM") then
		return skill
	else
		return nil
	end

end

-----------------
-- TEMPLATES 
-----------------

function MARKSPAWN:AddTemplate(spawnType)

end

--- END MARKSPAWN