@echo off

:: control de parametros
if "%1"=="" goto menu
set parametro=%1
if %parametro%==1 goto IP
if %parametro%==2 goto DOSBox
if %parametro%==3 goto AbrirArchivo
if %parametro%==4 goto Suma
if %parametro%==5 goto Resta
if %parametro%==6 goto Multiplicacion
if %parametro%==7 goto Division
if %parametro%==8 goto Salir

:menu
cls
echo              -----------------------------------------------------
echo              -                 MENU PRINCIPAL                    -
echo              -----------------------------------------------------
echo              -   1.- SABER DIRECCION IP                          -
echo              -   2.- ABRIR DOSBOX			                          -
echo              -   3.- ABRIR ARCHIVO                               -
echo              -   4.- OPERACION SUMA EN ENSAMBLADOR               -
echo              -   5.- OPERACION RESTA EN ENSAMBLADOR              -
echo              -   6.- OPERACION MULTIPLICACION EN ENSAMBLADOR     -
echo              -   7.- OPERACION DIVISION EN ENSAMBLADOR           -
echo              -   8.- SALIR                                       -
echo              -----------------------------------------------------
echo.               
set /p                 ver=Que desea hacer? 
if %ver%==1 goto  IP
if %ver%==2 goto  DOSBox
if %ver%==3 goto  AbrirArchivo
if %ver%==4 goto  Suma
if %ver%==5 goto  Resta
if %ver%==6 goto  Multiplicacion
if %ver%==7 goto  Division
if %ver%==8 goto  Salir

:IP
echo.
echo.
echo Implementar IP
echo.
pause >nul
ipconfig
echo.
echo.
echo PRESIONE ENTER PARA INGRESAR AL MENU
pause >nul 
goto menu

:DOSBox
echo.
echo.
echo Abriendo DOSBox...
echo.
SET PATH=%PATH%;"C:\Program Files (x86)\DOSBox-0.74"
dosbox.exe -c "MOUNT C C:/DOSBOX/MASM611/BINR" -c "C:" -c "OPERABIN" -c "exit"
goto Salir

:AbrirArchivo
echo.
echo.
echo Implementar Abrir Archivo
echo.
pause >nul
more menu.bat
echo.
echo.
echo PRESIONE ENTER PARA INGRESAR AL MENU
pause >nul 
goto menu

:Suma
echo.
echo.
echo Implementar suma ENSAMBLADOR
echo.
pause >nul
echo.
set /p                 x=numero 1: 
set /p                 y=numero 2: 
set /a "z=x+y"
echo.
echo Resultado: %z%
echo.
echo PRESIONE ENTER PARA REGRESAR AL MENU
pause >nul
goto menu

:Resta
echo.
echo.
echo Implementar resta ENSAMBLADOR
echo.
set /p                 x=numero 1: 
set /p                 y=numero 2: 
set /a "z=x-y"
echo.
echo Resultado: %z%
echo.
echo PRESIONE ENTER PARA REGRESAR AL MENU
pause >nul
goto menu

:Multiplicacion
echo.
echo.
echo Implementar multiplicacion ENSAMBLADOR
echo.
echo.
set /p                 x=numero 1: 
set /p                 y=numero 2: 
set /a "z=x*y"
echo.
echo Resultado: %z%
echo.
echo PRESIONE ENTER PARA REGRESAR AL MENU
pause >nul
goto menu

:Division
echo.
echo.
echo Implementar division ENSAMBLADOR
echo.
set /p                 x=numero 1: 
set /p                 y=numero 2: 
set /a "z=x/y"
echo.
echo Resultado: %z%
echo.
echo PRESIONE ENTER PARA REGRESAR AL MENU
pause >nul
goto menu

:Salir
echo.
echo.
echo Adios
exit
