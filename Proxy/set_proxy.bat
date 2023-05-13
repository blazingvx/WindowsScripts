@echo off

echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo "  ____  _                  _____           _       _        "
echo " |  _ \| |                / ____|         (_)     | |       "
echo " | |_) | | __ _ _______  | (___   ___ _ __ _ _ __ | |_ ___  "
echo " |  _ <| |/ _` |_  / _ \  \___ \ / __| '__| | '_ \| __/ __| "
echo " | |_) | | (_| |/ /  __/  ____) | (__| |  | | |_) | |_\__ \ "
echo " |____/|_|\__,_/___\___| |_____/ \___|_|  |_| .__/ \__|___/ "
echo "                                            | |             "
echo "                                            |_|             "
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set proxyAddress=proxy.example.com
set proxyPort=8080

REM Set proxy settings
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t REG_SZ /d "%proxyAddress%:%proxyPort%" /f

REM Set bypass list (optional)
set bypassList=*.example.com;<local>
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyOverride /t REG_SZ /d "%bypassList%" /f

REM Refresh Internet Explorer settings
reg delete "HKCU\Software\Microsoft\Internet Explorer" /v AutoConfigURL /f

REM Restart Internet Explorer (optional)
taskkill /f /im iexplore.exe
start "" iexplore.exe

echo Proxy settings have been updated.