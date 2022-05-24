@echo off
taskkill /f /IM explorer.exe
 CD /d %userprofile%\AppData\Local\Microsoft\Windows
 del /f /s /q Explorer\iconcache*.*
 del /f /s /q Explorer\thumbcache*.*
 Start explorer.exe