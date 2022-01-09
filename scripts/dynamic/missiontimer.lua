-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- BEGIN MISSION TIMER
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--- Mission Timer
--
-- Add schedules to display messages at set intervals prior to restarting the base mission.
-- ME switched triggers should be set to a FLAG EQUALS condition for the flag flagLoadMission
-- value (defined in script header). The flag value 1 should trigger a LOAD MISSION for the
-- base (default) map.
--
--

local MissionTimer = {}

-- Mission run time in HOURS
MissionTimer.durationHrs = 11

-- Schedule for mission restart warning messages. Time in minutes.
MissionTimer.msgSchedule = {60, 30, 10, 5}

-- Mission run time in seconds
MissionTimer.durationSecs = MissionTimer.durationHrs * 3600

-- schedule container
MissionTimer.msgWarning = {}

--- add scheduled messages for mission restart warnings and restart at end of mission duration
function MissionTimer:AddSchedules()

  for i, msgTime in ipairs(self.msgSchedule) do

    self.msgWarning[i] = SCHEDULER:New( nil, 
      function()
        MESSAGE:New("Mission will restart in " .. msgTime .. " minutes!"):ToAll()
      end,
    {msgTime}, self.durationSecs - (msgTime * 60))

  end

  self.msgWarning["restart"] = SCHEDULER:New( nil,
    function()
      MESSAGE:New("Mission is restarting now!"):ToAll()
      trigger.action.setUserFlag(flagLoadMission, flagBaseMissionValue)
    end,
    { }, self.durationSecs)

end

MissionTimer:AddSchedules()

--- END MISSION TIMER