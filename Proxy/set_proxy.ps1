Write-Host "  ____  _                  _____           _       _        "
Write-Host " |  _ \| |                / ____|         (_)     | |       "
Write-Host " | |_) | | __ _ _______  | (___   ___ _ __ _ _ __ | |_ ___  "
Write-Host " |  _ <| |/ _` |_  / _ \  \___ \ / __| '__| | '_ \| __/ __| "
Write-Host " | |_) | | (_| |/ /  __/  ____) | (__| |  | | |_) | |_\__ \ "
Write-Host " |____/|_|\__,_/___\___| |_____/ \___|_|  |_| .__/ \__|___/ "
Write-Host "                                            | |             "
Write-Host "                                            |_|             "

# Set proxy settings
$proxyAddress = "proxy.example.com"
$proxyPort = 8080

# Set proxy configuration
$proxyConfig = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings"
Set-ItemProperty -Path $proxyConfig -Name ProxyEnable -Value 1
Set-ItemProperty -Path $proxyConfig -Name ProxyServer -Value "$proxyAddress:$proxyPort"

# Set bypass list (optional)
$bypassList = "*.example.com;<local>"
Set-ItemProperty -Path $proxyConfig -Name ProxyOverride -Value $bypassList

# Refresh Internet Explorer settings
$iePath = "HKCU:\Software\Microsoft\Internet Explorer"
Set-ItemProperty -Path $iePath -Name AutoConfigURL -Value ""

# Restart Internet Explorer (optional)
Stop-Process -Name iexplore -Force
Start-Process iexplore

# Display confirmation message
Write-Host "Proxy settings have been updated."