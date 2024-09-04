:setup
@echo off
title Cool Program By Leo
set /p name=<name.txt
set /p weather=<weather.txt
:mainmenu
cls
echo CMD Helper
echo Welcome, %NAME%
echo 1. System
echo 2. Cool Commands
echo 3. Settings (Only Kinda Works)
set /p ask1=Enter Choice: 
IF %ASK1%==1 (
    goto menu1
    )
IF %ASK1%==2 (
    goto menu2
    )
IF %ASK1%==3 (
    goto menu3
    )
:menu1
cls
echo 1. System Info
echo 2. Ip Config
set /p ask2=Enter Choice: 
@echo off
cls
IF %ASK2%==1 (
    powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Working...', 'Getting System Info', [System.Windows.Forms.ToolTipIcon]::None)}"
    systeminfo > output.txt
    systeminfo
    pause
    goto mainmenu
    )
IF %ASK2%==2 (
    powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Working...', 'Getting Ip Configs', [System.Windows.Forms.ToolTipIcon]::None)}"
    ipconfig > output.txt
    ipconfig
    pause
    goto mainmenu
    )
:menu2
cls
echo 1. Weather
echo 2. Telehack (Needs Telnet)
set /p ask3=Enter Choice: 
@echo off
cls
IF %ASK3%==1 (
    powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Working...', 'Getting Weather', [System.Windows.Forms.ToolTipIcon]::None)}"
    curl wttr.in/%WEATHER% > output.txt
    curl wttr.in/%WEATHER%
    pause
    goto mainmenu
    )
IF %ASK3%==2 (
    powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Working...', 'Connecting to Telehack', [System.Windows.Forms.ToolTipIcon]::None)}"
    telnet telehack.com
    pause
    goto mainmenu
    )
:menu3
cls
echo 1. Change Color (Green)
echo 2. Change Title
set /p ask3=Enter Choice: 
@echo off
cls
IF %ASK3%==1 (
    color 0A
    goto mainmenu
    )
IF %ASK3%==2 (
    set /p title=Enter Title: 
    title %TITLE%
    goto mainmenu
    )
