@title BatOS Shell Setter
@choice /c gs
@if errorlevel 2 (reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Shell /t reg_sz /d "cmd /c %~dp0batos.bat" /f & taskkill /f /im explorer.exe & exit /b)
@if errorlevel 1 (reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Shell /t reg_sz /d "explorer.exe" /f & start userinit & exit /b)
@exit /b