#!/bin/bash
i=0
for archivo in *; do
  if [ -f "$archivo" ] && [ ${archivo##*.} == "sh" ]; then
    echo "$i. $archivo"
    i=$(expr $i + 1)
  fi
done

read opcion

if [ "$opcion" == "salir" ] || [ "$opcion" == "Salir" ]; then
  exit 0
else 
  i=0
  for archivo in *; do
    if [ -f "$archivo" ] && [ ${archivo##*.} == "sh" ] && [ $i -eq $opcion ]; then
      bash "$archivo"
      exit 0
    fi
    i=$(expr $i + 1)
  done
  echo "No existe esa opcion"
fi 

exit 1