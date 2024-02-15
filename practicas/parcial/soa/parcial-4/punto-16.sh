#!/bin/bash

if [ $# -lt 2 ]; then
  echo "parametros insuficientes"
  exit 2
fi

if [ ! -e "$1" ] || [ ! -d "$1" ]; then
  echo "Argumento 1 no es un directorio"
  exit 3
fi

directorio=$1
archivos=("${@}")

for archivo in "${archivos[@]}"; do

  archivo="${directorio}/${archivo}"
  if [ -e "$archivo" ]; then
    echo "$archivo existe"

    if [ -f "$archivo" ]; then
      echo "$archivo es un archivo"

      if [ -x "$archivo" ]; then
        echo "tenes permisos de ejecucion sobre $archivo"
      else
        echo "no tenes permisos de ejecucion sobre $archivo"
      fi

    elif [ -d "$archivo" ]; then
      echo "$archivo es un directorio"

      if [ -r "$archivo" ]; then
        echo "tenes permisos de escritura sobre $archivo"
      else
        echo "no tenes permisos de escritura sobre $archivo"
      fi
      
    fi
  else
    echo "$archivo no existe"
  fi
  echo ""
done

exit 0

