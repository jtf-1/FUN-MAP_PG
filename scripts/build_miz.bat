::
:: Insert static mission script into mission files (*.miz) in project root.
::

@ECHO OFF
SETLOCAL ENABLEEXTENSIONS

:: Name of project static mission script
SET missionsscript=Fun-Map_NTTR.lua

:: name of this file for message output
SET me=%~n0
:: folder in which this file is being executed
SET parent=%~dp0
:: log file to output build results
SET log=%parent%logs\%me%.log

CD %parent%
CD ..

:: project root folder
SET projectroot=%CD%\
ECHO Project Root:          %projectroot%
:: path to static scripts
SET staticscriptpath=%parent%static\
ECHO Static path:           %staticscriptpath%

:: Initialise build file & log
ECHO MISSION FILE BUILD STARTED: %DATE:~6,4%-%DATE:~3,2%-%DATE:~0,2%T%TIME% > %log%
ECHO. >> %log%

CD %projectroot%
DIR *.miz 

:: Add static mission script to MIZ
For %%I IN (%projectroot%*.miz) do (
  ECHO %DATE:~6,4%-%DATE:~3,2%-%DATE:~0,2%T%TIME%      Building MIZ file:    %%I >> %log%
  echo "Mission: %%I"
  mkdir Temp
  cd Temp
  mkdir l10n
  mkdir l10n\DEFAULT
  copy %staticscriptpath%%missionsscript% l10n\DEFAULT
  7z.exe -bb0 u "%%I" "l10n\DEFAULT\*.lua"
  cd %projectroot%
  rmdir /S /Q Temp
)

:: Close log
ECHO. >> %log%
ECHO MISSION FILE BUILD FINISHED: %DATE:~6,4%-%DATE:~3,2%-%DATE:~0,2%T%TIME% >> %log%
ECHO Mission build complete.

PAUSE
EXIT /B %ERRORLEVEL%
