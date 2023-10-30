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
