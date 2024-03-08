@echo off
cd C:\xampp
C:\Windows\System32\cmd.exe /C start "" /MIN call "C:\xampp\killprocess.bat" "httpd.exe"
if not exist apache\logs\httpd.pid GOTO exit
del C:\xampp\apache\logs\httpd.pid

:exit
