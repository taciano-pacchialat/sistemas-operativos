#!/bin/bash

if [ $# -ne 1 ]; then
  echo "proporcionar nombre valido de archivo"
  exit 1
fi

nombre=$1

if [ -e $nombre ]; then
  if [ -f $nombre ]; then
    echo "es un archivo"
  elif [ -d $nombre ]; then
    echo "es un directorio"
  fi
else
  touch $nombre
fi

exit 0