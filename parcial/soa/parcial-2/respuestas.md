# parcial 2

1.  a. El runlevel para apagar el equipo es el 0. Hay 7, y van del 0..6.
    b. Para pasar de un runlevel a otro debemos hacer un `sudo init <runlevel>` (necesitamos permisos
    de superusuario).
    c. Los links a los scripts que se ejecutan en cada runlevel estan en `/etc/rcX.d`, donde X va de 0
    a 6, representando a cada uno de los 7 runlevels.
    d. Los scripts que se ejecutan durante el arranque estan en `/etc/init.d`.
    **ninguna es correcta**

2.  a. Es case sensitive
    b. Es codigo abierto completamente, incluyendo el Kernel.
    c. Multiusuario y multitarea.
    d. La extension es simbolica, no es necesaria para conocer el tipo de archivo.
    **ninguna es correcta**

3.  a. Verdadero
    b. Verdadero
    c. Para ejecutar un proceso en el foreground hay que eliminar el `&` del comando para iniciar el proceso
    d. Verdadero

4.  a. Verdadero
    b. Una caracteristica de systemd es la paralelizacion de procesos de inicio de sistema.
    c. Verdadero
    d. La configuracion de los runlevels (en System V) se encuentra en /etc/inittab

5.  a. Verdadero
    b. Verdadero
    c. Verdadero
    d. El `return` se utiliza para retornar un valor desde una funcion, y solo en un rango
    entre 0 y 255.

6.  a. La cantidad de argumentos recibidos la contiene `$#`.
    b. El primer parametro esta en `$1`.
    c. Podemos acceder a la lista de argumentos con `$*`.
    d. Podemos pasar argumentos a funciones.
    **ninguna es correcta**

7.  a. Verdadero
    b. No podemos asignarle un UUID a un directorio, estos se utilizan solamente en dispositivos.
    c. Las particiones con este tipo de nomenclatura son para discos SATA o SCSI, donde ya no existen
    las particiones logicas o primarias.
    d. Verdadero

8.  a. El encargado de ejecutar el gestor de arranque es la BIOS (o UEFI).
    b. no idea
    c. Verdadero
    d. Verdadero

9.  a. Soporta varios tipos de FileSystems
    b. En `/dev` se encuentran los dispositivos. La configuracion del sistema esta en `/etc`.
    c. En `/var` hay archivos que cambian durante la operacion del sistema.
    d. Las carpetas personales de los usuarios estan en `/home`. En `/usr` estan los archivos y programas
    de usuario.
    e. Verdadero

10. a. Todos los discos (segun System V) poseen MBR.
    b. El MBR se encuentra en el cilindro 0, cabeza 0, sector 1.
    c. Las particiones primarias estan restringidas a 4.
    d. Verdadero.
