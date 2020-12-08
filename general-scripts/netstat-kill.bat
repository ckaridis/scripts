@echo off
:netStat
set text=
echo === NetStat ===
set /p text=Text to find in NetStat command (type "a" to list all processes): 
if '%text%'=='' goto taskKill
if '%text%'=='a' goto netStatAll
call :netStatFind "%text%"
goto netStat

:netStatFind
netstat -abno | find "%~1"
goto netStat

:netStatAll
netstat -abno
goto netStat


:taskKill
echo === TaskKill ===
set text=
set /p text=Enter the PID of the task to kill (leave blank to go back or "x" to exit): 
if '%text%'=='' goto netStat
if '%text%'=='x' goto end
taskkill /F /PID "%text%"
goto taskKill

:end
exit /B