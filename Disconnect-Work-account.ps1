# Stop Microsoft Teams process
Stop-Process -Name ms-teams -Force -ErrorAction SilentlyContinue

# Disconnect Work account
Get-ItemProperty -Path "C:\Users\*\AppData\Local\Packages" | ForEach-Object { Remove-Item -Path "$_\Microsoft.AAD.BrokerPlugin*" -Recurse -Force | Out-Null }

# Display warnings
Write-Output "Windows Work account has disconnected. Please check Windows Work account Settings."

# Pause execution for 15 seconds
Start-Sleep -Seconds 15