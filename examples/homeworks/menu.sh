#!/bin/sh
option1()
{
	clear
	echo CÓDIGO DEL ARCHIVO ACTUAL
	echo.
	cat ./menu.sh
}

clear
echo ------------------------------------------------------------------------------------
echo ---------------------------------- 	MENU	---------------------------------
echo ------------------------------------------------------------------------------------
echo ----			1\) Código del archivo actual     	             ----
echo ----                       2\) Directorio Actual			  	     ----
echo ----			3\) Procesos del Sistema		  	     ----
echo ----			4\) Nombre del usuario actual		    	     ----
echo ----			5\) Crear archivo de texto plano 	     	     ----
echo ---- 			6\) Listar directorio actual ascendentemente 	     ----
echo ----			7\) Salir					     ----
echo ------------------------------------------------------------------------------------
read -p "Escoja una de las opciones: " OPTION
case $OPTION in
	1)
		echo "Opción 1"
		option1
		;;
	2)
		echo "Opción 2"
		;;
	3)
		echo "Opción 3"
		;;
	4)
		echo "Opción 4"
		;;
	5)
		echo "Opción 5"
		;;
	6)
		echo "Opción 6"
		;;
	7)
		echo "Opción 7"
		;;
	*)
		echo "Opción Invalida. Por favor vuelva a intentarlo"
		;;
esac

