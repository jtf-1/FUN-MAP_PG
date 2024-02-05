env.info( "[JTF-1] cvncontrol.lua" )

--- BEGIN CVNCONTROL MENU SECTION

CVNCONTROL = {}
-- inherit methods,  properties etc from BASE for event handler, trace etc
CVNCONTROL = BASE:Inherit( CVNCONTROL, BASE:New() )
CVNCONTROL.ClassName = "CVNCONTROL"
CVNCONTROL.traceTitle = "[JTF-1] "
CVNCONTROL.version = "1.0"

CVNCONTROL.menu = {}

CVNCONTROL.enums = {
	setlightsauto = 1, -- auto
	setlightslaunch = 2, -- launch
	setlightsrecovery = 3, -- recovery
	setlightsnav = 4, -- nav
}

CVNCONTROL.default = {
	recoverywindow = {15, 30, 60, 90},
	cruise = 12,
	deckoffset = -9,
	countryid = country.id.USA, -- default country to be used for predfined templates
	coalition = coalition.side.BLUE, -- default coalition to use for predefined templates
	groupcategory = Group.Category.AIRPLANE, -- default group category to use for predefined templates
	recoverydelay = 0, -- time, in seconds, for which to delay the commencement of the launch/recovery window
	flagsetlights = 6666, -- mission trigger flag for setting carrier lights (0 = NAV, 1 = Launch, 2 = Recovery)
	setlightsdefault = CVNCONTROL.enums.setlightsauto, -- default light mode for carrier
}

function CVNCONTROL:Start()

	for index, cvn in ipairs(CVNCONTROL.cvn) do

		-- local cvn = self.cvn[index]
		-- use data file values or set to default if not defined
		cvn.deckOffset = cvn.deckoffset or self.default.deckoffset
		cvn.recoverySpeed = cvn.recoveryspeed or self.default.recoveryspeed
		cvn.cruise = cvn.cruise or self.default.cruise
		cvn.recoveryWindow = cvn.recoveryWindow or self.default.recoverywindow
		cvn.recoveryDelay = cvn.recoveryDelay or self.default.recoverydelay
		cvn.flagsetlights = cvn.flagsetlights or self.default.flagsetlights
		--local tacan = cvn.tacan
		
		cvn.navygroup = NAVYGROUP:New(GROUP:FindByName(cvn.group)) -- cvn.navygroup
			--:Activate()
		
		cvn.navygroup:SetDefaultSpeed(cvn.cruise)
		cvn.navygroup:SetVerbosity(3)
		cvn.navygroup:SwitchTACAN(cvn.tacan, cvn.tacanid) -- add
		cvn.navygroup:SwitchICLS(cvn.icls, cvn.iclsid) -- add
		cvn.navygroup:SwitchRadio(cvn.radio,cvn.radiomodulation) -- add
		cvn.navygroup:SwitchAlarmstate(ENUMS.AlarmState.Red) -- add
		cvn.navygroup:SwitchROE(ENUMS.ROE.WeaponFree) -- add
		cvn.navygroup:SetPatrolAdInfinitum(true)

		-- if trace is on, draw the zone on the map
		if BASE:IsTrace() then 
			local _msg = string.format("Add waypoint marks for group %s", cvn.name)
			CVNCONTROL:T(_msg)
			-- draw waypoints on map
			cvn.navygroup:MarkWaypoints()
		end

		-- add recovery tanker if cvn.recoverytanker is true
		function cvn.navygroup:OnAfterElementSpawned(From, Event, To, Element)
			local _msg = string.format("%sOnAfterElementSpawned for Element %s", CVNCONTROL.traceTitle, Element.name)
			CVNCONTROL:T({_msg,Element})

			local elementName = Element.name
	
	
			if Element.name == cvn.unit then
				local _msg = string.format("%sLead Element %s", CVNCONTROL.traceTitle, Element.name)
				CVNCONTROL:T(_msg)
	
				-- add recovery tanker
				if cvn.tanker then
					_msg = string.format("%sRecovery Tanker for %s is required", CVNCONTROL.traceTitle, cvn.name)
					CVNCONTROL:T(_msg)
					CVNCONTROL:recoveryTanker(cvn)
				end
				-- insert unit ID into DYNDECK group
				local unit = UNIT:FindByName(cvn.unit)--GROUP:FindByName(cvn.group):GetUnit(1)
				local unitid = unit:GetID()
				_msg = string.format("%sUnit object for %s", CVNCONTROL.traceTitle, cvn.unit)
				CVNCONTROL:T({_msg, unit})
	
			end
	
		end
	
		function cvn.navygroup:OnAfterTurnIntoWind(From, Event, To, TurnIntoWind)

			local _msg=string.format("%s is turning into wind for Launch/Recovery. BRC will be %d, WOD will be %d knots.", 
				cvn.name,
				cvn.brc,
				cvn.recoveryspeed
			)
			CVNCONTROL:T(_msg)
			MESSAGE:New(_msg, 5):ToBlue()

		end

		function cvn.navygroup:OnAfterCruise(From, Event, To, Speed)
			
			local _msg = string.format("%s is returning to Cruise.",
				cvn.name
			)
			CVNCONTROL:T(_msg)
			MESSAGE:New(_msg, 5):ToBlue()

			--cvn.navygroup:SetSpeed(cvn.cruise, true)

		end

		local _msg = string.format("%sNew Navygroup =", self.traceTitle)
		self:T({_msg,cvn.navygroup})
		
		-- add top menu if not already added
		if not self.menu.top then
			--if JTF1.menu.root then
				self.menu.top = MENU_COALITION:New(coalition.side.BLUE,"Carrier Control", JTF1.menu.root)
			--else
			-- 	self.menu.top = MENU_COALITION:New(coalition.side.BLUE,"Carrier Control")
			-- end
		end
	
		-- add menu for this CVN
		self.menu[cvn.name] = MENU_COALITION:New(coalition.side.BLUE, cvn.menutext, self.menu.top)
		
		for index, minutes in ipairs(cvn.recoveryWindow) do
			local menuText = string.format("Launch/Recovery/%dmin", minutes)
			local menuId = tostring(minutes)
	
			-- add command menus for this cvn
			self.menu[cvn.name][menuId] = MENU_COALITION_COMMAND:New( coalition.side.BLUE, menuText, self.menu[cvn.name], self.start_recovery, CVNCONTROL, cvn, minutes)
			_msg = string.format("%sAdd command menu for CVN %s window %s minutes.", self.traceTitle, cvn.name, menuId)
			self:T(_msg)
		
		end
		
		self.menu[cvn.name]["lights"] = MENU_COALITION:New(coalition.side.BLUE, "Change Lights", self.menu[cvn.name])
		-- add commands to set carrier lights mode
		self.menu[cvn.name]["recovery"] = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "Recovery mode", self.menu[cvn.name]["lights"], self.setLights, CVNCONTROL, cvn, self.enums.setlightsrecovery)
		self.menu[cvn.name]["launch"] = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "Launch mode", self.menu[cvn.name]["lights"], self.setLights, CVNCONTROL, cvn, self.enums.setlightslaunch)


		-- add command to cancel current recovery window
		self.menu[cvn.name]["cancel"] = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "Cancel current launch/recovery window.", self.menu[cvn.name], self.recoveryCancel, CVNCONTROL, cvn, cruise)
		_msg = string.format("%sAdd command menu to cancel recovery for CVN %s.", self.traceTitle, cvn.name)
		self:T(_msg)
			
	end

end

function CVNCONTROL:start_recovery(cvn, minutes)

	_msg = string.format("%sstart_recovery().", self.traceTitle)
	self:T({_msg,cvn})

	self:setLights(cvn, self.enums.setlightsrecovery)
	
	if cvn.navygroup:IsSteamingIntoWind() then
		_msg = string.format("%sCVN %s already steaming into wind.", 
			self.traceTitle, 
			cvn.name
		)
		self:T(_msg)

		--local brc =  UTILS.Round(cvn.brc, 0)

		_msg = string.format("%s is currently Launching/Recovering.\n\nWindow closes at time %s\n\nBRC is %d",
			cvn.name, 
			cvn.timeend, 
			cvn.brc
		)
		MESSAGE:New(_msg, 5):ToBlue()

	else

		local brc = cvn.navygroup:GetHeadingIntoWind(-4, cvn.recoveryspeed)
		brc = UTILS.Round(brc, 0)

		_msg = string.format("%sAdd turn into wind for CVN %s. BRC=%d", 
			self.traceTitle, 
			cvn.name,
			brc
		)
		self:T(_msg)

		local durationSeconds = minutes * 60
		local timeNow = timer.getAbsTime()
		local secondsStart = timeNow + cvn.recoveryDelay
		local timeStart = UTILS.SecondsToClock(secondsStart,true)
		local secondsEnd = secondsStart + durationSeconds
		local timeEnd = UTILS.SecondsToClock(secondsEnd,true)
		local windDir = UTILS.Round(cvn.navygroup:GetWind(),0)
		local deckOffSet = cvn.deckoffset
		local uturn = cvn.uturn
		if uturn == nil then
			uturn = true
		end
		local recoverySpeed = cvn.recoveryspeed

		_msg =string.format("%s will be turning for Launch/Recovery.\nWindow will be open from %s until %s.\nWind is at %d.\nBRC will be %d", 
			cvn.name, 
			timeStart, 
			timeEnd, 
			windDir,
			brc
		)
		Message_01 = MESSAGE:New(_msg, 10):ToBlue()

		cvn.navygroup:AddTurnIntoWind(nil, durationSeconds , recoverySpeed, uturn, deckOffSet)
		cvn.timeend = timeEnd
		cvn.brc = brc

	end 

end

function CVNCONTROL:recoveryCancel(cvn, cruise)
	_msg = string.format("%sCancel recovery window for CVN %s.", self.traceTitle, cvn.name)
	self:T(_msg)

	if cvn.navygroup:IsSteamingIntoWind() then

		self:setLights(cvn, self.enums.setlightsnav)

		cvn.navygroup:TurnIntoWindStop()
		--cvn.navygroup:SetSpeed(cruise)
	
		_msg = string.format("The recovery window for %s has been cancelled.", cvn.name)
		MESSAGE:New(_msg, 5):ToBlue()
	end

end

function CVNCONTROL:setLights(cvn, mode)
	_msg = string.format("%sSet lights to mode %d for CVN %s.", 
		self.traceTitle, 
		mode, 
		cvn.name
	)
	self:T(_msg)

	-- set mode to default if not defined
	mode = mode or CVNCONTROL.default.setlightsdefault
	-- set mission trigger flag to mode
	trigger.action.setUserFlag(cvn.flagsetlights, mode)

end

function CVNCONTROL:recoveryTanker(cvn)
	_msg = string.format("%sAdd Recovery Tanker for CVN %s.", 
		self.traceTitle, 
		cvn.name
	)
	self:T(_msg)

	if cvn.tankertemplate and GROUP:FindByName(cvn.tankertemplate) then
		_msg = string.format("%sUsing tanker spawn template in MIZ for CVN %s.", self.traceTitle, cvn.name)
		self:T(_msg)
		-- spawn from template in miz
		cvn.spawntemplate = SPAWN:New(cvn.tankertemplate)
	else
		_msg = string.format("%sUsing default tanker spawn template for CVN %s.", self.traceTitle, cvn.name)
		self:T(_msg)
		-- spawn using CVNCONTROL default template
		local countryId = cvn.countryid or CVNCONTROL.default.countryid
		local coalition = cvn.coalition or CVNCONTROL.default.coalition
		local groupCategory = cvn.groupcategory or CVNCONTROL.default.groupcategory
		local spawnTemplatePrefix = "S3BTANKER"
		local spawnAliasPrefix = string.format("%s_HAWK", cvn.name)

		-- add mission spawn object using template in SUPPORTAC.template[missionSpawnType]
		cvn.spawntemplate = SPAWN:NewFromTemplate(CVNCONTROL.templates[spawnTemplatePrefix], spawnTemplatePrefix, spawnAliasPrefix)
			:InitCountry(countryId) -- set spawn countryid
			:InitCoalition(coalition) -- set spawn coalition
			:InitCategory(groupCategory) -- set category
	end
	
	cvn.spawntemplate:InitLateActivated() -- set template to late activated

	-- add RECOVERYTANKER object after spawning
	cvn.spawntemplate:OnSpawnGroup(
		function(spawngroup)
			local spawnGroupName = spawngroup:GetName()
			_msg = string.format(CVNCONTROL.traceTitle .. "Spawned Group %s", spawnGroupName)
			CVNCONTROL:T(_msg)

			cvn.spawntanker = RECOVERYTANKER:New(UNIT:FindByName(cvn.unit), spawnGroupName)
				:SetCallsign(cvn.tankercallsign, cvn.tankercallsignnumber)
				:SetTACAN(cvn.tankertacan, cvn.tankertacanid)
				:SetRadio(cvn.tankerradio)
				:SetTakeoffAir()
				:SetAltitude(6000)
				:SetRespawnInAir()
				:SetRecoveryAirboss( false )
				
			cvn.spawntanker:Start()
		end, cvn
	)

	-- spawn the tanker
	cvn.spawntemplate:Spawn()

end

CVNCONTROL.templates = {
	["S3BTANKER"] = {
		["category"] = Group.Category.AIRPLANE,
		["lateActivation"] = true,
		["tasks"] = 
		{
		}, -- end of ["tasks"]
		["radioSet"] = false,
		["task"] = "Refueling",
		["uncontrolled"] = false,
		["route"] = 
		{
			["routeRelativeTOT"] = true,
			["points"] = 
			{
				[1] = 
				{
					["alt"] = 1828.8,
					["action"] = "Turning Point",
					["alt_type"] = "BARO",
					["speed"] = 141.31944444444,
					["task"] = 
					{
						["id"] = "ComboTask",
						["params"] = 
						{
							["tasks"] = 
							{
								[1] = 
								{
									["number"] = 1,
									["auto"] = true,
									["id"] = "Tanker",
									["enabled"] = true,
									["params"] = 
									{
									}, -- end of ["params"]
								}, -- end of [1]
								[2] = 
								{
									["number"] = 2,
									["auto"] = true,
									["id"] = "WrappedAction",
									["enabled"] = true,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "ActivateBeacon",
											["params"] = 
											{
												["type"] = 4,
												["AA"] = false,
												["callsign"] = "TKR",
												["system"] = 4,
												["channel"] = 1,
												["modeChannel"] = "X",
												["bearing"] = true,
												["frequency"] = 962000000,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [2]
								[3] = 
								{
									["number"] = 3,
									["auto"] = false,
									["id"] = "WrappedAction",
									["enabled"] = true,
									["params"] = 
									{
										["action"] = 
										{
											["id"] = "SetInvisible",
											["params"] = 
											{
												["value"] = true,
											}, -- end of ["params"]
										}, -- end of ["action"]
									}, -- end of ["params"]
								}, -- end of [3]
							}, -- end of ["tasks"]
						}, -- end of ["params"]
					}, -- end of ["task"]
					["type"] = "Turning Point",
					["ETA"] = 0,
					["ETA_locked"] = true,
					["y"] = 606748.96393416,
					["x"] = -358539.84033849,
					["formation_template"] = "",
					["speed_locked"] = true,
				}, -- end of [1]
			}, -- end of ["points"]
		}, -- end of ["route"]
		["groupId"] = 1,
		["hidden"] = false,
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 1828.8,
				["alt_type"] = "BARO",
				["livery_id"] = "usaf standard",
				["skill"] = "High",
				["speed"] = 141.31944444444,
				["type"] = "S-3B Tanker",
				["unitId"] = 1,
				["psi"] = 0,
				["y"] = 606748.96393416,
				["x"] = -358539.84033849,
				["name"] = "Aerial-1-1",
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = "7813",
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				}, -- end of ["payload"]
				["heading"] = 0,
				["callsign"] = 
				{
					[1] = 1,
					[2] = 1,
					["name"] = "Texaco11",
					[3] = 1,
				}, -- end of ["callsign"]
				["onboard_num"] = "010",
			}, -- end of [1]
		}, -- end of ["units"]
		["y"] = 606748.96393416,
		["x"] = -358539.84033849,
		["name"] = "S3BTANKER",
		["communication"] = true,
		["start_time"] = 0,
		["modulation"] = 0,
		["frequency"] = 251,
	}, -- end of ["S3BTANKER"]
}

--CVNCONTROL:Start() -- called from cvncontrol_data

