#!/bin/bash

if [ $# -lt 1 ]; then
  echo "parametros insuficientes"
  exit 1
fi

arreglo=("${@:1}")

existe() {

  if [ $# -ne 1 ]; then
    echo "parametros incorrectos en existe()"
    return 2
  fi

  resultado=1
  for elemento in "${arreglo[@]}"; do
    if [ "$elemento" == "$1" ]; then
      resultado=0
      echo "$1 existe"
      break
    fi
  done 
  return $resultado
}

replace() {

  if [ $# -ne 2 ]; then
    echo "parametros incorrectos en replace()"
    return 2
  fi

  if existe $1 ; then # <- si existe
    for ((i=0; i<${#arreglo[@]}; i++)) ; do
      if [ "${arreglo[$i]}" == "$1" ] ; then
        arreglo[$i]="$2"
        echo "$1 reemplazado por $2"
        break
      fi
    done
  fi

}

eliminar() {

  if [ $# -ne 1 ]; then
    echo "parametros incorrectos en eliminar()"
    return 2
  fi

  if ! existe $1 ; then # <- si existe
    for ((i=0; i<${#arreglo[@]}; i++)) ; do
      if [ "$arreglo[$i]" == "$1" ]; then
        unset arreglo[$i]
        arreglo=(${arreglo[@]})
        echo "$1 eliminado"
        break
      fi
    done
  fi

}

cantidad() {
  echo "cantidad: ${#arreglo[@]}"
}

todos() {
  for elemento in "${arreglo[@]}" ; do
    echo $elemento
  done
}

todos 
replace 1 puto
todos


exit 0