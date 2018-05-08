        .model small
        
        .stack 100h ;segmento stack
        
        .data ;segmento data
Message db 'hello, my name is bill jones',13,10,'$'

        .code ;segmento code
Hello PROC ;inicio procedimiento
	    ;estructura basica del procedimiento
        mov ax,@data ;mueve los datos hacia ax
        mov ds, ax ;mueve ax a ds
        
        ;imprimir algo en pantalla
        mov dx,OFFSET Message ;mueve OFFSET Message a dx (registro abierto)
        mov ah, 9h ;funcion para mostrar string, aqui 9h es un hex call
        int 21h ;esta linea es una interrupcion o pausa
        
        ;finaliza el programa
        mov al,0 ;retorna un valor
        mov ah, 4ch ;
        int 21h
Hello endP ;fin procedimiento
        END Hello ;final del programa, llama al primer procedimiento a ejecutar
