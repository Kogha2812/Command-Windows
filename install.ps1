Write-Host "UniGetUI..." -ForegroundColor Cyan
winget install --id Devolutions.UniGetUI --exact --source winget --accept-source-agreements --accept-package-agreements

Write-Host "Folder..." -ForegroundColor Cyan
$zipPath = "$env:TEMP\Github.zip"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Kogha2812/Command-Windows/main/Github.zip" -OutFile $zipPath

Write-Host "Extraction..." -ForegroundColor Cyan
Expand-Archive -Path $zipPath -DestinationPath "." -Force
Remove-Item -Path $zipPath -Force

Write-Host "Done!" -ForegroundColor Green
pause
