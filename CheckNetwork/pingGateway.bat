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


:FindGateway
for /f "tokens=3" %%G in ('route print 0.0.0.0^|findstr "\<0.0.0.0\>"') do (
    set "gateway=%%G"
)
echo Default gateway: %gateway%
goto PingGateway

:PingGateway
echo Pinging the default gateway (%gateway%)...
ping %gateway% -t
goto :EOF
