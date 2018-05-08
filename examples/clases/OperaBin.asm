.model small 
.stack 64
.data 



	spc db 10,13,"/////////////////////////////",'$'
	msn db 10,13,"**Menu de operaciones**",'$'
	Sumar db 10,13,"1. Suma",'$'
	Restar db 10,13,"2. Resta",'$'
	Multiplicacion db 10,13,"3. Multi",'$'
	Division db 10,13,"4. Divi",'$'
	finProgra db 10,13,"5. Salir",'$'
	spac2 db 10,13,".......",'$'
	msn1 db 10,13,"Tome la operacion que desee:",'$'
	msn2 db 10,13,"Numero 1:",'$'
	msn3 db 10,13,"Numero 2:",'$'
	msn4 db 10,13,"El resultado de la operacion es:",'$'
	


		num1 db 0 ;
		num2 db 0
		suma db 0
		Resta db 0
		Multi db 0
		Divi db 0
		
	
.code

		operaciones proc far 
		
		Mov ax,@data
		Mov ds,ax 
		



menu: 

		mov ah,09 
		lea dx,spc
		int 21h 
		
		
		
		mov ah,09	
		lea dx,msn
		int 21h	
		
		mov ah,09	
		lea dx,Sumar
		int 21h	
		
		mov ah,09	
		lea dx,Restar
		int 21h	
		
		mov ah,09	
		lea dx,Multiplicacion
		int 21h	
		
		mov ah,09	
		lea dx,Division
		int 21h	
		
		mov ah,09	
		lea dx,finProgra
		int 21h	
		
		mov ah,09	
		lea dx,spac2
		int 21h	
			
		mov ah,09	
		lea dx,msn2
		int 21h		


		mov ah,01 
		int 21h 
		sub al,30h 
		mov num1,al 
		
		mov ah,09	
		lea dx,msn3
		int 21h	
		mov ah,01 
		int 21h 
		sub al,30h 
		mov num2,al 
		
comparacion: 		
		mov ah,09	
		lea dx,msn1
		int 21h

		mov ah,01
		int 21h
		sub al,30h
		cmp al,1 
		je caso1
		
		cmp al,2 
		je caso2
		
		cmp al,3 
		je caso3
		
		cmp al,4 
		je caso4
		
		cmp al,5 
		je salir
		

caso1: 
		lea dx,msn4 
		mov al,num1 
		ADD al,num2 
		mov suma,al 
		mov ah,09 
		
		int 21h 
		mov dl,suma 
		add dl,30h 
		mov ah,2 
		int 21h 
jmp menu 


caso2: 
			lea dx,msn4 
		mov al,num1 
		sub al,num2 
		mov Resta,al 
		mov ah,09 
	
		int 21h 
		mov dl,Resta 
		add dl,30h 
		mov ah,2 
		int 21h 
jmp menu 


caso3: 
lea dx,msn4 
		mov al,num1
		mul num2 
		mov Multi,al 
		mov ah,09 
		
		int 21h 
		mov dl,Multi 
		add dl,30h 
		mov ah,02 
		int 21h 
jmp menu 


caso4: 
		lea dx,msn4 
		MOV AX,0000H 
		mov al,num1 
		div num2 
		mov Divi,al
		mov ah,09 
		
		int 21h 
		mov dl,Divi 
		add dl,30h 
		mov ah,02 
		int 21h 
jmp menu 
		

			
			
salir: ;etiqueta que guarda las instrucciones de salir
	mov ax,4c00h ; se utiliza para volver al prom del s.o. terminado el programa
	int 21h
	operaciones endp
	end operaciones
			
			
			
			
			
			
			
			
			
			