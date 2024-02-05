::
:: Copy Mission Files from dynmic to static
::

@ECHO OFF
SETLOCAL ENABLEEXTENSIONS

:: name of this file for message output
SET me=%~n0
:: folder in which this file is being executed
SET parent=%~dp0
:: log file to output build results
SET log=%parent%logs\%me%.log

SET destination_path=%parent%static\
ECHO Static file output path:    %destination_path%

:: path to dynamic files to be concatenated
SET source_path=%parent%dynamic\
SET source_path_core=%parent%dynamic\core\
ECHO Dynamic file source path:   %source_filepath%

ECHO.

:: Initialise build file & log
ECHO STATIC FILE COPY STARTED: %DATE:~6,4%-%DATE:~3,2%-%DATE:~0,2%T%TIME% > %log%
ECHO. >> %log%

ECHO.

:: Dynamic local files
copy %source_path%mission_init.lua %destination_path%mission_init.lua
copy %source_path%msrs.lua %destination_path%msrs.lua
copy %source_path%missiontimer.lua %destination_path%missiontimer.lua
copy %source_path%missiletrainer.lua %destination_path%missiletrainer.lua
copy %source_path%mission_menu.lua %destination_path%mission_menu.lua
copy %source_path%supportaircraft_data.lua %destination_path%supportaircraft_data.lua
copy %source_path%bfmacm.lua %destination_path%bfmacm.lua
copy %source_path%Hercules_Cargo.lua %destination_path%Hercules_Cargo.lua
copy %source_path%rescue_helo.lua %destination_path%rescue_helo.lua
copy %source_path%legacy_carrier.lua %destination_path%legacy_carrier.lua
copy %source_path%staticranges.lua %destination_path%staticranges.lua
copy %source_path%bfmacm.lua %destination_path%bfmacm.lua
:: copy %source_path%bvrgci.lua %destination_path%bvrgci.lua
copy %source_path%mission_main.lua %destination_path%mission_main.lua
copy %source_path%dynamic_deck_templates.lua %destination_path%dynamic_deck_templates.lua
copy %source_path%mission_end.lua %destination_path%mission_end.lua

:: Dynamic Core Files
copy %source_path_core%devcheck.lua %destination_path%devcheck.lua
copy %source_path_core%adminmenu.lua %destination_path%adminmenu.lua
copy %source_path_core%supportaircraft.lua %destination_path%supportaircraft.lua
copy %source_path_core%dynamic_deck_population.lua %destination_path%dynamic_deck_population.lua

ECHO.

:: Close log
ECHO. >> %log%
ECHO STATIC FILE COPY FINISHED: %DATE:~6,4%-%DATE:~3,2%-%DATE:~0,2%T%TIME% >> %log%
ECHO Copy complete.

PAUSE
EXIT /B %ERRORLEVEL%