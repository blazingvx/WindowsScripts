@echo off
setlocal enabledelayedexpansion

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


set /p target=  "Insert Domain name to trace: "
rem set target=example.com
set maxHops=30

echo Tracing route to %target%...

for /l %%i in (1, 1, %maxHops%) do (
    set "hop=%%i"
    set "ip="
    set "pingTime="

    for /f "tokens=2 delims=[]" %%a in ('tracert -d -h !hop! !target! ^| findstr /i "!hop!  "') do (
        set "ip=%%a"
        for /f "tokens=5 delims==< " %%b in ('ping -n 1 -w 1000 !ip! ^| findstr /i "Reply"') do (
            set "pingTime=%%b"
            goto :display
        )
    )

    :display
    if defined ip (
        echo Hop !hop!: !ip! - Response Time: !pingTime!ms
    ) else (
        echo Hop !hop!: Request Timed Out
    )
)
