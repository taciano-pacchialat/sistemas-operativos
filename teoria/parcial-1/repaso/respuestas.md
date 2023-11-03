# Repaso teórico 1

**Las respuestas están chequeadas por profesores**

1. Si, el sistema operativo es software, por lo tanto necesita memoria
   y CPU para ejecutarse.

2. Si, ya que los procesos de batch requieren solamente procesador, y
   los interactivos utilizan mucho la E/S.

3. Si, que tenga un solo usuario no implica que no pueda correr procesos en simultáneo.

4. No, si el sistema es multiusuario se debe poder correr muchas tareas de forma concurrente, para que muchos usuarios lo utilicen a la vez.

5. No, para que un programa se esté ejecutando es necesario que esté en la memoria principal.

6. Si, lo importante para planificar es tener memoria principal. La memoria secundaria es necesaria para el swapping, pero no esencial.

7. Verdadero. La interrupción por clock interrumpe procesos de usuario que están ejecutándose para evitar que se apropien de la CPU.

8. Las interrupciones vienen de afuera, son eventos externos a los procesos, y los traps son causados por lo que se está ejecutando.

9. Verdadero. Cuando un proceso intenta acceder a una dirección de memoria que no le pertenece, se trata como un trap. Este acceso es detectado por el hardware, quien le hace un trap al sistema operativo.

10. Falso. Solo puede hacerlo si el proceso se ejecuta en modo Kernel.

11. Falso. El proceso usa el sistema operativo para ejecutar programas, y cuando llama a un System Call, interfiere el Kernel.

12. Verdadero.

13. Falso. Justamente si tengo muchos procesos interactivos, los dispositivos de E/S estarán bajo una alta demanda.

14. Si, es uno de los objetivos del SO.

15. Al Kernel se lo puede considerar como al "verdadero" sistema operativo, pero en realidad es el núcleo. A un sistema también lo componen el Shell, las herramientas y la interfaz gráfica, entre otros.

16. Verdadero, es multiplexada porque los procesos pueden compartir memoria y utilizarla a la vez.

17. Verdadero, los procesos lo comparten a lo largo del tiempo.

18. Verdadero, al clock de la computadora solo se puede acceder en modo Kernel.

19. Falso. Cuando el proceso cambia de modo cambia de stack, pero no se encuentran en la misma dirección de memoria. Un proceso puede tener más de 2 stacks.

20. Verdadero. En el PCB se encuentran todos los datos básicos y necesarios para que el proceso sea ejecutado.

21. Verdadero, mediante `fork`. Luego le sigue `execve`.

22. Falso, está en memoria principal. En la cola de procesos se almacenan las PCB enlazadas unas con otras en el orden que toque.

23. Falso, está en memoria principal. Lo que se encuentra en el disco es el programa.

24. Falso, el hijo tiene su propio espacio de direcciones, pero hereda las direcciones lógicas. Como un proceso se crea mediante una system call, se crea en modo kernel. Por lo tanto la tarea de crear un proceso nuevo la realiza el sistema operativo, no el proceso padre (el padre hace el system call). Debido a esto el proceso puede crearse en un espacio de direcciones nuevo.

25. Verdadero. El contexto es el conjunto de estructuras que se utiliza para ejecutar un determinado proceso. Este no accede a él porque esta fuera de su espacio de direcciones, y si estuviera dentro podría cambiar la prioridad. Por lo tanto el contexto se almacena en la PCB, no en su espacio de direcciones.

26. Falso, la PCB se crea cuando el proceso está en estado de NEW (antes).

27. Falso. Cada proceso tiene su propio PCB. El proceso padre y el hijo son totalmente independientes, con sus propias características.

28. Falso. Los system calls también sirven para que los procesos pidan servicios.

29. Verdadero.

30. Falso. El contexto también incluye el estado de los registros de la CPU, prioridad de acceso y E/S pendientes. El espacio de direcciones es apuntado por un puntero en la tabla de direcciones.

31. Se tiene que tener en cuenta la b por lo que vimos, pero pueden ser las 2 (hay más algoritmos de los que vimos).

32. Verdadero.

33. Falso. Un cambio de contexto ocurre cuando cambiamos el proceso que está utilizando la CPU. Además, un proceso puede pasar a ejecutarse de modo usuario a modo Kernel (y viceversa), cosa que no involucraría un cambio de contexto.

34. Si.

35. No, un cambio de modo es cambiar de Kernel a usuario, y viceversa. El cambio de contexto es poner en condiciones el sistema para que el proceso que entró a la CPU pueda ejecutarse correctamente.

36. El PID.

37. Base y límite

38. 0 al proceso hijo y el PID del hijo al padre.

39. Por el Hardware (MMU). El hardware le hace un trap al sistema operativo, y este decide como actuar en consecuencia.

40. Verdadero.

41. Guarda el estado del proceso, la pila de usuario, la tabla de archivos abiertos y la tabla de páginas. También guarda la imagen del proceso.

42. Falso, se hace después del fetch y antes del decode.

43. Verdadero.

44. Falso, provocará un cambio de modo porque es un system call, y los system calls se ejecutan en modo Kernel. Un cambio de modo no implica un cambio de contexto.

45. No, un proceso ready to run swapped no compite por CPU, compite por ser swappeado a memoria principal, y recién allí competirá por CPU.

46. Falso, el de short term se ejecuta con más frecuencia que el de long term.

47. Falso, el encargado de hacer el context switch es el Dispatcher.

48. Falso, pasa a estado ready to run.

49. Falso, el que decide esto es el long-term. El medium term hace el swap in y swap out.

50. Falso, el short term selecciona quien va a pasar de ready a running. El que verdaderamente hace la transición es el dispatcher.

51. Si, también se busca que ningún proceso quede en estado de inanición.

52. Verdadero.

53. Verdadero. Luego, el medium term decide si llevarlo a memoria principal.

54. Si, solo si hay memoria RAM disponible.

55. Verdadero.

56. Verdadero, el medium term influye en el grado de multiprogramación, pero el que lo controla en realidad es el long term. Lo que hace el medium es reducirlo temporalmente mediante el swapping.

57. El que implementa la planificación de procesos es el SO, pero el disco lo permite.

58. Verdadero.

59. Si, los algoritmos apropiativos conviene usarlos siempre que tengamos procesos interactivos.

60. El dispatcher realiza todas las actividades mencionadas.

61. Se saturan las colas de dispositivo (b).

62. Falso, se hace en modo Kernel (lo hace el sistema operativo).

63. Falso, la CPU trabaja con direcciones lógicas.

64. Verdadero, y para la fija es el next fit.

65. El MMU.

66. En la paginación pura no hay fragmentación externa, se aprovecha mejor el espacio de memoria y no requiere que todo el proceso esté en memoria para ejecutarse (flexibilidad). Las desventajas son que puede haber fragmentación interna, la gestión de memoria es más compleja y es necesario hardware adicional para la traducción de direcciones.

67. Verdadero.

68. Es necesario guardar en qué dirección comienza cada marco, y en qué marco está cada página, ya que los marcos son de tamaño fijo.
