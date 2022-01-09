::
:: Concatenate dynamic mission files into a single mission file for static use
::

@ECHO OFF
SETLOCAL ENABLEEXTENSIONS

:: name of this file for message output
SET me=%~n0
:: folder in which this file is being executed
SET parent=%~dp0
:: log file to output build results
SET log=%parent%logs\%me%.log

:: name of static mission file to create
SET build_filename=Fun-Map_NTTR.lua
ECHO Static file name:           %build_filename%

SET build_path=%parent%static\
ECHO Static file output path:    %build_path%

:: path to dynamic files to be concatenated
SET input_filepath=%parent%dynamic\
ECHO Dynamic file source path:   %input_filepath%

ECHO.

:: Initialise build file & log
ECHO STATIC FILE BUILD STARTED: %DATE:~6,4%-%DATE:~3,2%-%DATE:~0,2%T%TIME% > %log%
ECHO. >> %log%
ECHO Creating static file
ECHO env.info( '*** MISSION FILE BUILD DATE: %DATE:~6,4%-%DATE:~3,2%-%DATE:~0,2%T%TIME%Z ***') > %build_path%%build_filename%
ECHO %DATE:~6,4%-%DATE:~3,2%-%DATE:~0,2%T%TIME%      Create Static file:     %build_path%%build_filename% >> %log%

ECHO.

:: Add dynamic files
CALL :buildfile mission_init.lua
CALL :buildfile devcheck.lua
CALL :buildfile disableai.lua
CALL :buildfile adminmenu.lua
CALL :buildfile missiontimer.lua
CALL :buildfile missiletrainer.lua
CALL :buildfile supportaircraft.lua
CALL :buildfile staticranges.lua
CALL :buildfile dynamicranges.lua
CALL :buildfile movingtargets.lua
CALL :buildfile ecs.lua
CALL :buildfile bfmacm.lua
CALL :buildfile bvrgci.lua
CALL :buildfile mission_end.lua

ECHO.

:: Close log
ECHO. >> %log%
ECHO STATIC FILE BUILD FINISHED: %DATE:~6,4%-%DATE:~3,2%-%DATE:~0,2%T%TIME% >> %log%
ECHO Build complete.

PAUSE
EXIT /B %ERRORLEVEL%

:: Add dynamic file content to static file
:buildfile
ECHO Adding dynamic file:        %input_filepath%%1
TYPE %input_filepath%%1 | MORE /E /P >> %build_path%%build_filename%
ECHO. >> %build_path%%build_filename%
ECHO %DATE:~6,4%-%DATE:~3,2%-%DATE:~0,2%T%TIME%      Adding dynamic file:    %input_filepath%%1 >> %log%
EXIT /B 0