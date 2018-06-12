#!/bin/sh
option1()
{
	clear
	echo ------------------------------------------------------------------------------------
	echo CÓDIGO DEL ARCHIVO ACTUAL
	echo ------------------------------------------------------------------------------------
	more ./menu.sh
}
option2() {
	clear
	echo ------------------------------------------------------------------------------------
	echo LISTAR DIRECTORIO ACTUAL
	echo ------------------------------------------------------------------------------------
	pwd
	ls -la
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
	echo $TEXTO > myfile.txt
	echo Archivo creado
	ls -l | grep myfile
	cat myfile.txt
}
option6() {
	clear
	echo ------------------------------------------------------------------------------------
	echo INFORMACIÓN SOBRE EL NÚCLEO
	echo ------------------------------------------------------------------------------------
	uname -a
}
option7() {
	break
}

menu()
{
	clear
	echo "-----------------------------------------------------------------------------------"
	echo "MENU"
	echo "-----------------------------------------------------------------------------------"
	echo "1) Código del archivo actual"
	echo "2) Listar Directorio Actual"
	echo "3) Procesos del Sistema"
	echo "4) Abrir .bash_profile del usuario actual (con vim)"
	echo "5) Abrir /etc/passwd (con vim)"
	echo "6) Nombre del usuario actual"
	echo "7) Información sobre el usuario actual"
	echo "8) Crear archivo de texto plano"
	echo "9) Información sobre el núcleo"
	echo "0) Salir"
	echo "-----------------------------------------------------------------------------------"
	read -p "Escoja una de las opciones: " OPTION
	case $OPTION in
		1)
			echo "Opción 1"
			option1
			read -p "Presione cualquier tecla para continuar..." PAUSE
			menu
			;;
		2)
			echo "Opción 2"
			option2
			read -p "Presione cualquier tecla para continuar..." PAUSE
			menu
			;;
		3)
			echo "Opción 3"
			option3
			menu
			;;
		4)
			echo "Opción 4"
			option4
			read -p "Presione cualquier tecla para continuar..." PAUSE
			menu
			;;
		5)
			echo "Opción 5"
			option5
			read -p "Presione cualquier tecla para continuar..." PAUSE
			menu
			;;
		6)
			echo "Opción 6"
			option6
			read -p "Presione cualquier tecla para continuar..." PAUSE
			menu
			;;
		7)
			echo "Cerrando menu..."
			option7
			;;
		*)
			echo "Opción Invalida. Por favor vuelva a intentarlo"
			menu
			;;
	esac
}
menu
