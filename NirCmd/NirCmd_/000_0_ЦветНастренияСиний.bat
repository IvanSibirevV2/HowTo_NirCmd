:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit /b))
cd %~dp0
title %~0 
:::::::::::::::::::::::::::::::::::::::::::::
start https://avatars.dzeninfra.ru/get-zen_doc/248942/pub_5b57219e6c14af00a9f843b7_5b588c3d9e4a5000aaabe6a2/scale_1200
ECHO :::::::::::::::::::::::::::::::::::::::::::::
COLOR 3F
ECHO A problem has been detected and windows has been shut down to prevent damage to your computer.
ECHO The problem seems to be caused by the following file: ^|damncpu.fkn because_vista_hates_you
ECHO This probably is not your first time seeing this stupid damn screen but that's ok, i will just restart the computer and annoy you a little bit. Buy a new computer if you don't want this to happen again but follow these steps anyway:
ECHO Check to make sure any new hardware or software is properly installed, but we both know your are not stupid and can press "Next" "Next" "Agree" "Finish" without any problems.
ECHO if problems continue, which seems likely, disable or remove any newly inatalled hardware or software. Or what i suggest is that you go out and buy windows 7 unless you are on an Advent laptop., well just throw it away because you have no chance in the land of computers with that.
ECHO.
ECHO Technical information:
ECHO.
set Title_Id=%date:~-4%%date:~3,2%%date:~0,2%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%_%username%
set Title_Id=%Title_Id: =_%
title %Title_Id%
for /L %%i in (1,1,100) do (
 ECHO  stop: 0x000000%%i ^(0XFD3094C2,0x00000001,0XFBFE7617,0x00000000^)
 nircmd win min title %Title_Id%
 nircmd wait 100
 nircmd win max title %Title_Id%
 nircmd wait 100
)
ECHO.
ECHO damncpu.fkn - Address fbfe7617 base at fbfe5000, Datestamp 3d6dd67c
:::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::