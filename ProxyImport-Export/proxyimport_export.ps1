# Proxy Configuration Export/Import Script

$exportFile = "config_proxy.txt"
$importFile = "config_proxy.txt"

# Export Proxy Configuration
function ExportProxyConfiguration {
    Write-Host "Exporting proxy configuration..."
    reg export "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" $exportFile /y
    Write-Host "Proxy configuration exported to $exportFile."
}

# Import Proxy Configuration
function ImportProxyConfiguration {
    Write-Host "Importing proxy configuration..."
    reg import $importFile
    Write-Host "Proxy configuration imported from $importFile."
}

# Main Menu
do {
    Clear-Host

    Write-Host """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    Write-Host "  ____  _                  _____           _       _        "
    Write-Host " |  _ \| |                / ____|         (_)     | |       "
    Write-Host " | |_) | | __ _ _______  | (___   ___ _ __ _ _ __ | |_ ___  "
    Write-Host " |  _ <| |/ _` |_  / _ \  \___ \ / __| '__| | '_ \| __/ __| "
    Write-Host " | |_) | | (_| |/ /  __/  ____) | (__| |  | | |_) | |_\__ \ "
    Write-Host " |____/|_|\__,_/___\___| |_____/ \___|_|  |_| .__/ \__|___/ "
    Write-Host "                                            | |             "
    Write-Host "                                            |_|             "
    Write-Host """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    Write-Host "Proxy Configuration Export/Import Script"
    Write-Host "----------------------------------------"
    Write-Host "1. Export Proxy Configuration"
    Write-Host "2. Import Proxy Configuration"
    Write-Host "3. Exit"
    Write-Host

    $choice = Read-Host "Enter your choice (1-3): "

    # Perform selected action
    switch ($choice) {
        "1" { ExportProxyConfiguration }
        "2" { ImportProxyConfiguration }
        "3" { exit }
        default { Write-Host "Invalid choice. Please try again." }
    }

    Write-Host
    Read-Host "Press Enter to continue..."
}
while ($true)

