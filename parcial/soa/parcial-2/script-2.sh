#!/bin/bash

if [ $# -lt 2 ]; then
  echo "uso: $<directorio> <archivo1> [archivo2] [archivo3] ..."
  exit 1
fi

if [ ! -d "$1" ]; then
  echo "$1 no es un directorio"
  exit 2
fi

directorio=$1

archivos=("${@:2}")

for elemento in "${archivos[@]}"; do
  if [ -f "$elemento" ] && [ -x "$elemento" ]; then
    echo "$elemento es un archivo y posees permiso de ejecucion"
  elif [ -d "$elemento" ] && [ -w "$elemento" ]; then
    echo "$elemento es un directorio y posees permiso de escritura"
done 

exit 0