#!/bin/bash

pila=()

push() {
  pila+=("$1")
}

length() {
  echo "${#pila[@]}"
}

pop() {
  if [ "${#pila[@]}" -gt 0 ]; then
    elemento="${pila[-1]}"
    unset pila[$(expr ${#pila[@]} - 1)]
    echo "$elemento popeado"
  fi
}

print() {
  if [ "${#pila[@]}" -eq 0 ]; then
    echo "pila vacia"
  else
    for elemento in "${pila[@]}"; do  
      echo "$elemento"
    done
  fi
}

input=""
arg=""
while [ true ]; do
  echo ""
  echo "Ingresar operacion (push, pop, length, print, salir):"
  read input arg
  if [ $input == "push" ] || [ $input == "pop" ] || [ $input == "length" ] || [ $input == "print" ]; then
    $input $arg
  elif [ $input == "salir" ]; then
    exit 0
  else 
    echo "operacion no valida"
  fi
done

exit 1