## Arquitectura Code

### Configurar DOSBox para usar Ensamblador

1. Descargar [DOSBox](http://www.dosbox.com/download.php?main=1) e instalarlo.
2. Crear el directorio `DOSBOX` y dentro `MASM611`, donde se descomprime el [MASM611](https://sourceforge.net/projects/masm611/), quedando la dirección completa `C:\DOSBOX\MASM611`.
3. Montar la carpeta `C:\DOSBOX\MASM611` en DOSBox.

### Montar Unidad en DOSBox

Comandos para montar una carpeta en DOSBOx

```assembly
MOUNT C C:/DOSBOX/MASM611/BINR  ;aqui estamos montando la carpeta en la unidad C:
C: ;aqui estamos cambiando a la unidad recien montada.
```

El contenido de esta unidad sera el mismo que la carpeta que se uso para montarla. Para ejecutar cualquier programa solo se debe escribir su nombre.

### Comandos para ensamblar codigo en DOSBox

Estos comandos son para ensamblar código ensamblador en un ejecutable que se pueda usar directamente en DOSBox. 

Este archivo se encuentra en `examples/clases/OperaBin.asm`, y antes de ser ensamblado se debe copiar al siguiente directorio `C:/DOSBOX/MASM611/BINR`.

Comandos para ensamblar codigo ensamblador. 

```assembly
ml OperaBin.asm ;crea un OperaBin.obj y crea un ejecutable .EXE desde OperaBin.obj.
OPERABIN   ;ejecutable del programa que se puede correr directamente
```

> Punto y coma es a su vez fin de instrucción e inicio de comentarios. Por esta razón los comentarios van pegados al punto y coma unido al texto.

### Repositorios

Repositorio original en [Gitlab](https://gitlab.com/Disble/arquitectura-code.git) tambien disponible en [Github](https://github.com/Disble/arquitectura-code.git).

