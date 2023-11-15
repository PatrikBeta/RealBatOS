echo off
cls
:updater
title BatOS Updater
echo Checking For Updates...
timeout /nobreak 7 > nul
if exist c:\windows\batsystem\outofdate.date timeout /nobreak 6 | echo Updating BatOS... & echo Updated
if exist c:\windows\batsystem\outofdate.date pause
if exist c:\windows\batsystem\outofdate.date cmdx.exe /c del /f /q c:\windows\batsystem\outofdate.date
:os
cls
title BatOS
echo Starting BatOS...
timeout /nobreak 5 > nul & cls
:osmenu
cls
echo 1 = Exit
echo 2 = Browse For Files
echo 3 = Launch CMD
echo 4 = Change Settings
c:\windows\system32\choice.exe /c 4321 > nul
if errorlevel 4 (start c:\windows\system32\gpedit.msc)
if errorlevel 3 (start c:\windows\system32\cmd.exe)
if errorlevel 2 (start c:\windows\filemanager.bat)
if errorlevel 1 (exit)
goto osmenu