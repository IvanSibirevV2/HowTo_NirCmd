:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit /b))
cd %~dp0
title %~0 
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::Догружаем компонент если его нет.
IF NOT EXIST nircmd.exe (
  echo Требуемый Компонент не найден. Начинаю дозагрузку...
  echo Буду скачивать nircmd.exe
  del nircmd.exe
  rmdir HowTo_NirCmd /s /q
  git clone --depth 1 https://github.com/IvanSibirevV2/HowTo_NirCmd.git
  copy HowTo_NirCmd\NirCmd\nircmd.exe nircmd.exe
  rmdir HowTo_NirCmd /s /q
)
:::::::::::::::::::::::::::::::::::::::::::::
::Config
::https://learn.microsoft.com/ru-ru/windows/win32/inputdev/virtual-key-codes?redirectedfrom=MSDN
(set _MousBtnLeft=0x01)&(set _MousBtnRight=0x02)&(set _MousBtnMiddle=0x04)&(set _Backspace=0x08)&(set _TAB=0x09)&(set _ENTER=0x0D)&(set _SHIFT=0x10)&(set _CTRL=0x11)&(set _ALT=0x12)&(set _PAUSE=0x13)&(set _CAPSLOCK=0x14)&(set _ESCAPE=0x1B)&(set _SPACE=0x20)&(set _PAGEUP=0x21)&(set _PAGEDOWN=0x22)&(set _END=0x23)&(set _HOME=0x24)&(set _arrow.LEFT=0x25)&(set _arrow.UP=0x26)&(set _arrow.RIGHT=0x27)&(set _arrow.DOWN=0x28)&(set _INSERT=0x2D)&(set _DELETE=0x2E)&(set _0=0x30)&(set _1=0x31)&(set _2=0x32)&(set _3=0x33)&(set _4=0x34)&(set _5=0x35)&(set _6=0x36)&(set _7=0x37)&(set _8=0x38)&(set _9=0x39)&(set _A=0x41)&(set _B=0x42)&(set _C=0x43)&(set _D=0x44)&(set _E=0x45)&(set _F=0x46)&(set _G=0x47)&(set _H=0x48)&(set _I=0x49)&(set _J=0x4A)&(set _K=0x4B)&(set _L=0x4C)&(set _M=0x4D)&(set _N=0x4E)&(set _O=0x4F)&(set _P=0x50)&(set _Q=0x51)&(set _R=0x52)&(set _S=0x53)&(set _T=0x54)&(set _U=0x55)&(set _V=0x56)&(set _W=0x57)&(set _X=0x58)&(set _Y=0x59)&(set _Z=0x5A)&(set _WIN=0x5B)&(set _LWIN=0x5B)&(set _RWIN=0x5C)&(set _KeyApplication=0x5D)&(set _NumPad0=0x60)&(set _NumPad1=0x61)&(set _NumPad2=0x62)&(set _NumPad3=0x63)&(set _NumPad4=0x64)&(set _NumPad5=0x65)&(set _NumPad6=0x66)&(set _NumPad7=0x67)&(set _NumPad8=0x68)&(set _NumPad9=0x69)&(set _NumPad*=0x6A)&(set _NumPad+=0x6B)&(set _NumPad-=0x6D)&(set _NumPad.=0x6E)&(set _NumPad/=0x6F)&(set _F1=0x70)&(set _F2=0x71)&(set _F3=0x72)&(set _F4=0x73)&(set _F5=0x74)&(set _F6=0x75)&(set _F7=0x76)&(set _F8=0x77)&(set _F9=0x78)&(set _F10=0x79)&(set _F11=0x7A)&(set _F12=0x7B)&(set _NumLock=0x90)&(set _ScrollLock=0x91)&(set _PrintScreen=0x9A)&(set _;=0xBA)&(set _equ=0xBB)&(set _,=0xBC)&(set _-=0xBD)&(set _.=0xBE)&(set _/=0xBF)&(set _~=0xC0)&(set _[=0xDB)&(set _\=0xDC)&(set _]=0xDD)&(set _'=0xDE)
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::Порозрачность
set Title_Id=%date:~-4%%date:~3,2%%date:~0,2%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%_%username%
set Title_Id=%Title_Id: =_%
title %Title_Id%
nircmd.exe win trans ititle %Title_Id% 200
::Выставляем координаты по умолчанию
(set /a x1=0)&(set /a y1=0)&(set /a x2=0)&(set /a y2=0)&(set /a d=1)
set /a MiniD=1
:begin_130819082024
cls
echo d=%d%
echo MiniD=%MiniD%
echo (x1=%x1%,y1=%y1%)
echo (x2=%x2%,y2=%y2%)
choice /T 1 /c eqwsadtgfh /D e
set /a MiniD=%MiniD%+1
if %MiniD% GEQ 3 set /a d=%d%+1
if %MiniD% GEQ 3 set /a MiniD=0
if %d% GTR 50 set /a d=50
if %ErrorLevel% EQU 1 echo 1 e
if %ErrorLevel% EQU 1 set /a MiniD=0
if %ErrorLevel% EQU 1 set /a d=1
if %ErrorLevel% EQU 1 goto begin_130819082024
if %ErrorLevel% EQU 2 echo 2 q
if %ErrorLevel% EQU 3 echo 3 w
if %ErrorLevel% EQU 3 set /a y1=%y1%-%d%
if %ErrorLevel% EQU 3 if %y1% LSS 0 set /a y1=0
if %ErrorLevel% EQU 3 set /a y2=%y1%
if %ErrorLevel% EQU 3 (nircmd setcursor %x1% %y1%)&(goto begin_130819082024)
if %ErrorLevel% EQU 4 echo 4 s
if %ErrorLevel% EQU 4 set /a y1=%y1%+%d%
if %ErrorLevel% EQU 4 set /a y2=%y1%
if %ErrorLevel% EQU 4 (nircmd setcursor %x1% %y1%)&(goto begin_130819082024)
if %ErrorLevel% EQU 5 echo 5 a
if %ErrorLevel% EQU 5 set /a x1=%x1%-%d%
if %ErrorLevel% EQU 5 if %x1% LSS 0 set /a x1=0
if %ErrorLevel% EQU 5 set /a x2=%x1%
if %ErrorLevel% EQU 5 (nircmd setcursor %x1% %y1%)&(goto begin_130819082024)
if %ErrorLevel% EQU 6 echo 6 d
if %ErrorLevel% EQU 6 set /a x1=%x1%+%d%
if %ErrorLevel% EQU 6 set /a x2=%x1%
if %ErrorLevel% EQU 6 (nircmd setcursor %x1% %y1%)&(goto begin_130819082024)
if %ErrorLevel% EQU 7 echo 7 t
if %ErrorLevel% EQU 7 set /a y2=%y2%-%d%
if %ErrorLevel% EQU 7 if %y2% LSS 0 set /a y2=0
if %ErrorLevel% EQU 7 (nircmd setcursor %x2% %y2%)&(goto begin_130819082024)
if %ErrorLevel% EQU 8 echo 8 g
if %ErrorLevel% EQU 8 set /a y2=%y2%+%d%
if %ErrorLevel% EQU 8 (nircmd setcursor %x2% %y2%)&(goto begin_130819082024)
if %ErrorLevel% EQU 9 echo 9 f
if %ErrorLevel% EQU 9 set /a x2=%x2%-%d%
if %ErrorLevel% EQU 9 if %x2% LSS 0 set /a x2=0
if %ErrorLevel% EQU 9 (nircmd setcursor %x2% %y2%)&(goto begin_130819082024)
if %ErrorLevel% EQU 10 echo 10 h
if %ErrorLevel% EQU 10 set /a x2=%x2%+%d%
if %ErrorLevel% EQU 10 (nircmd setcursor %x2% %y2%)&(goto begin_130819082024)

nircmd wait 200
nircmd win min title %Title_Id%
nircmd wait 200
nircmd savescreenshot *clipboard* %x1% %y1% %x2% %y2%
nircmd wait 200
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::nircmd sendkeypress %_WIN%+%_B%
::nircmd sendkeypress %_TAB% %_TAB% %_TAB% %_TAB%
::nircmd sendkeypress %_arrow.RIGHT% %_arrow.RIGHT% %_arrow.RIGHT% %_arrow.RIGHT%
::nircmd sendkeypress %_ENTER%
::nircmd wait 500
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
start mspaint
nircmd wait 5000
nircmd sendkeypress ctrl+%_N%
nircmd wait 1000
nircmd sendkeypress ctrl+%_v%