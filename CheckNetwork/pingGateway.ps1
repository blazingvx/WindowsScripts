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


