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


:CheckConnection
ping -n 1 google.com >nul
if %errorlevel%==0 (
    echo Network connection is active.
) else (
    echo Network connection is down.
)
timeout /t 5 >nul
goto CheckConnection
