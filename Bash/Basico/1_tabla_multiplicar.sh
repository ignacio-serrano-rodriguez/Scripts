#!/bin/bash

# 1. Escribir un script que reciba un número como argumento y luego muestre la 
# tabla de multiplicar de ese número.

for i in {1..10}
do
    echo "$1 * $i = $(($1*$i))"
done