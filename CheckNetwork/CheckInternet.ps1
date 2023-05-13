Write-Host "  ____  _                  _____           _       _        "
Write-Host " |  _ \| |                / ____|         (_)     | |       "
Write-Host " | |_) | | __ _ _______  | (___   ___ _ __ _ _ __ | |_ ___  "
Write-Host " |  _ <| |/ _` |_  / _ \  \___ \ / __| '__| | '_ \| __/ __| "
Write-Host " | |_) | | (_| |/ /  __/  ____) | (__| |  | | |_) | |_\__ \ "
Write-Host " |____/|_|\__,_/___\___| |_____/ \___|_|  |_| .__/ \__|___/ "
Write-Host "                                            | |             "
Write-Host "                                            |_|             "

while ($true) {
    try {
        $pingResult = Test-Connection -ComputerName google.com -Count 1 -Quiet
        if ($pingResult) {
            Write-Host "Network connection is active."
        } else {
            Write-Host "Network connection is down."
        }
    } catch {
        Write-Host "An error occurred while checking network connection."
    }

    Start-Sleep -Seconds 5
}
