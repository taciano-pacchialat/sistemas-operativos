# Punto 7

- tamaño de pagina = 512 bytes
- tamaño de celda = 1 byte
- marcos desde la direccion fisica 0

| Pagina | Marco |
| ------ | ----- |
| 0      | 3     |
| 1      | 5     |
| 2      | 2     |
| 3      | 6     |

| **Marco** | **Pagina** | **Direccion Virtual** | **Direccion Fisica** |
| --------- | ---------- | --------------------- | -------------------- |
| 0         | -          | -                     | 0 .. 511             |
| 1         | -          | -                     | 512 .. 1023          |
| 2         | 2          | 1024 .. 1535          | 1024 .. 1535         |
| 3         | 0          | 0 .. 511              | 1536 .. 2047         |
| 4         | -          | -                     | 2048 .. 2559         |
| 5         | 1          | 512 .. 1023           | 2560 .. 3071         |
| 6         | 3          | 1536 .. 2047          | 3072 .. 3583         |

| **Direccion Logica** | **Pagina** | **Desplazamiento** | **Marco** | **Direccion Fisica**  | **Valida** |
| -------------------- | ---------- | ------------------ | --------- | --------------------- | ---------- |
| 35                   | 0          | 35 MOD 512 = 35    | 3         | 512 \* 3 + 35 = 1571  | Si         |
| 512                  | 1          | 512 MOD 512 = 0    | 5         | 512 \* 5 + 0 = 2560   | Si         |
| 2051                 | 4          | 2051 MOD 512 = 3   | -         | -                     | No         |
| 0                    | 0          | 0 MOD 512 = 0      | 3         | 512 \* 3 + 0 = 1536   | Si         |
| 1325                 | 2          | 1325 MOD 512 = 301 | 2         | 512 \* 2 + 301 = 1325 | Si         |
| 602                  | 1          | 602 MOD 512 = 90   | 5         | 512 \* 5 + 90 = 2650  | Si         |

| **Direccion Fisica** | **Marco** | **Pagina** | **Desplazamiento** | **Direccion Logica**  | **Valida** |
| -------------------- | --------- | ---------- | ------------------ | --------------------- | ---------- |
| 509                  | 0         | -          | 509 MOD 512 = 512  | -                     | No         |
| 1500                 | 2         | 2          | 1500 MOD 512 = 476 | 1500                  | Si         |
| 0                    | 0         | -          | 0                  | -                     | No         |
| 3215                 | 6         | 3          | 3215 MOD 512 = 143 | 512 \* 3 + 143 = 1679 | Si         |
| 1024                 | 2         | 2          | 1024 MOD 512 = 0   | 512 \* 2 + 0 = 1024   | Si         |
| 2000                 | 3         | 0          | 2000 mod 512 = 464 | 512 \* 0 + 464 = 464  | Si         |

No se puede producir fragmentación externa porque el tamaño de los marcos y páginas es estático.
Como no sabemos cuánto espacio estan ocupando los datos, no podemos calcular la fragmentación interna.

# Punto 8

**a)**
Como son 8 paginas, necesitaremos 3 bits para representar en que pagina esta.
Luego tendremos que representar los 1024 posibles desplazamientos, por lo que necesitaremos
`log2(1024) = 10` direcciones mas. En total requerimos de 13 bits.

**b)**
Tenemos 32 marcos, cada uno con 1024 direcciones.
Para el marco necesitamos `log2(32) = 5` bits.
Para el desplazamiento 13.
En total necesitamos `13 + 5 = 18` bits.

# Punto 12

1. (2, 1, 1) = 500 + 40 + 1 = 541
2. (1, 3, 15) = 500 + 60 + 15 = 585
3. (3, 1, 10) = 5000 + 120 + 10 = 5130
4. (2, 3, 5) = 1500 + 0 + 5 = 1505

# Punto 17

**a)**
1052 div 512 = 2 -> numero de pagina
1052 mod 512 = 28 -> desplazamiento
Como la pagina 2 no se encuentra alocada en ningun marco, a la direccion
virtual 1052 no le corresponde ninguna direccion fisica.

**b)**
2221 div 512 = 4 -> pagina
2221 mod 512 = 173 -> desplazamiento
La pagina 4 tampoco esta alocada en ningun marco.

**c)**
5499 div 512 = 10 -> pagina
No existe la pagina 10, direccion invalida.

**d)**
3101 / 512 = 6 -> pagina
3101 % 512 = 29 -> desplazamiento
No existe la pagina 6, direccion invalida.

# Punto 19 inciso b

**i)**
Si realizamos asignacion con reparto equitativo, nos quedarian `40 / 4 = 10` marcos para cada proceso,
pero como el proceso 4 usa 8, habrian 2 que quedan sin usar.

**ii)**
Si es proporcional, tenemos que en total los procesos ocuparan `20 + 20 + 15 + 8 = 63` marcos en total.
`20 * 100 / 63 = 31%`, y el 31% de 40 es 12. Entonces al proceso 2 y 3 les corresponden 12 marcos.
`15 * 100 / 63 = 23%`, 23% de 40 es 9. Al proceso 1 le corresponden 9 marcos.
`8 * 100 / 63 = 12%`, 12% de 40 es 4. Al proceso 4 le corresponden 4 marcos.
12 + 12 + 9 + 4 = 37, por lo que sobrarian 3 marcos.

En este caso el reparto equitativo resulta mas eficiente.

# Punto 20

El algoritmo OPT va a ser el mejor, pero no se puede implementar ya que necesita saber que zonas de memoria seran referenciadas a futuro, cosa que es imposible de saber.
El LRU sera el que le sigue al OPT en términos de tasa de fallos. Va a reemplazar la página que haya sido referenciada hace más tiempo. Para implementarlo, necesitamos que las páginas tengan un registro de hace cuanto tiempo se referenciaron, y al buscar una página víctima sacaremos la que tenga un número mayor.
El FIFO con segunda chance va a ser más eficiente que el FIFO normal porque analiza un campo más grande de hechos. Se utiliza un bit adicional de referencia, que cuando la página se carga a memoria está en 0 y cambia cuando es referenciada. A la hora de buscar una página víctima, el algoritmo lo hará entre las que tengan el bit en 0, y mientras lo hace, va cambiando todas las que tienen el bit en 1 a 0.
Por último tenemos el FIFO, que es el más simple de implementar. Trata a los frames en uso como una cola circular, y la página más vieja en la memoria es reemplazada.

# Punto 21

**Local:** se pueden reemplazar solo las páginas que están en el espacio de memoria del proceso.

**Global:** el fallo de página de un proceso puede reemplazar una página de cualquier otro proceso.

No es posible utilizar la política de “Asignación Fija” de marcos junto con la política
de “Reemplazo Global" ya que con la asignación fija a cada proceso le correspondería una región de tamaño fijo, e implementar el reemplazo global sería contradictorio porque un proceso le podría sacar el espacio a otro.

# Punto 22

