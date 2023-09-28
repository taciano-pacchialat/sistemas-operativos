#!/bin/bash

if [ $# -ne 1 ]; then
  echo "patron como parametro 1"
  exit 1
fi

patron=$1
# wrappear con parentesis asi lo guarda como arreglo
usuarios=($(cat /etc/passwd | cut -d ':' -f 1 | grep "$patron")) 
echo "${usuarios[@]}"
echo "${#usuarios[@]}"
opciones=(listar eliminar contar terminar)

select opcion in listar eliminar contar terminar; do
  case $opcion in

    listar) 
      for usuario in ${usuarios[@]}; do
        echo "$usuario"
      done
    ;;

    eliminar)
      cantidad=${#usuarios[@]}
      i=0
      for usuario in ${usuarios[@]}; do
        echo "$i) $usuario"
        ((i += 1))
      done
      echo "seleccionar usuario a eliminar"
      read pos
      unset usuarios[$pos]
      usuarios=(${usuarios[@]}) #! parentesis para que lo tome como arreglo 
    ;;

    contar)
      echo ${#usuarios[@]}
    ;;

    terminar)
      echo "fin"
      exit 0
    ;;
  esac
done

exit 0

