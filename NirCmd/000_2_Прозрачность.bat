:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit /b))
cd %~dp0
title %~0
:::::::::::::::::::::::::::::::::::::::::::::
set Title_Id=%date:~-4%%date:~3,2%%date:~0,2%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%_%username%
set Title_Id=%Title_Id: =_%
title %Title_Id%
nircmd.exe win trans ititle %Title_Id% 192

for /L %%i in (1,1,100) do (
ECHO  stop: 0x000000%%i ^(0XFD3094C2,0x00000001,0XFBFE7617,0x00000000^)
nircmd.exe win hide class progman
 nircmd wait 100
nircmd.exe win show class progman
 nircmd wait 100
)
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::