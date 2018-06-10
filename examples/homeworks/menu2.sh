#!/bin/sh
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
if [ $OPTION -eq 1 ]; then
	echo "Opción $OPTION"
elif [ $OPTION -eq 2 ]; then;
	echo "Opción $OPTION"
elif [ $OPTION -eq 3 ]; then;
	echo ""

	echo No valido
fi
