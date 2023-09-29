#!/bin/bash

if [ $# -lt 1 ]; then
  echo "al menos un archivo o directorio"
  exit 1
fi

arreglo=("${@:1}")
no_existe=0
for elemento in "${arreglo[@]}"; do
  if [ -e "$elemento" ]; then

    if [ -f "$elemento" ]; then 
      tar -czf "$elemento.tar.gz" "$elemento"
    
    elif [ -d "$elemento" ]; then
      if [ -r "$elemento" ];  then
        tar -czf "$elemento.tar.gz" "$elemento"
      elif [ -w "$elemento" ]; then
        rm -r "$elemento"
      fi
    fi
  else
    ((no_existe++))
  fi
done

exit 0
