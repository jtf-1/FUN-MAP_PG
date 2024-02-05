::
:: Insert static mission script into mission files (*.miz) in project root.
::

@ECHO OFF
SETLOCAL ENABLEEXTENSIONS

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
:: path to kneeboards
SET kneeboardpath=%projectroot%KNEEBOARD\IMAGES\
ECHO Kneeboard path:        %kneeboardpath%

:: Initialise build file & log
ECHO MISSION FILE BUILD STARTED: %DATE:~6,4%-%DATE:~3,2%-%DATE:~0,2%T%TIME% > %log%
ECHO. >> %log%

CD %projectroot%
DIR  %projectroot%*.miz 

:: Prepare build content
mkdir %projectroot%Temp\l10n\DEFAULT
copy %staticscriptpath%*.* %projectroot%Temp\l10n\DEFAULT
mkdir %projectroot%TEMP\KNEEBOARD\IMAGES
copy %kneeboardpath%*.* %projectroot%Temp\KNEEBOARD\IMAGES



:: Add build content to MIZ
For %%I IN (%projectroot%DEV_*.miz) do (
  ECHO %DATE:~6,4%-%DATE:~3,2%-%DATE:~0,2%T%TIME%      Building MIZ file:    %%I >> %log%
  echo Mission: %%I
  echo.
  echo.
  echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  echo ++                     Build File                        ++
  echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  cd %projectroot%Temp
  7z.exe u "%%I" *
)
  
cd %projectroot%
rmdir /S /Q Temp

:: Close log
ECHO. >> %log%
ECHO MISSION FILE BUILD FINISHED: %DATE:~6,4%-%DATE:~3,2%-%DATE:~0,2%T%TIME% >> %log%
ECHO Mission build complete.

PAUSE
EXIT /B %ERRORLEVEL%
