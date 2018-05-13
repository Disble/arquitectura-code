## Arquitectura Code

### Configurar DOSBox para usar Ensamblador

1. Descarga [DOSBox](http://www.dosbox.com/download.php?main=1) e instalarlo.
2. Crear el directorio `DOSBOX` y dentro `8086`,  quedando la dirección completa `C:\DOSBOX\8086`.
3. Dentro del directorio `C:\DOSBOX\8086` copiar el contenido dentro de la carpeta `resources/8086/` que esta en este mismo repositorio.
4. Montar la carpeta `C:\DOSBOX\8086` en DOSBox.

### Montar Unidad en DOSBox

Comandos para montar una carpeta en DOSBOx

```assembly
MOUNT C C:/DOSBOX/8086  ;aqui estamos montando la carpeta en la unidad C:
C: ;aqui estamos cambiando a la unidad recien montada.
```

El contenido de esta unidad sera el mismo que la carpeta que se uso para montarla. Para ejecutar cualquier programa solo se debe escribir su nombre.

### Comandos para compilar codigo en DOSBox

Estos comandos son para compilar código ensamblador en un ejecutable que se pueda usar directamente en DOSBox.

Comandos para compilar codigo ensamblador. Este código se encuentra en `examples/tutos/first.asm`.

```assembly
masm first.asm; ;crea un first.obj
link first.obj; ;crea un ejecutable desde first.obj.
first   ;ejecutable del programa que se puede correr directamente
```

Donde `;` es a su vez fin de instrucción e inicio de comentarios. Por esta razón se ha puesto otro `;` despues, unido al texto para comentarios.

> Es importante no omitir los punto y coma que estan en el código.

### Análisis Código Assembly (test.asm)

Este código se encuentra en `examples/tutos/test.asm`.

```assembly
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
```

Este código tiene tres diferentes segmentos delimitos por `.stack 100h` , `.data` y `.code`.

Podemos llamarlas.

#### Segmento `stack`

Nos saltamos de momento.

#### Segmento `data`

Es que tipo de datos (`data`) se va a usar, en este caso el segmento de datos es igual a `ds` que es una abreviación de `data segment`

#### Segmento `code`

##### Boilerplate

`Boilerplate` o repetitivo

##### Mov

`mov` es abreviación de `move`: que seria lo que esta afuera se mueve hacia lo que esta adentro.

##### Procedure

Aqui se maneja el término `procedure` o procedimiento que es un bloque de código. Un ejemplo de prodecimiento es:

```assembly
HEY PROC ;el nombre del procedimiento es HEY, siempre va acompañado de PROC
	mov ax,@data ;contenido del procedimiento, estructura basica
	mov ds, ax ;contenido del procedimiento, estructura basica
HEY endP ;aqui termina el procedimiento
	END HEY ;esta línea seria el final del programa e indica cual procedimiento se ejecuta primero.
```

Técnicamente un procedimiento es un bloque de código como seria las llaves (`{}`) en lenguajes de alto nivel como java, tal como un `void main`.

##### Ax

El término `ax` no es único. Hay cuatro tipos para esta aquitectura (DOSBox) que son `AX`, `BX`, `CX`, `Dx` que son registro de 16bits, donde 8bits son arriba y 8bits abajo. 

- AX = AH,AL (A High, A Low) (8 bit, 8 bit) (completo seria 16 bit)
- EAX = tiene 16 bit llamados high word y 16 bit llamdos low word

Básicamente con EAX podemos trabajar con la mitad del registro, se puede guardar solo 8 bits de datos dentro de high word y low word.

##### Imprimir String

Los comandos para imprimir son los siguientes:

```assembly
mov dx,OFFSET Message
mov ah, 9h
int 21h
```

Donde la primera línea mueve el `OFFSET Message` a `dx` o también llamado registro abierto. Es decir mueve el mensaje hasta `dx`.

La segunda línea, tiene `9h` que es el llamado `hex call` que muestra el string. DOS automaticamente lee cualquier cosa que este dentro de `dx`.

La tercera línea es una interrupción o pausa usando `21h` que llama DOSBox y muestra que algo se ha impreso en pantalla.

##### Líneas finales

En casi cualquier programa se utilizan el siguiente código al finalizar un programa.

```assembly
mov al,0 ;mueve 0 a A Low
mov ah, 4ch ;mueve 4ch a A High
int 21h ;llama a DOSBox y finaliza
```

Estos comandos son simplemente una función del tipo salida.

### Lista de Archivos

- Arquitectura-clase1.bat
  - Leer IP, Leer Archivo, suma, resta, multiplicacion, division.
- examples/clases
  - OperaBin.asm
- examples/tutos
  - FIRST.ASM
  - TEST.ASM

### Repositorios

Repositorio original en [Gitlab](https://gitlab.com/Disble/arquitectura-code.git) tambien disponible en [Github](https://github.com/Disble/arquitectura-code.git).

