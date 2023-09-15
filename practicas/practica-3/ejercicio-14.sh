#!/bin/bash

if [ $# -ne 3 ]; then
  echo "argumentos insuficientes"
  exit 1
fi 

directorio=$1
opcion=$2
cadena=$3

if [ ! -d "$directorio" ]; then
  echo "El directorio $directorio no existe"
  exit 1
fi

cd "$directorio" || exit 1

for archivo in *; do

  if [ -f "$archivo" ]; then
    nombre="${archivo%.*}"
    if [ $opcion = "-a" ]; then
      mv ./$archivo ./${cadena}${nombre}.${archivo##*.}
    elif [ $opcion = "-b" ]; then
      mv ./$archivo ./${nombre}${cadena}.${archivo##*.}
    fi
  fi
done

exit 0