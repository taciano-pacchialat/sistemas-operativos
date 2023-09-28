# parcial 1

1. d. Todos los discos duros tienen MBR, que se encuentra en el cilindro 0, cabeza 0, sector 1.
   La cantidad de particiones primarias que puede tener un disco segun el MBR es de 4 (una de
   ellas puede ser extendida). El MBC esta contenido en el MBR.

2. c. Una de las caracteristicas de systemd es la paralelizacion de los procesos de inicio (ejecucion asincronica).
   Los runlevels de System V son reemplazados por targets.  
   En el archivo /var/log hay informacion sobre los servicios, la configuracion de los runlevels esta en /etc/inittab.

3. c.
   Hay 7 runlevels (del 0 al 6)
   Para pasar de un runlevel a otro se utiliza el comando `sudo init X`, donde X es el runlevel al que queremos ir.
   En el archivo `etc/rcX.d` hay links simbolicos a los scripts que se ejecutan en cada nivel.
   Los scripts que se ejecutan durante el arranque se encuentran en `/etc/inittab`.

4. (yo pondria c y d como correctas)
   El encargado de ejecutar el gestor de arranque es la BIOS.
   Al ser ancestro de todos los procesos del sistema, el init tiene PID 1 (no se habla de PPID).
   El proceso init se encarga de montar los filesystems.
   Segun System V, el proceso init se encuentra en `/sbin/init` y se lo configura a traves de `/etc/inittab`.

5. a, b y c
   La sustitucion de comandos (con `` o $()) permite esto.
   Acorde a lo anterior, esto es posible.
   Tambien.
   La sentencia return sirve para retornar un valor entre 0 y 255 desde una funcion.

6. ninguna
   Es case sensitive
   Todo el sistema es open source
   Es multiusuario y multitarea
   La extension de los archivos es simbolica

7. a, b y d tambien
   Para llevar un proceso al foreground hay que borrar el '&' de la linea de ejecucion.
   Supuestamente cada proceso tiene un PID unico mediante el cual se lo puede identificar.

8. ninguna
   Se accede a la cantidad de argumentos con $#
   Para hacer referencia a l primer parametro se usa $0
   A las funciones se les puede pasar parametros.

9. a y d
   Los UUID se utilizan en los dispositivos, no en los directorios.
   /dev/sda es una particion de un disco SCI o SATA, donde ya no existe el concepto de particion logica y primaria.

10. e
    Linux soporta FileSystems variados.
    En `/dev` se encuentran montados dispositivos fisicos.
    En `/var` hay archivos variables que cambian durante la operacion del sistema.
    `/usr` contiene archivos y programas de usuario, las carpetas personales de cada usuario estan en `/home`.
