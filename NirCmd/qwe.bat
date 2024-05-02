cd C:\Users\SibNout2020\Downloads\qwe
echo %cd%
::nircmd sendkey a press

nircmdc sendmouse move 0 50
timeout /t 1
nircmdc sendmouse move 50 0
timeout /t 1
nircmdc sendmouse move 0 -50
timeout /t 1
nircmdc sendmouse move -50 0
timeout /t 1
nircmdc sendmouse move 0 50
timeout /t 1
nircmdc sendmouse move 50 0
timeout /t 1
nircmdc sendmouse move 0 -50
timeout /t 1
nircmdc sendmouse move -50 0
timeout /t 1
::nircmdc sendmouse right click
pause



