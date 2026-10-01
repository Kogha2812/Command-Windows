@echo off
echo UniGetUI...
winget install --id MartiCliment.UniGetUI --exact --source winget --accept-source-agreements --accept-package-agreements

echo Folder...
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/votre-nom/votre-depot/main/Github.zip' -OutFile 'Github.zip'"

echo Extraction...
powershell -Command "Expand-Archive -Path 'Github.zip' -DestinationPath '.' -Force"
del Github.zip

echo Done
pause