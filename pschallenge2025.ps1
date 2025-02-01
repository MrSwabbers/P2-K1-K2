Clear-Content -Path $logFilePath
[string[]]$items = @()
$items = Get-Content "whitelist.txt"
Write-Host $items
$currentDateTime = Get-Date
$serverName = $env:COMPUTERNAME
$logEntry = "$currentDateTime - Servernaam: $serverName"
$logFilePath = "$PSScriptRoot\logbestand.txt"
Add-Content -Path $logFilePath -Value $logEntry
