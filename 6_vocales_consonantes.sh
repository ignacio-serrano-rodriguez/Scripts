#!/bin/bash

# 6. Escribir un script que pida al usuario una cadena de texto y luego imprima el
# número de vocales y consonantes que contiene.

vocales="aeuiou"
consonantes="qwrtypsdfghjklñzxcvbnm"
contador=0
echo -e "vocales: $vocales\nconsonantes: $consonantes"

read -p "Introduce una cadena de texto: " cadena
echo "has introducido la cadena ($cadena)"

for (( i=0; i<${#cadena}; i++ ))
do
    caracter="${cadena:$i:1}"
    echo "$caracter"

    for (( j=0; j<${#encontrados}; j++ ))
    do
        caracter2="${encontrados:$j:1}"

        if [ $caracter == $caracter2 ]
        then
            j=${#encontrados}
        fi
        
    done
    
done