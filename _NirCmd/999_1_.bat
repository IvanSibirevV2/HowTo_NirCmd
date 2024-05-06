:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit /b))
cd %~dp0
title %~0 
:::::::::::::::::::::::::::::::::::::::::::::
::Config
::https://learn.microsoft.com/ru-ru/windows/win32/inputdev/virtual-key-codes?redirectedfrom=MSDN
set _MousBtnLeft=0x01
set _MousBtnRight=0x02
set _MousBtnMiddle=0x04
set _Backspace=0x08
set _TAB=0x09
set _ENTER=0x0D
set _SHIFT=0x10
set _CTRL=0x11
set _ALT=0x12
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
set _A=0x41
set _B=0x42
set _C=0x43
set _D=0x44
set _E=0x45
set _F=0x46
set _G=0x47
set _H=0x48
set _I=0x49
set _J=0x4A
set _K=0x4B
set _L=0x4C
set _M=0x4D
set _N=0x4E
set _O=0x4F
set _P=0x50
set _Q=0x51
set _R=0x52
set _S=0x53
set _T=0x54
set _T=0x54
set _U=0x55
set _V=0x56
set _W=0x57
set _X=0x58
set _Y=0x59
set _Z=0x5A
set _WIN=0x5B
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
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::call :Script_10_24__20_12_2023
for /L %%i in (1,1,20) do (
nircmd wait 25
nircmd sendkeypress %_WIN%+b
nircmd wait 25
nircmd sendkeypress %_TAB%
nircmd wait 25
nircmd sendkeypress %_TAB%
nircmd wait 25
nircmd sendkeypress %_TAB%
nircmd wait 25
nircmd sendkeypress %_TAB%
nircmd wait 25
nircmd sendkeypress %_arrow.RIGHT%
nircmd wait 25
nircmd sendkeypress %_arrow.RIGHT%
nircmd wait 25
nircmd sendkeypress %_arrow.RIGHT%
nircmd wait 25
nircmd sendkeypress %_ENTER%
nircmd wait 25
nircmd sendkeypress %_CTRL%+c
nircmd wait 25
nircmd sendkeypress %_arrow.DOWN%
nircmd wait 25
nircmd sendkeypress %_WIN%+b
nircmd wait 25
nircmd sendkeypress %_TAB%
nircmd wait 25
nircmd sendkeypress %_TAB%
nircmd wait 25
nircmd sendkeypress %_TAB%
nircmd wait 25
nircmd sendkeypress %_TAB%
nircmd wait 25
nircmd sendkeypress %_arrow.RIGHT%
nircmd wait 25
nircmd sendkeypress %_arrow.RIGHT%
nircmd wait 25
nircmd sendkeypress %_arrow.RIGHT%
nircmd wait 25
nircmd sendkeypress %_arrow.RIGHT%
nircmd wait 25
nircmd sendkeypress %_ENTER%
nircmd wait 25
nircmd sendkeypress %_Backspace%
nircmd wait 25
nircmd sendkeypress %_CTRL%+v
nircmd wait 25
nircmd sendkeypress %_arrow.DOWN%
nircmd wait 25
nircmd sendkeypress %_WIN%+b
nircmd wait 25
nircmd sendkeypress %_TAB%
nircmd wait 25
nircmd sendkeypress %_TAB%
nircmd wait 25
nircmd sendkeypress %_TAB%
nircmd wait 25
nircmd sendkeypress %_TAB%
nircmd wait 25
nircmd sendkeypress %_arrow.RIGHT%
nircmd wait 25
nircmd sendkeypress %_ENTER%
nircmd wait 25
)
::nircmd wait 1000
:::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::
:Script_10_24__20_12_2023
::Обратите внимание. В этом мире все всегда не так как Вы могли предположить
::Запуск приложения Npp с последующим открытием с ожиданием конца исполнения
start /w notepad++
::Безбожно прожимаем горячие клавиши создания нового окна в Npp.
::Фокус перейдет на него...
nircmd sendkeypress ctrl+n
::https://nircmd.nirsoft.net/sendkeypress.html
::Позволяет пакетно нажимать клавиши и комбинации клавишь
::Работает быстрее чем все возможные самописные обертки
nircmd sendkeypress 0 1 2 3 4 5 6 7 8 9 enter
nircmd sendkeypress a b c d e f g h i j k l m n o p q r s t u v w y z enter
nircmd sendkeypress capslock a b c d e f g h i j k l m n o p q r s t u v w y z capslock enter
::https://lists.w3.org/Archives/Public/www-dom/2010JulSep/att-0182/keyCode-spec.html
::Пытаемся делать пунктуацию
nircmd sendkeypress %_,% %_-% %_.% %_/% %_`% %_[% %_\% %_]% %_'% enter
::Пытаемся делать Русский TxT
:: переключаем раскладку если получитася
:: компа нехватает мошшности, может произойти залипание
:: делайте заддержку под себя
nircmd sendkeypress alt+shift wait 1000
nircmd sendkeypress f %_,% d u l t %_;% p b r k v y j g h c n e a %_[% w x i o %_]% s m %_'% %_.% z
nircmd sendkeypress alt+shift wait 1000
nircmd sendkeypress enter
nircmd sendkeypress alt+shift wait 1000
nircmd sendkeypress capslock  f %_,% d u l t %_;% p b r k v y j g h c n e a %_[% w x i o %_]% s m %_'% %_.% z capslock 
nircmd sendkeypress alt+shift wait 1000

::Танцуем мышькой
for /L %%i in (1,1,100) do (
 nircmd movecursor 25 0
 nircmd movecursor 0 25
 nircmd movecursor -25 0
 nircmd movecursor 0 -25
 echo i = %%i
)
::мышь на координаты 50 ы50
::nircmd setcursor 50 10
::nircmd sendmouse right click
::nircmd sendmouse left click
::ожидание 1000 милисекунд
::nircmd wait 1000

nircmd sendkeypress ctrl+w tab
::Как видим, оно работает
exit /b