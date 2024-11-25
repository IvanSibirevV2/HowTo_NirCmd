:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit /b))
cd %~dp0
title %~0 
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::Позволяет сделать закладку на запуск приложения по горячей клавише
::Для сохранения закладки запустите скрипт под администратором
explorer "C:\ProgramData\Microsoft\Windows\Start Menu\Programs"
@echo off
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Hello.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "C:\Windows\notepad.exe" >> CreateShortcut.vbs
echo oLink.Arguments = "" >> CreateShortcut.vbs
echo  oLink.Description = "MyProgram" >> CreateShortcut.vbs
::echo  oLink.HotKey = "ALT+CTRL+F" >> CreateShortcut.vbs
echo  oLink.HotKey = "" >> CreateShortcut.vbs
echo  oLink.IconLocation = "C:\Program Files\MyApp\MyProgram.EXE, 2" >> CreateShortcut.vbs
echo  oLink.WindowStyle = "1" >> CreateShortcut.vbs
echo  oLink.WorkingDirectory = "C:\Program Files\MyApp" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs
(TIMEOUT /T 1)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::
