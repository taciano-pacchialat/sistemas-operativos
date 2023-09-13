#!/bin/bash

if [ $# -ne 1 ]; then
  echo "argumentos insuficientes"
  exit
fi 

if [ $1 = "Listar" ]; then
  ls -l
elif [ $1 = "DondeEstoy" ]; then
  pwd
elif [ $1 = "QuienEsta" ]; then
  w
else
  echo "argumento incorrecto"
fi 

exit