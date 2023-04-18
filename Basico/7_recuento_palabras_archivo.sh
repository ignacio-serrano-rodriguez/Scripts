#!/bin/bash

# 7. Escribir un script que reciba un archivo de texto como argumento y 
# luego cuente el número de veces que se repite cada palabra en el archivo.

contador=0

while read linea; do
    for palabra in $linea; do
        numero=$(grep -o -i $palabra $1 | wc -l)
        palabras[contador]="$palabra-$numero"
        let contador=$contador+1
    done
done <$1

printf "%s\n" "${palabras[@]}" | sort -u