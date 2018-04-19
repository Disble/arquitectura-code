@echo off
:menu
cls
echo              -----------------------------------------------------
echo              -                 MENU PRINCIPAL                    -
echo              -----------------------------------------------------
echo              -   1.- SABER DIRECCION IP                          -
echo              -   2.- ABRIR ARCHIVO                               -
echo              -   3.- OPERACION SUMA EN ENSAMBLADOR               -
echo              -   4.- OPERACION RESTA EN ENSAMBLADOR              -
echo              -   5.- OPERACION MULTIPLICACION EN ENSAMBLADOR     -
echo              -   6.- OPERACION DIVISION EN ENSAMBLADOR           -
echo              -   7.- SALIR                                       -
echo              -----------------------------------------------------
echo.               
set /p                 ver=Que desea hacer? 
if %ver%==1 goto  IP
if %ver%==2 goto  AbrirArchivo
if %ver%==3 goto  Suma
if %ver%==4 goto  Resta
if %ver%==5 goto  Multiplicacion
if %ver%==6 goto  Division
if %ver%==7 goto  Salir

:IP
echo.
echo.
echo Implementar IP
echo.
pause >nul
::cd \
ipconfig
echo.
echo.
echo PRESIONE ENTER PARA INGRESAR AL MENU
pause >nul 
goto menu

:AbrirArchivo
echo.
echo.
echo Implementar Abrir Archivo
echo.
pause >nul
more Arquitectura-clase1.bat
echo.
echo.
echo PRESIONE ENTER PARA INGRESAR AL MENU
pause >nul 
goto menu

:Suma
::cd \
::include 'em8086.inc'
::echo.
::echo.
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
