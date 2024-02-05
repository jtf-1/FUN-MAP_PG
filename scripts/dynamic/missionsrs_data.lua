env.info( "[JTF-1] missionsrs_data" )
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- MISSION TIMER SETTINGS FOR MIZ
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--
-- This file MUST be loaded AFTER missionsrs.lua
--
-- These values are specific to the miz and will override the default values in MISSIONSRS.default
--

-- Error prevention. Create empty container if module core lua not loaded.
if not MISSIONSRS then 
	_msg = "[JTF-1 MISSIONSRS] CORE FILE NOT LOADED!"
	BASE:E(_msg)
	MISSIONSRS = {}
end

-- table of values for missionsrs to use this miz. Overrides default values.
-- MISSIONSRS.srsPath = "C:/Program Files/DCS-SimpleRadio-Standalone" -- default path to SRS install directory if setting file is not avaialable "C:/Program Files/DCS-SimpleRadio-Standalone"
-- MISSIONSRS.srsPort = 5002                                          -- default SRS port to use if settings file is not available
-- MISSIONSRS.msg = "No Message Defined!"                             -- default message if text is nil
MISSIONSRS.freqs = {243,251,3,30}                          -- transmit on guard, CTAF, NTTR TWR, NTTR BLACKJACK and 30FM as default frequencies
-- MISSIONSRS.modulations = {AM,AM,AM,AM,FM}                          -- default modulation (count *must* match qty of freqs)
-- MISSIONSRS.vol = "1.0"                                             -- default to full volume
-- MISSIONSRS.name = "Server"                                         -- default to server as sender
-- MISSIONSRS.coalition = 0                                           -- default to spectators
-- MISSIONSRS.vec3 = nil                                              -- point from which transmission originates
-- MISSIONSRS.speed = 2                                               -- speed at which message should be played
-- MISSIONSRS.gender = "female"                                       -- default gender of sender
-- MISSIONSRS.culture = "en-US"                                       -- default culture of sender
-- MISSIONSRS.voice = ""                                              -- default voice to use

if MISSIONSRS.Start then
	MISSIONSRS:Start()
end