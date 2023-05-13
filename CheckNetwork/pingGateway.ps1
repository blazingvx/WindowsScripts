Write-Host "  ____  _                  _____           _       _        "
Write-Host " |  _ \| |                / ____|         (_)     | |       "
Write-Host " | |_) | | __ _ _______  | (___   ___ _ __ _ _ __ | |_ ___  "
Write-Host " |  _ <| |/ _` |_  / _ \  \___ \ / __| '__| | '_ \| __/ __| "
Write-Host " | |_) | | (_| |/ /  __/  ____) | (__| |  | | |_) | |_\__ \ "
Write-Host " |____/|_|\__,_/___\___| |_____/ \___|_|  |_| .__/ \__|___/ "
Write-Host "                                            | |             "
Write-Host "                                            |_|             "

$gateway = (Get-NetIPConfiguration | Where-Object { $_.IPv4DefaultGateway }).IPv4DefaultGateway.NextHop

function PingGateway {
    Write-Host "Pinging the default gateway ($gateway)..."
    while ($true) {
        try {
            Test-Connection -ComputerName $gateway -Count 1 -Quiet
        } catch {
            Write-Host "An error occurred while pinging the default gateway ($gateway)."
        }

        Start-Sleep -Seconds 1
    }
}

if ($gateway) {
    Write-Host "Default gateway: $gateway"
    PingGateway
} else {
    Write-Host "Default gateway not found."
}


