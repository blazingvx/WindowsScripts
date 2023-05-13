@echo off

REM Proxy Configuration Export/Import Script

set "exportFile=config_proxy.txt"
set "importFile=config_proxy.txt"

REM Main Menu
:MainMenu
echo.
echo Proxy Configuration Export/Import Script
echo ----------------------------------------
echo 1. Export Proxy Configuration
echo 2. Import Proxy Configuration
echo 3. Exit
echo.
set /p choice=Enter your choice (1-3): 

REM Perform selected action
if "%choice%"=="1" goto Export
if "%choice%"=="2" goto Import
if "%choice%"=="3" goto :EOF

REM Invalid choice
echo Invalid choice. Please try again.
goto MainMenu

REM Export Proxy Configuration
:Export
echo Exporting proxy configuration...
reg export "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" "%exportFile%" /y
echo Proxy configuration exported to %exportFile%.
goto :EOF

REM Import Proxy Configuration
:Import
echo Importing proxy configuration...
reg import "%importFile%"
echo Proxy configuration imported from %importFile%.
goto :EOF
