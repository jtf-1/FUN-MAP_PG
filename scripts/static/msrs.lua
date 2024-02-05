-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- Default SRS Text-to-Speech
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--
-- Send messages through SRS using STTS
-- Script will try to load the file specified with LocalServerConfigFile [name of settings file] 
-- and LocalServerConfigPath [path to file]. This file should define the path to the SRS installation 
-- directory and the port used by the DCS server instance running the mission. 
--
-- If the settings file is not found, the defaults for srs_path and srs_port will be used.
--
-- Message text will be formatted as a SOUNDTEXT object.
-- 
-- Use MISSIONSRS:SendRadio() to transmit on SRS
--
-- msgText        - [required] STRING. Text of message. Can be plain text or a MOOSE SOUNDTEXT obkect
-- msfFreqs       - [optional] STRING. frequency, or table of frequencies (without any spaces). Default freqs AND modulations will be applied if this is not specified.
-- msgModulations - [optional] STRING. modulation, or table of modulations (without any spaces) if multiple freqs passed. Ignored if msgFreqs is not defined. Default modulations will be applied if this is not specified
--


MISSIONSRS = {
  LocalServerConfigPath = nil,                                    -- path to server srs settings. nil if file is in root of server's savedgames profile.
  LocalServerConfigFile = "LocalServerSettings.txt",              -- srs server settings file name
  defaultSrsPath = "C:/Program Files/DCS-SimpleRadio-Standalone", -- default path to SRS install directory if setting file is not avaialable "C:/Program Files/DCS-SimpleRadio-Standalone"
  defaultSrsPort = 5002,                                          -- default SRS port to use if settings file is not available
  defaultText = "No Message Defined!",                            -- default message if text is nil
  defaultFreqs = "243,251,327,377.8,30",                          -- transmit on guard, CTAF, NTTR TWR, NTTR BLACKJACK and 30FM as default frequencies
  defaultModulations = "AM,AM,AM,AM,FM",                          -- default modulation (count *must* match qty of freqs)
  defaultVol = "1.0",                                             -- default to full volume
  defaultName = "Server",                                         -- default to server as sender
  defaultCoalition = 0,                                           -- default to spectators
  defaultVec3 = nil,                                              -- point from which transmission originates
  defaultSpeed = 2,                                               -- speed at which message should be played
  defaultGender = "female",                                       -- default gender of sender
  defaultCulture = "en-US",                                       -- default culture of sender
  defaultVoice = "",                                              -- default voice to use
}

function MISSIONSRS:LoadSettings()
  self.SRS_DIRECTORY = JTF1.srsPath and JTF1.srsPath or self.defaultSrsPath
  self.SRS_PORT = JTF1.srsPort and JTF1.srsPort or self.defaultSrsPort
  self:AddRadio()
  BASE:T({"[MISSIONSRS]",{self}})
end

function MISSIONSRS:AddRadio()
  self.Radio = MSRS:New(self.SRS_DIRECTORY, self.defaultFreqs, self.defaultModulations)
  self.Radio:SetPort(self.SRS_PORT)
  self.Radio:SetGender(self.defaultGender)
  self.Radio:SetCulture(self.defaultCulture)
  self.Radio.name = self.defaultName
end

function MISSIONSRS:SendRadio(msgText, msgFreqs, msgModulations)

  BASE:T({"[MISSIONSRS] SendRadio", {msgText}, {msgFreqs}, {msgModulations}})
  if msgFreqs then
    BASE:T("[MISSIONSRS] tx with freqs change.")
    if msgModulations then
      BASE:T("[MISSIONSRS] tx with mods change.")
    end
  end
  if msgText == (nil or "") then 
    msgText = self.defaultText
  end
  local text = msgText
  local tempFreqs = (msgFreqs or self.defaultFreqs)
  local tempModulations = (msgModulations or self.defaultModulations)
  if not msgText.ClassName then
    BASE:T("[MISSIONSRS] msgText NOT SoundText object.")
    text = SOUNDTEXT:New(msgText) -- convert msgText to SOundText object
  end
  self.Radio:SetFrequencies(tempFreqs)
  self.Radio:SetModulations(tempModulations)
  self.Radio:PlaySoundText(text)
  self.Radio:SetFrequencies(self.defaultFreqs) -- reset freqs to default
  self.Radio:SetModulations(self.defaultModulations) -- rest modulation to default

end


MISSIONSRS:LoadSettings()
