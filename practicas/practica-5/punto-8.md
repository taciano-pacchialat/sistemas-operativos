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
