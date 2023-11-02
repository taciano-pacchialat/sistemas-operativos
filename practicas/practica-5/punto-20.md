# Punto 20

El algoritmo OPT va a ser el mejor, pero no se puede implementar ya que necesita saber que zonas de memoria seran referenciadas a futuro, cosa que es imposible de saber.
El LRU sera el que le sigue al OPT en términos de tasa de fallos. Va a reemplazar la página que haya sido referenciada hace más tiempo. Para implementarlo, necesitamos que las páginas tengan un registro de hace cuanto tiempo se referenciaron, y al buscar una página víctima sacaremos la que tenga un número mayor.
El FIFO con segunda chance va a ser más eficiente que el FIFO normal porque analiza un campo más grande de hechos. Se utiliza un bit adicional de referencia, que cuando la página se carga a memoria está en 0 y cambia cuando es referenciada. A la hora de buscar una página víctima, el algoritmo lo hará entre las que tengan el bit en 0, y mientras lo hace, va cambiando todas las que tienen el bit en 1 a 0.
Por último tenemos el FIFO, que es el más simple de implementar. Trata a los frames en uso como una cola circular, y la página más vieja en la memoria es reemplazada.
