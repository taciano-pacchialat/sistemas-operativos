# Repaso teórico 1

1. Si, el sistema operativo es software, por lo tanto necesita memoria
   y CPU para ejecutarse.

2. Si, ya que los procesos de batch requieren solamente procesador, y
   los interactivos utilizan mucho la E/S.

3. Si, que tenga un solo usuario no implica que no pueda correr procesos en simultáneo.

4. No, si el sistema es multiusuario se debe poder correr muchas tareas de forma concurrente, para que muchos usuarios lo utilicen a la vez.

5. No, para que un programa se esté ejecutando es necesario que esté en la memoria principal.

6. Si, lo importante para planificar es tener memoria principal.

7. Verdadero. La interrupción por clock interrumpe procesos de usuario que están ejecutándose para evitar que se apropien de la CPU.

8. Las interrupciones vienen de afuera, son eventos externos a los procesos.

9. Verdadero. Cuando un proceso intenta acceder a una dirección de memoria que no le pertenece, se trata como un trap.

10. Falso. Solo puede hacerlo si el proceso se ejecuta en modo Kernel.

11. Verdadero.

12. Verdadero.

13. Falso. Justamente si tengo muchos procesos interactivos, los dispositivos de E/S estarán bajo una alta demanda.

14. Si, es uno de los objetivos del SO.

15. Al Kernel se lo puede considerar como al "verdadero" sistema operativo, pero en realidad es el núcleo. A un sistema también lo componen el Shell, las herramientas y la interfaz gráfica, entre otros.

16. Verdadero, es multiplexada porque los procesos pueden compartir memoria y utilizarla a la vez.

17. Verdadero, los procesos lo comparten a lo largo del tiempo.

18. Según el chat, no.

19. Verdadero, cuando el proceso cambia de modo cambia de stack.

20. Verdadero. En el PCB se encuentran todos los datos básicos y necesarios para que el proceso sea ejecutado.

21. Verdadero, mediante `fork`.

22. Falso, está en memoria principal.

23. Falso, está en memoria principal.

24. Falso, el hijo tiene su propio espacio de direcciones, pero hereda las direcciones lógicas.

25. Verdadero.

26. Verdadero, el PCB es lo primero que se crea cuando el proceso se carga en la memoria.

27. Falso. Cada proceso tiene su propio PCB.

28. Falso. Los system calls también sirven para que los procesos pidan servicios.

29. Verdadero.

30. Falso. El contexto también incluye el estado de los registros de la CPU, prioridad de acceso y E/S pendientes.

31. Verdadero.

32. Verdadero.

33. Falso. Un cambio de contexto ocurre cuando cambiamos el proceso que está utilizando la CPU.

34. Si.

35. No, un cambio de modo es cambiar de Kernel a usuario, y viceversa. El cambio de contexto es poner en condiciones el sistema para que el proceso que entró a la CPU pueda ejecutarse correctamente.

36. el PID.

37. base y límite

38. 0 al proceso hijo y el PID del hijo al padre.

39. Por el S.O.

40. Verdadero.

41. Guarda el estado del proceso, la pila de usuario, la tabla de archivos abiertos y la tabla de páginas.

42. Verdadero.

43. Verdadero.

44. Verdadero, ya que para ejecutar un system call hay que cambiar de modo usuario a modo kernel, y para ello hay que cambiar el contexto.

45. Si, un proceso en estado ready compite por CPU.

46. Falso, el de short term se ejecuta con más frecuencia que el de long term.

47. Falso, el encargado de hacer el context switch es el Dispatcher.

48. Depende, si al terminarse el quantum necesita que se concrete una operación de entrada/salida pasa a estado waiting. Si no necesita que se concrete nada vuelve a ready to run.

49. Falso, el que decide esto es el long-term.

50. Verdadero.

51. También se busca que ningún proceso quede en estado de inanición.

52. Verdadero.

53. Verdadero

54. Si, solo si hay memoria RAM disponible.

55. Verdadero.

56. Verdadero.

57. El que implementa la planificación de procesos es el SO.

58. Verdadero.

59. Si, los algoritmos apropiativos conviene usarlos siempre que tengamos procesos interactivos.

60. Ejecuta el cambio de contexto (a).

61. Se saturan las colas de dispositivo (b).

62. Verdadero.

63. Falso, la CPU trabaja con direcciones lógicas.

64. No se.

65. ?

66. En la paginación pura, tenemos la ventaja de que podemos almacenar cualquier página en cualquier marco, pero al ser de tamaño fijo pueden ocurrir fragmentaciones internas. La desventaja de la alocación contigua es que vamos a tener que almacenar si o si todos los procesos juntos, cosa que nos saca versatilidad.

67. Verdadero.

68. Es necesario guardar en qué dirección comienza cada marco, y en qué marco está cada página, ya que los marcos son de tamaño fijo.
