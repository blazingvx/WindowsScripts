@echo off

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
