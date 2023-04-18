#!/bin/bash

# 6. Escribir un script que pida al usuario una cadena de texto y luego imprima el
# número de vocales y consonantes que contiene.

<<<<<<< HEAD
vocales=("a" "e" "i" "o" "u")
consonantes=("q" "w" "r" "t" "y" "p" "s" "d" "f" "g" "h" "j" "k" "l" "ñ" "z" "x" "c" "v" "b" "n" "m")
contadorVocales=0
contadorConsonantes=0

read -p "Introduce una cadena de texto: " cadena
=======
>>>>>>> 9dea415fe8888b83b3a30c9c9df39306bab4cd6f

for (( i=0; i<${#cadena}; i++ ))
do
    caracter="${cadena:$i:1}"
<<<<<<< HEAD
    
    for vocal in ${vocales[@]}
    do
        if [ $caracter = $vocal ]
        then
            let contadorVocales=$contadorVocales+1
        fi
    done

    for consonante in ${consonantes[@]}
    do
        if [ $caracter = $consonante ]
        then
            let contadorConsonantes=$contadorConsonantes+1
        fi
    done

done

echo -e "Numero de vocales = $contadorVocales\nNumero de consonantes = $contadorConsonantes"
=======
>>>>>>> 9dea415fe8888b83b3a30c9c9df39306bab4cd6f
