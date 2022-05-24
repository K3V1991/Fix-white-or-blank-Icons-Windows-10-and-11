<p align="center"><img src="https://i.ibb.co/ck5mPKW/Blank-Icons.png" width="200"></a>
<h1 align="center"><b>How to fix white or blank Icons on the Windows 10 and 11 Desktop or Taskbar</b></h1>

<p align="center">
<a href="" alt="Latest Release"><img src="https://img.shields.io/github/v/release/K3V1991/Fix-white-or-blank-Icons-on-Windows-10-and-11?color=blueviolet&label=Latest%20Release"></a>
<a href="" alt="Downloads"><img src="https://img.shields.io/github/downloads/K3V1991/Fix-white-or-blank-Icons-on-Windows-10-and-11/total?label=Downloads"></a>
<a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=HW8B98TVDLKWA" alt="Donate-PayPal"><img src="https://img.shields.io/badge/Donate-PayPal-blue"></a>
<a href="https://github.com/K3V1991/Donate-Crypto/blob/main/README.md" alt="Donate-Crypto"><img src="https://img.shields.io/badge/Donate-Crypto-yellow"></a>
</p>
<hr>
<br />

## Fix Icons quickly Windows 10 and 11
A single Command is enough to quickly repair the Icons on the Desktop
Press Windows Key + R and type:
```
ie4uinit -show
```
Confirm with OK and the Icons flicker briefly and the defective Icon should now be displayed correctly again.
<br />
<br />

## How-To create a new Bat File:
```
Right click on the Desktop -> New -> Text Document
Copy and save the Content from one of the List
Now right click on the new File and rename the File Extension form ".txt to .bat" or download one of my Releases
```
<br />

## Clear the Icon Cache
```
@echo off
taskkill /f /IM explorer.exe
cd /d %userprofile%\AppData\Local\Microsoft\Windows
del /f /s /q Explorer\iconcache*.*
start explorer.exe
```
<br />

## Clear the Thumbnail Cache
```
@echo off
taskkill /f /IM explorer.exe
cd /d %userprofile%\AppData\Local\Microsoft\Windows
del /f /s /q Explorer\thumbcache*.*
start explorer.exe
```
<br />

## Clear Icon and Thumbnail Cache
The Icon and Thumb Cache contains all Icons in different Sizes starting from 16 px up to 2560 px.
Since these Caches are always in use, you can't just right-click on iconcache.db or thumbcache.db to delete them.
```
@echo off
taskkill /f /IM explorer.exe
cd /d %userprofile%\AppData\Local\Microsoft\Windows
del /f /s /q Explorer\iconcache*.*
del /f /s /q Explorer\thumbcache*.*
start explorer.exe
```
Now simply copy this File into the user Folder C:\Users\Your Name and double-click there.
The Command will now be executed and the Cache cleared.
During execution it can happen that a File is not deleted with the Message "Access denied".
These Files then end up in the ThumbCacheToDelete Folder. After a Restart, these Files are also deleted.
<br />
<br />

## Clear everything from the Explorer Folder
```
@echo off
taskkill /f /IM explorer.exe
cd /d %userprofile%\AppData\Local\Microsoft\Windows
del /f /s /q Explorer\*.*
start explorer.exe
```
Now simply copy this File into the User Folder C:\Users\Your Name and double-click there.
The Command will now be executed and the Cache cleared.
During execution it can happen that a file is not deleted with the message "Access denied".
These files then end up in the ThumbCacheToDelete folder.
After a restart, these files are also deleted.

If there is no change yet, then:
```
Right click on the Taskbar and start the Task Manager
Select explorer.exe there and press "Restart" at the bottom right.
```
If that doesn't help either, then:
```
Windows Key + R
Enter shutdown -g -t 0 and restart the Computer.
```
Now the Icon Cache should have rebuilt itself and display everything.
<br />
<br />

## Clear Icons in the Taskbar
Important: First remove the "broken" Shortcut from the Taskbar.
Enter Command Prompt in the search and right-click to start as Administrator.
Now enter/copy these Commands one after the other.
(Don't be alarmed if the wallpaper disappears for a short Time)
```
taskkill /f /im explorer.exe
taskkill /f /im shellexperiencehost.exe
del %localappdata%\Packages\Microsoft.Windows.ShellExperienceHost_cw5n1h2txyewy\TempState\* /q
start explorer
```
The Wallpaper and the Icons are now visible again and the Icons in the Taskbar build up again. You should now be able to re-pin the new Shortcut and the Icon will be visible again.
<br />
<br />

## Clear all Icons in the Taskbar - reset
If that doesn't help either, it definitely helps if you delete the Icon Entries in the Taskbar and start over from Scratch.
A Batch File is sufficient for this.
```
DEL /F /S /Q /A "%AppData%\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\*"
REG DELETE HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband /F
taskkill /f /im explorer.exe
start explorer.exe
```
Run the File with a double click.
The Desktop goes dark for a Moment and the Taskbar now rebuilds itself.
Now you can pin your Icons to the Taskbar again as you are used to.
(This does not affect the Start Menu Icon, Search, Widgets and the Icon for the virtual Desktops)
<br />
<br />

## Clear Icons and Tiles in the Start Menu
```
@echo off
taskkill /f /im explorer.exe
taskkill /f /im shellexperiencehost.exe
timeout /t 3 /NOBREAK > nul
del %localappdata%\Packages\Microsoft.Windows.ShellExperienceHost_cw5n1h2txyewy\TempState\* /q
timeout /t 1 /NOBREAK > nul
start explorer
@echo on
```
<br />

## Clear Icons and Tiles in the Start Menu - From Windows 10 1903
```
@echo off
taskkill /f /im explorer.exe
taskkill /f /im StartMenuExperienceHost.exe
timeout /t 3 /NOBREAK > nul
del %localappdata%\Packages\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\TempState\* /q
timeout /t 1 /NOBREAK > nul
start explorer
@echo on
```
Now double click on this File. When asked, confirm with Y for yes and have it done.
Among other things, explorer.exe is terminated and the three Files mentioned above are deleted.
After restarting explorer.exe, a new Cache is created.
<br />
<br />

## For Explanation:
```
/f Also deletes read-only Files
/s Deletes all Files, including Subdirectories
/q There is no Query about the Wildcards
```