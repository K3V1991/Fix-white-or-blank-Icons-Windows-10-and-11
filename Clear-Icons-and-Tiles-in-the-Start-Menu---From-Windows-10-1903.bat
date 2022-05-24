@echo off
taskkill /f /im explorer.exe
taskkill /f /im StartMenuExperienceHost.exe
timeout /t 3 /NOBREAK > nul
del %localappdata%\Packages\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\TempState\* /q
timeout /t 1 /NOBREAK > nul
start explorer
@echo on