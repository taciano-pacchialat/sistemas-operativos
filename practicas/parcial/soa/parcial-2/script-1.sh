#!/bin/bash

# archivo="/var/log/municipios.txt"

# para probar
archivo="/home/taci/unlp/sistemas-operativos/parcial/soa/parcial-2/prueba.txt"

if [ ! -f "$archivo" ]; then 
  echo "$archivo no es un archivo"
  exit 1
fi

municipios=($(cat "$archivo" | cut -d ' ' -f 1))

existeMunicipio() {
  if [ $# -ne 1 ]; then
    echo "parametros invalidos para existeMunicipio()"
    return 2
  fi

  nombre="$1"
  for municipio in ${municipios[@]} ; do
    if [ "$municipio" == "$nombre" ]; then
      echo "$nombre existe"
      return 1
    fi
  done
  echo "$nombre no existe"
  return 0
}

agregarMunicipio() {

  if [ $# -ne 1 ]; then
    echo "parametros invalidos para agregarMunicipio()"
    return 2
  fi
  
  if  existeMunicipio "$1" ; then
    echo "$1 ya existe"
  else
    municipios[(( ${#municipios[@]} + 1 ))]="$1"
    echo ""$1" agregado a municipios"
  fi
}

listarMunicipios() {
  echo "${municipios[@]}"
}

cantidadMunicipios() {
  echo "${#municipios[@]}"
}

# para probar


existeMunicipio LaPlata
agregarMunicipio DockSud
listarMunicipios
agregarMunicipio LaPlata
listarMunicipios
cantidadMunicipios

exit 0
