#!/bin/bash

arreglo=($(cat /etc/passwd | cut -d ':' -f 1))

existe() {

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

  if existe "$1" ; then # <- si no existe
    echo "$1 no existe"
    return 2
  fi

  for ((i=0; i<${#arreglo[@]}; i++)); do
    if [ "$1" == arreglo[$i] ]; then
      unset arreglo[$i]
      arreglo=($(compact "${arreglo[@]}"))
      echo "usuario eliminado"
      break
    fi
  done

}

usuarios_con_patron() {
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

