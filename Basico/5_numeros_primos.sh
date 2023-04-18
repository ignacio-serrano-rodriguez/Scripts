#!/bin/bash

# 5. Escribir un script que reciba un número como argumento y luego imprima los
# primeros números primos hasta ese número.

function esPrimo 
{
    local i=2
    local primo=1

    while [ $i -lt $1 ] && [ $primo -eq 1 ]
    do  
        if [ $(($1%$i)) -eq 0 ]
        then
            primo=0
        else
            let i=$i+1
        fi        
    done

    if [ $primo -eq 1 ]
    then
        echo "$1"
    fi
}

if [ $# -gt 0 ]
then
    echo -e "1\n2\n3"
    i=4
    while [ $i -le $1 ]
    do
        esPrimo $i
        let i=$i+1
    done
else
    echo 'No has introducido ningún argumento'
fi

