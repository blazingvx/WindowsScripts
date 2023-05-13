@echo off

:CheckConnection
ping -n 1 google.com >nul
if %errorlevel%==0 (
    echo Network connection is active.
) else (
    echo Network connection is down.
)
timeout /t 5 >nul
goto CheckConnection
