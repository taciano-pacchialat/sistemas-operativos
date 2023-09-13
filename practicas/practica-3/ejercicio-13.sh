#!/bin/bash

for ((i=0; i<=10;i++)) do
  echo "i = ${i}"
  echo "i^2 = $(expr $i \* $i)"
done

exit
