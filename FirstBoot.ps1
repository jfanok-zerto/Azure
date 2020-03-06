$url = "https://bits.zerto.dev/azure/latest.exe"
$output = "$PSScriptRoot\Zerto ZCA Azure Installer.exe"
$start_time = Get-Date

Invoke-WebRequest -Uri $url -OutFile $output
Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
Remove-Item -Path "C:\Temp\FirstBoot.ps1" -Force
