#!/bin/bash
# si la cantidad de argumentos != 3 termino
if [ $# -ne 3 ]; then
  echo "no hay suficientes argumentos"
  exit
fi 

if [ $2 = '+' ]; then 
  op=$(expr $1 + $3)
  echo "la suma es: $op"
elif [ $2 = '-' ]; then
  op=$(expr $1 - $3)
  echo "la resta es: $op"
elif [ $2 = '*' ]; then
  op=$(expr $1 \* $3)
  echo "el producto es: $op"
elif [ $2 = '/' ]; then
  op=$(expr $1 / $3)
  echo "la division es: $op"
fi

exit
