#!/bin/bash

arreglo=($(cat /etc/passwd | cut -d ':' -f 1))

existe() {

  if [ $# -ne 1 ]; then 
    echo "parametros insuficientes en existe()"
    return 2
  fi

  encontrado=1
  for elemento in "${arreglo[@]}"; do
    if [ "$1" == "$elemento" ]; then
      encontrado=0
      echo "$1 existe"
      break
    fi
  done

  return $encontrado
}

eliminar_usuario() {

  if [ $# -ne 1 ]; then 
    echo "parametros insuficientes en eliminar_usuario()"
    return 2
  fi

  if ! existe "$1" ; then # <- si no existe
    for ((i=0; i<${#arreglo[@]}; i++)); do
      if [ "$1" == "${arreglo[$i]}" ]; then
        unset arreglo[$i]
        arreglo=($(compact ${arreglo[@]}))
        echo "$1 eliminado"
        break
      fi
    done
  else  
    echo "$1 no existe"
    return 2
  fi

}

usuarios_con_patron() {

  if [ $# -ne 1 ]; then 
    echo "parametros insuficientes en usuarios_con_patron()"
    return 2
  fi

  for elemento in "${arreglo[@]}"; do 
    if [[ "$elemento" =~ $1 ]]; then 
      echo "$elemento"
    fi
  done
}

cantidad() {
  echo "${#arreglo[@]}"
}

usuarios() {
  for elemento in "${arreglo[@]}"; do 
    echo "$elemento"
  done
}

usuarios
cantidad
eliminar_usuario taci
cantidad

exit 0