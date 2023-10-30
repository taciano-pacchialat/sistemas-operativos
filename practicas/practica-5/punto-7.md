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
