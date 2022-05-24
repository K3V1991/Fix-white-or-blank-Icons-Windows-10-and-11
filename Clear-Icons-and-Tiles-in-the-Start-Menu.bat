@echo off
taskkill /f /im explorer.exe
taskkill /f /im shellexperiencehost.exe
timeout /t 3 /NOBREAK > nul
del %localappdata%\Packages\Microsoft.Windows.ShellExperienceHost_cw5n1h2txyewy\TempState\* /q
timeout /t 1 /NOBREAK > nul
start explorer
@echo on
