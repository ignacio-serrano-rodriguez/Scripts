#!/bin/bash

# 4. Escribir un script que reciba una lista de números como argumento y luego
# encuentre el número más grande y el número más pequeño en la lista.

if [ $# -gt 0 ]
then
    maximo=$1
    minimo=$2

    for argumento in $@
    do
        if [ $argumento -lt $minimo ]
        then
            minimo=$argumento
        else
            if [ $argumento -gt $maximo ]
            then
                maximo=$argumento
            fi
        fi
    done
    echo -e "maximo: $maximo\nmínimo: $minimo"
else
    echo 'No has introducido ningún argumento'
fi



