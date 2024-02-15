#!/bin/bash

if [ $# -lt 2 ]; then
  echo "faltan parametros"
  exit 1
fi

fecha=$1
directorio=/var/log/nginx
archivo="${directorio}/access.${fecha}.log"

if [ ! -f $archivo ]; then
  echo "No hubieron accesos en la fecha ${fecha}"
  exit 2
fi

ips=("${@:2}") # arreglo que contiene desde el segundo parametro en adelante

# ${ips[@]} expande los elementos del arreglo como argumentos separados
for ip in "${ips[@]}"; do 
  cant=`cat $archivo | cut -d ' ' -f 1 | grep $ip | wc -l`
  echo "$ip -> $cant"
done

# paso el archivo a cut para quedarme con la IP (separo por espacios y agarro el 1er campo), 
# agarro todas las repeticiones de la ip y las cuento. 

exit 0