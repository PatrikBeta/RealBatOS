@echo off
chdir /d %SystemRoot%\System32
:updater
title BatOS Updater
echo Checking For Updates...
timeout /nobreak 7 > nul
if exist %~dp0outofdate* timeout /nobreak 6 | echo Updating BatOS...
if exist %~dp0outofdate* del /f /q %~dp0outofdate* & echo BatOS Updated
if exist %~dp0outofdate* pause
:osstartup
cls
title BatOS
echo Starting BatOS...
timeout /nobreak 2 > nul
:osmenu
cls
echo 1 = Exit BatOS
echo 2 = Browse For Files
echo 3 = Change Settings
echo 4 = Restart BatOS
echo 5 = Run a Program
echo 6 = Terminal
choice /c 123456 > nul
if errorlevel 6 (cls & title BatOS Terminal & cmd /d /c "chdir /d %userprofile% & cmd" & title BatOS & goto osmenu)
if errorlevel 5 (call %~dp0batosrunner.bat & goto osmenu)
if errorlevel 4 (start cmd /c %~dpnx0 & exit /b)
if errorlevel 3 (start gpedit.msc & goto osmenu)
if errorlevel 2 (start explorer file: & goto osmenu)
if errorlevel 1 (exit /b)
goto osmenu
