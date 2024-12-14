@echo off
title CleanUpPc
chcp 65001
:menu
cls
echo.
echo.
echo		██████╗██╗     ███████╗ █████╗ ███╗   ██╗██╗   ██╗██████╗ 
echo		██╔════╝██║     ██╔════╝██╔══██╗████╗  ██║██║   ██║██╔══██╗
echo		██║     ██║     █████╗  ███████║██╔██╗ ██║██║   ██║██████╔╝
echo		██║     ██║     ██╔══╝  ██╔══██║██║╚██╗██║██║   ██║██╔═══╝ 
echo		╚██████╗███████╗███████╗██║  ██║██║ ╚████║╚██████╔╝██║     
echo		 ╚═════╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝     
echo.
echo.
echo 1. Iztirit Miskasti(bin)
echo 2. Izdzest pagaidu failus
echo 3. Restartet internetu -IP,DNS
echo 4. Iziet
echo 5. Atvert saites
echo.
set /p choice="Ievadi ko gribi darit(1 - 5): "

if %choice%==1 goto bin
if %choice%==2 goto files
if %choice%==3 goto restart
if %choice%==4 goto exit
if %choice%==5 goto sait
echo nepareiza ievade, megini velreiz.
pause
goto menu

:bin
cls
echo Tiek tirita miskaste....
powershell -Command "Clear-RecycleBin -Force -ErrorAction Ignore"
echo Miskaste ir tira
pause
goto menu

:files
cls
echo tiek tiriti pagaidu faili...
del /q /f /s %temp%\*
rd /s /q %temp%
echo pagaidu faili ir izdzesti
pause
goto menu

:restart
cls
echo restarte internetu
ipconfig /release
ipconfig /renew
ipconfig /flushdns
echo internets restarets
pause
goto menu

:exit
cls
echo paldies par izmantosanu
pause
exit

:sait
cls
echo.
echo.
echo		██████╗██╗     ███████╗ █████╗ ███╗   ██╗██╗   ██╗██████╗ 
echo		██╔════╝██║     ██╔════╝██╔══██╗████╗  ██║██║   ██║██╔══██╗
echo		██║     ██║     █████╗  ███████║██╔██╗ ██║██║   ██║██████╔╝
echo		██║     ██║     ██╔══╝  ██╔══██║██║╚██╗██║██║   ██║██╔═══╝ 
echo		╚██████╗███████╗███████╗██║  ██║██║ ╚████║╚██████╔╝██║     
echo		 ╚═════╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝     
echo.
echo.


echo 1.Youtube
echo 2.Google
echo 3.Facebook
echo 4.Github
echo 5.Instagram
echo 6.E-klase
echo 7.Atpakal
set /p sike="Izvelie saiti: "
if %sike%==1 goto Youtube
if %sike%==2 goto Google
if %sike%==3 goto Facebook
if %sike%==4 goto Github
if %sike%==5 goto Instagram
if %sike%==6 goto E-klase
if %sike%==7 goto ex

:Youtube
cls
start https://youtube.com
pause
goto sait


:Google
cls
start https://google.com
pause
goto sait


:Facebook
cls
start https://facebook.com
pause
goto sait


:Github
cls
start https://github.com
pause
goto sait


:Instagram
cls
start https://instagram.com
pause
goto sait


:E-klase
cls
start https://e-klase.lv
pause
goto sait

:ex
cls
pause
goto menu



