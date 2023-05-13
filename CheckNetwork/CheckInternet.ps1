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
