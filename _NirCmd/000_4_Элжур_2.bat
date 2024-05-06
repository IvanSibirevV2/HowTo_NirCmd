:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit /b))
cd %~dp0
title %~0
setlocal EnableDelayedExpansion
:::::::::::::::::::::::::::::::::::::::::::::
::Config
::https://learn.microsoft.com/ru-ru/windows/win32/inputdev/virtual-key-codes?redirectedfrom=MSDN
set _MousBtnLeft=0x01
set _MousBtnRight=0x02
set _MousBtnMiddle=0x04
set _Backspace=0x08
set _TAB=0x09
set _ENTER=0x0D
(set _SHIFT=0x10)&&(set _+SHIFT=0d10)&&(set _-SHIFT=0u10)
set _CTRL=0x11
(set _ALT=0x12)&&(set _+ALT=0d12)&&(set _-ALT=0u12)
set _PAUSE=0x13
set _CAPSLOCK=0x14
set _ESCAPE=0x1B
set _SPACE=0x20
set _PAGEUP=0x21
set _PAGEDOWN=0x22
set _END=0x23
set _HOME=0x24
set _arrow.LEFT=0x25
set _arrow.UP=0x26
set _arrow.RIGHT=0x27
set _arrow.DOWN=0x28
set _INSERT=0x2D
set _DELETE=0x2E
set _0=0x30
set _1=0x31
set _2=0x32
set _3=0x33
set _4=0x34
set _5=0x35
set _6=0x36
set _7=0x37
set _8=0x38
set _9=0x39
(set _A=0x41)&&(set _+A=0d41)&&(set _-A=0u41)
(set _B=0x42)&&(set _+B=0d42)&&(set _-B=0u42)
(set _C=0x43)&&(set _+C=0d43)&&(set _-C=0u43)
(set _D=0x44)&&(set _+D=0d44)&&(set _-D=0u44)
(set _E=0x45)&&(set _+E=0d45)&&(set _-E=0u45)
(set _F=0x46)&&(set _+F=0d46)&&(set _-F=0u46)
(set _G=0x47)&&(set _+G=0d47)&&(set _-G=0u47)
(set _H=0x48)&&(set _+H=0d48)&&(set _-H=0u48)
(set _I=0x49)&&(set _+I=0d49)&&(set _-I=0u49)
(set _J=0x4A)&&(set _+J=0d4A)&&(set _-J=0u4A)
(set _K=0x4B)&&(set _+K=0d4B)&&(set _-K=0u4B)
(set _L=0x4C)&&(set _+L=0d4C)&&(set _-L=0u4C)
(set _M=0x4D)&&(set _+M=0d4D)&&(set _-M=0u4D)
(set _N=0x4E)&&(set _+N=0d4E)&&(set _-N=0u4E)
(set _O=0x4F)&&(set _+O=0d4F)&&(set _-O=0u4F)
(set _P=0x50)&&(set _+P=0d50)&&(set _-P=0u50)
(set _Q=0x51)&&(set _+Q=0d51)&&(set _-Q=0u51)
(set _R=0x52)&&(set _+R=0d52)&&(set _-R=0u52)
(set _S=0x53)&&(set _+S=0d53)&&(set _-S=0u53)
(set _T=0x54)&&(set _+T=0d54)&&(set _-T=0u54)
(set _T=0x54)&&(set _+T=0d54)&&(set _-T=0u54)
(set _U=0x55)&&(set _+U=0d55)&&(set _-U=0u55)
(set _V=0x56)&&(set _+V=0d56)&&(set _-V=0u56)
(set _W=0x57)&&(set _+W=0d57)&&(set _-W=0u57)
set _X=0x58
set _Y=0x59
set _Z=0x5A
(set _WIN=0x5B)&&(set _+WIN=0d5B)&&(set _-WIN=0u5B)
set _LWIN=0x5B
set _RWIN=0x5C
set _KeyApplication=0x5D
set _NumPad0=0x60
set _NumPad1=0x61
set _NumPad2=0x62
set _NumPad3=0x63
set _NumPad4=0x64
set _NumPad5=0x65
set _NumPad6=0x66
set _NumPad7=0x67
set _NumPad8=0x68
set _NumPad9=0x69
set _NumPad*=0x6A
set _NumPad+=0x6B
set _NumPad-=0x6D
set _NumPad.=0x6E
set _NumPad/=0x6F
set _F1=0x70
set _F2=0x71
set _F3=0x72
set _F4=0x73
set _F5=0x74
set _F6=0x75
set _F7=0x76
set _F8=0x77
set _F9=0x78
set _F10=0x79
set _F11=0x7A
set _F12=0x7B
set _NumLock=0x90
set _ScrollLock=0x91
set _PrintScreen=0x9A
set _;=0xBA
::=
set _equ=0xBB
set _,=0xBC
set _-=0xBD
set _.=0xBE
set _/=0xBF
set _~=0xC0
set _[=0xDB
set _\=0xDC
set _]=0xDD
set _'=0xDE
:::::::::::::::::::::::::::::::::::::::::::::
set Title_Id=%date:~-4%%date:~3,2%%date:~0,2%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%_%username%
set Title_Id=%Title_Id: =_%
title %Title_Id%
nircmd.exe win trans ititle %Title_Id% 192
::::::::::::::::::::::::::::::::::::::
call :MenuEngine :MP_Exit :MP_kip.eljur.ru
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:MenuEngine
setlocal
 set _id=0
 :MenuEngine_begin
  set _counter=0
  set _target=
  ::Вывод на экран
  for %%i in (%*) do ((call %%i)&(set /a _counter=!_counter!+1))
  choice /c ews  
  if %ErrorLevel% EQU 2 ((echo w)&(set /a _id= %_id%-1)&(set %ErrorLevel%=0))
  if %ErrorLevel% EQU 3 ((echo s)&(set /a _id= %_id%+1)&(set %ErrorLevel%=0))
  if %_id% LSS 0 set /a _id=%_counter%-1
  if %_id% GEQ %_counter% set _id=0
  set _counter=%_id% 
  if %ErrorLevel% EQU 1 (call %_target% do)
 goto :MenuEngine_begin
endlocal
exit /b

:MP_Exit
if "%1" EQU "" (if "%_id%" EQU "%_counter%" ((<nul set /p strTemp=*)&(set _target=%0))
 echo %_counter%. Exit
)else (if %_id% EQU %_counter% call :Script_09_49__20_12_2023)
exit /b
:Script_09_49__20_12_2023
TIMEOUT /T 1
Exit
exit /b
:MP_kip.eljur.ru
if "%1" EQU "" (if "%_id%" EQU "%_counter%" ((<nul set /p strTemp=*)&(set _target=%0))
 echo %_counter%. kip.eljur.ru
)else (if %_id% EQU %_counter% call :Script_09_53__20_12_2023)
exit /b
:Script_09_53__20_12_2023
 nircmd win min title %Title_Id%
 nircmd wait 100
 START https://kip.eljur.ru/
 TIMEOUT /T 2
 nircmd win max title %Title_Id%
 nircmd wait 100
exit /b
:Mark2
if "%1" EQU "" (if "%_id%" EQU "%_counter%" ((<nul set /p strTemp=*)&(set _target=%0))
 echo %_counter%. kip.eljur.ru
)else (if %_id% EQU %_counter% call :Script_09_53__20_12_2023)
exit /b
:Script_09_53__20_12_2023
 nircmd win min title %Title_Id%
 nircmd wait 100
 START https://kip.eljur.ru/
 TIMEOUT /T 2
 nircmd win max title %Title_Id%
 nircmd wait 100
exit /b


