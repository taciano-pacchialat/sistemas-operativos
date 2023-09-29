#!/bin/bash

# en realidad es /var/usuarios.txt
listado=/home/taci/unlp/sistemas-operativos/parcial/soa/parcial-5/listado.txt
usuarios=($(ls /home))

for usuario in "${usuarios[@]}"; do
  directorio=/home/${usuario}/mailDir
  if [ -e "$directorio" ] && [ -d "$directorio" ]; then
    echo "$usuario" >> "$listado"
  fi
done