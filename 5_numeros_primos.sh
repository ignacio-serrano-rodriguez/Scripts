#!/bin/bash

# 5. Escribir un script que reciba un número como argumento y luego imprima los
# primeros números primos hasta ese número.

function esPrimo 
{
    local i=2
    local primo=1

    while [ $i -le $1 ]
    do

    done
}

if [ $# -gt 0 ]
then
    echo "numero: $1"
    i=1
    while [ $i -le $1 ]
    do
        let i=$i+1
        esPrimo $i
    done
else
    echo 'No has introducido ningún argumento'
fi

