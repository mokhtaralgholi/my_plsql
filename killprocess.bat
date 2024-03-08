@echo off 
SetLocal EnableDelayedExpansion
set "PID_LIST="

for /f "tokens=2" %%V in ('C:\Windows\System32\tasklist.exe ^| C:\Windows\System32\findstr.exe /i "%1" 2^>NUL') do @set "PID_LIST=!PID_LIST! /PID %%V"

if defined PID_LIST (
  C:\Windows\System32\tasklist.exe /F %PID_LIST%
) else (
  echo Process %1 not running
)

SetLocal DisableDelayedExpansion
exit
