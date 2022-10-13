::
:: Create Symlinks for dynamic loading of library source files
::

@ECHO OFF
SETLOCAL ENABLEEXTENSIONS

:: name of this file for message output
SET me=%~n0
:: folder in which this file is being executed
SET parent=%~dp0

CD %parent%

:: path to static scripts
SET dynamicscriptpath=%parent%dynamic\
ECHO Dynamic path:           %dynamicscriptpath%

:: Move to folder containing library files
CD %dynamicscriptpath%
DIR  %dynamicscriptpath%*.*

ECHO.

:: Create symlinks to library files
:: MOOSE
MKLINK %dynamicscriptpath%Moose.lua "d:\GitHub\MOOSE_INCLUDE\Moose_Include_Static\Moose.lua"
:: MIST
MKLINK %dynamicscriptpath%mist.lua "d:\GitHub\MissionScriptingTools\mist.lua"
:: SKYNET
MKLINK %dynamicscriptpath%skynet-iads-compiled.lua "d:\GitHub\Skynet-IADS\demo-missions\skynet-iads-compiled.lua"

ECHO.

DIR  %dynamicscriptpath%*.*

PAUSE
EXIT /B %ERRORLEVEL%