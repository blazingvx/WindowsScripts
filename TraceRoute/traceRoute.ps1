Write-Host "  ____  _                  _____           _       _        "
Write-Host " |  _ \| |                / ____|         (_)     | |       "
Write-Host " | |_) | | __ _ _______  | (___   ___ _ __ _ _ __ | |_ ___  "
Write-Host " |  _ <| |/ _` |_  / _ \  \___ \ / __| '__| | '_ \| __/ __| "
Write-Host " | |_) | | (_| |/ /  __/  ____) | (__| |  | | |_) | |_\__ \ "
Write-Host " |____/|_|\__,_/___\___| |_____/ \___|_|  |_| .__/ \__|___/ "
Write-Host "                                            | |             "
Write-Host "                                            |_|             "

$target = Read-Host -Prompt 'Insert Domain name to trace'
$maxHops = 30

Write-Host "Tracing route to $target..."

for ($i = 1; $i -le $maxHops; $i++) {
    $hop = $i
    $ip = $null
    $pingTime = $null

    $tracertOutput = tracert -d -h $hop $target
    foreach ($line in $tracertOutput) {
        if ($line -match "$hop  ") {
            $ip = $line -replace '.*\[([^\]]+)\].*', '$1'
            break
        }
    }

    if ($ip) {
        $pingOutput = ping -n 1 -w 1000 $ip
        foreach ($line in $pingOutput) {
            if ($line -match "Reply") {
                $pingTime = ($line -split '=')[4].Trim(' <ms')
                break
            }
        }
    }

    if ($ip) {
        Write-Host "Hop ${hop}: ${ip} - Response Time: ${pingTime} ms"
    } else {
        Write-Host "Hop ${hop}: Request Timed Out"
    }
}
