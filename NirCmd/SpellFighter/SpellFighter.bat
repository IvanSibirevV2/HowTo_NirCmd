:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit /b))
cd %~dp0
title %~0 
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::Позволяет сделать закладку на запуск приложения по горячей клавише
::Для сохранения закладки запустите скрипт под администратором
@echo off
set SpellName=HelloWorld.lnk
set SpellRing=C:\ProgramData\Microsoft\Windows\Start Menu\Programs
set SpellStone=C:\Windows\notepad.exe
set SpellKey=ALT+CTRL+F
set SpellKey=q
(
echo Set oWS = WScript.CreateObject("WScript.Shell"^)
echo sLinkFile = "%SpellRing%\%SpellName%"
echo Set oLink = oWS.CreateShortcut(sLinkFile^)
echo oLink.TargetPath = "%SpellStone%"
echo oLink.Arguments = ""
echo oLink.Description = "MyProgram"
::echo oLink.HotKey="ALT+CTRL+F"
echo oLink.HotKey="%SpellKey%"
::echo oLink.HotKey="F1"
::echo oLink.IconLocation = "C:\Program Files\MyApp\MyProgram.EXE, 2"
echo oLink.WindowStyle = "1"
echo oLink.WorkingDirectory = "C:\Program Files\MyApp"
echo oLink.Save
) > CreateShortcut.vbs
type CreateShortcut.vbs
powershell -Command "Start-Process cscript %cd%\CreateShortcut.vbs -Verb RunAs "
::explorer "C:\ProgramData\Microsoft\Windows\Start Menu\Programs"
pause
del CreateShortcut.vbs
del "%SpellRing%\%SpellName%"
(TIMEOUT /T 10)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::
