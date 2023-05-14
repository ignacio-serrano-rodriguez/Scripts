#!/bin/bash

# 8. Escribir un script que reciba una lista de números como argumento y luego 
# ordene la lista de números en orden ascendente o descendente según la opción 
# que el usuario elija.

if [ $# -gt 0 ]
then

    contador=0
    for argumento in $@
    do
        numeros[contador]=$argumento
        let contador=$contador+1
    done

    read -p "Introduce el orden (ascendente/descendente) " orden

    if [ $orden = "ascendente" ]
    then
        ordenados=( $( printf "%s\n" "${numeros[@]}" | sort -n ) )
        echo "Orden ascendente: ${ordenados[*]}"

    else
        if [ $orden = "descendente" ]
        then

            ordenados=( $( printf "%s\n" "${numeros[@]}" | sort -n ) )
            echo -n "Orden descendente:"

            let i=$#
            while [ $i -ge 0 ]
            do
                echo -n "${ordenados[$i]} "
                let i=$i-1
            done

            echo ''
        
        else
            echo 'Orden no valida'
        fi
    fi

else
    echo 'No has introducido ningún argumento'
fi