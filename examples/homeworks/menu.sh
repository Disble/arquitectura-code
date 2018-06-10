#!/bin/sh
option1()
{
	clear
	echo ------------------------------------------------------------------------------------
	echo CÓDIGO DEL ARCHIVO ACTUAL
	echo ------------------------------------------------------------------------------------
	echo.
	cat ./menu.sh
}
option2() {
	clear
	echo ------------------------------------------------------------------------------------
	echo DIRECTORIO ACTUAL
	echo ------------------------------------------------------------------------------------
	pwd
}
option3() {
	clear
	echo ------------------------------------------------------------------------------------
	echo PROCESOS DEL SISTEMA
	echo ------------------------------------------------------------------------------------
	top
}
option4() {
	clear
	echo ------------------------------------------------------------------------------------
	echo NOMBRE DEL USUARIO ACTUAL
	echo ------------------------------------------------------------------------------------
	whoami
}
option5() {
	clear
	echo ------------------------------------------------------------------------------------
	echo CREAR UN ARCHIVO DE TEXTO PLANO
	echo ------------------------------------------------------------------------------------
	read -p "Escriba lo que quierda guardar: " TEXTO
	$TEXTO > myfile.txt
	echo Archivo creado
	ls -l | grep myfile
}
option6() {
	clear
	echo ------------------------------------------------------------------------------------
	echo INFORMACIÓN SOBRE EL NÚCLE
	echo ------------------------------------------------------------------------------------
	uname -a
}
option7() {
	break
}

menu()
{
	clear
	echo ------------------------------------------------------------------------------------
	echo ---------------------------------- 	MENU	---------------------------------
	echo ------------------------------------------------------------------------------------
	echo ----			1\) Código del archivo actual     	             ----
	echo ----                       2\) Directorio Actual			  	     ----
	echo ----			3\) Procesos del Sistema		  	     ----
	echo ----			4\) Nombre del usuario actual		    	     ----
	echo ----			5\) Crear archivo de texto plano 	     	     ----
	echo ---- 			6\) Información sobre el núcleo 	     ----
	echo ----			7\) Salir					     ----
	echo ------------------------------------------------------------------------------------
}
menu
read -p "Escoja una de las opciones: " OPTION
case $OPTION in
	1)
		echo "Opción 1"
		option1
		read -p "Press enter to continue"
		menu
		;;
	2)
		echo "Opción 2"
		option2
		read -p "Press enter to continue"
		menu
		;;
	3)
		echo "Opción 3"
		option3
		read -p "Press enter to continue"
		menu
		;;
	4)
		echo "Opción 4"
		option4
		read -p "Press enter to continue"
		menu
		;;
	5)
		echo "Opción 5"
		option5
		read -p "Press enter to continue"
		menu
		;;
	6)
		echo "Opción 6"
		option6
		read -p "Press enter to continue"
		menu
		;;
	7)
		echo "Opción 7"
		option7
		;;
	*)
		echo "Opción Invalida. Por favor vuelva a intentarlo"
		;;
esac

