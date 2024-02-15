#!/bin/bash

# chequeo de parametros
if [ $# -lt 1 ]; then
  echo "parametros insuficientes"
  exit 1
fi

esta_logueado() {
  
  if [ $# -ne 1 ]; then
    echo "parametros insuficientes para esta_logueado()"
    return 2
  fi

  if [ $(who | grep -wc "$1") -eq 1 ]; then
    return 1
  else 
    return 0
  fi
}

cant_procesos() {

  if [ $# -ne 1 ]; then
    echo "parametros insuficientes para cant_procesos()"
    return 2
  fi

  cant=$(ps -u $1 | wc -l)
  echo "$cant"
}

uso_de_procesos() {

  if [ $# -ne 1 ]; then
    echo "parametros insuficientes para uso_de_procesos()"
    return 2
  fi

  if [ $(cant_procesos $1) -gt 100 ] ; then
    return 1
  else
    return 0
  fi

}

echo "$(esta_logueado taci)"

# archivo_log=/home/taci/unlp/sistemas-operativos/parcial/soa/parcial-5/log.txt
# arreglo=("${@}")

# for usuario in "${arreglo[@]}"; do
#   logueado=$(esta_logueado $usuario)
#   procesos=$(uso_de_procesos $usuario)

#   if [[ "$logueado" -eq 1 ]] && [[ "$procesos" -eq 1 ]]; then
#     echo "$usuario" >> "$archivo_log"
#     echo "$usuario esta logueado"
#   else 
#     echo "$usuario no esta logueado"
#   fi
# done

exit 0