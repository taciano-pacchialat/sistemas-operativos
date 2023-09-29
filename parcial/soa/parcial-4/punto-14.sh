#!/bin/bash

if [ $# -ne 1 ]; then
  echo "pasa un usuario forro"
  exit 1
fi

while true; do
  # tambien se puede hacer asi:
  # if [[ $(who) =~ $1 ]]
  if  who | grep "$1" -q ; then # -q = 'quiet' para que no vaya a stdout
    echo "El usuario $1 es usuario del sistema"
    fecha=$(date | cut -d ' ' -f 1,2,3,4)
    echo $fecha
    echo "$1 $fecha" >> /tmp/usuarios.log
    break
  else
    sleep 5
  fi
done

exit 0