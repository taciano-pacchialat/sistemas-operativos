#!/bin/bash

productoria() {
  resultado=1
  for elemento in "$@"; do
    resultado=$(expr $elemento \* $resultado)
  done
  echo "$resultado"
}

arreglo=(1 2 3 4)
resultado=$(productoria ${arreglo[@]})
echo "la productoria es $resultado"

exit 0