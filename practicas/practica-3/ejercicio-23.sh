#!/bin/bash

procesar_numeros() {
  impares=0
  for elemento in $@; do
    if [ $(expr $elemento % 2) -eq 0 ]; then
      echo "$elemento"
    else
      impares=$(expr $impares + 1)
    fi
  done
  echo "impares: $impares"
}

arreglo=(1 2 3 4 5 6 7 8)
procesar_numeros ${arreglo[@]}