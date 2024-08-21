@set /p "run=Program>"
@powershell -command start-process -filepath %run%
@set run=
@exit /b