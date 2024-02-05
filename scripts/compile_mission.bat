::
:: Compile dynamic mission script into a sstic file.
::

@ECHO OFF
SETLOCAL ENABLEEXTENSIONS

:: name of this file for message output
SET me=%~n0
:: folder in which this file is being executed
SET parent=%~dp0
:: log file to output build results
SET log=%parent%logs\%me%.log

:: path to input
SET input_path=%parent%dynamic\
ECHO Input path:            %input_path%
:: file name for input
SET input_file_name=compile_files.txt
ECHO Input file name:      %input_file_name%
:: path ti output
SET output_path=%parent%static\
ECHO Output path:           %output_path%
:: file name for output
SET output_file_name=mission.lua
ECHO Output file name:      %output_file_name%
ECHO --------------------------------------------------------
ECHO:

:: Initialise build file & log
ECHO MISSION COMPILE STARTED: %DATE:~6,4%-%DATE:~3,2%-%DATE:~0,2%T%TIME% > %log%
ECHO: >> %log%

:: initialise output file
TYPE nul > %output_path%%output_file_name% 

:: add output file header
ECHO  env.info^("[JTF-1] MISSION BUILD %DATE:~6,4%-%DATE:~3,2%-%DATE:~0,2%T%TIME%"^) >> %output_path%%output_file_name% 

:: compile input files into output file
for /F %%f in (%input_path%%input_file_name%) do (
    ECHO %input_path%%%f
    ECHO Adding file: %input_path%%%f >> %log%
    ECHO: >> %output_path%%output_file_name% 
    ::ECHO: >> %output_path%%output_file_name% 
    ECHO --------------------------------[%%f]-------------------------------- >> %output_path%%output_file_name%
    ECHO: >> %output_path%%output_file_name%
    ::ECHO: >> %output_path%%output_file_name%
    TYPE %input_path%%%f  >> %output_path%%output_file_name%
)
ECHO:
ECHO --------------------------------------------------------

:: Close log
ECHO. >> %log%
ECHO MISSION COMPILE FINISHED: %DATE:~6,4%-%DATE:~3,2%-%DATE:~0,2%T%TIME% >> %log%
ECHO Mission Compile finished.

PAUSE
EXIT /B %ERRORLEVEL%
