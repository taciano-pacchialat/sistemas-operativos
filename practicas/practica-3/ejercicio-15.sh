#!/bin/bash

if [ $# -ne 1 ]; then
  echo "cantidad de parametros insuficiente"
  exit 1
fi

extension=$1
cantidad=0
resultado="resultado.txt"
printf "%s\n" "archivo resultado del ejercicio 15" > "$resultado"
printf "%s: " "$USER"

for archivo in *; do
  if [ -f $archivo ] && [ ".${archivo##*.}" = "$extension" ]; then
    cantidad=$(expr $cantidad + 1)
  fi
done

printf "%d\n" "$cantidad"

exit 0