@echo off
set "SITE=%~dp0index.html"

set "CHROME=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
if not exist "%CHROME%" set "CHROME=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
if not exist "%CHROME%" set "CHROME=%LocalAppData%\Google\Chrome\Application\chrome.exe"

if exist "%CHROME%" (
  start "" "%CHROME%" "%SITE%"
) else (
  echo Google Chrome nao foi encontrado neste computador.
  echo Abra manualmente o arquivo:
  echo %SITE%
  pause
)
