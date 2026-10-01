@echo off
echo UniGetUI...
winget install --id MartiCliment.UniGetUI --exact --source winget --accept-source-agreements --accept-package-agreements || winget install --id SomePythonThings.UniGetUI --exact --source winget --accept-source-agreements --accept-package-agreements

echo Folder...
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Kogha2812/Command-Windows/main/Github.zip' -OutFile '%TEMP%\Github.zip'"

echo Extraction...
powershell -Command "Expand-Archive -Path '$env:TEMP\Github.zip' -DestinationPath '.' -Force"
del "%TEMP%\Github.zip"

echo Done
paus