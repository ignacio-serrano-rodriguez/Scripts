#!/bin/bash

# 8. Escribir un script que reciba una lista de números como argumento y luego 
# ordene la lista de números en orden ascendente o descendente según la opción 
# que el usuario elija.

if [ $# -gt 0 ]
then

    read -p "Introduce el orden (ascendente/descendente) " orden

    if [ $orden = "ascendente" ]
    then
        echo 'Orden ascendente'

    else
        if [ $orden = "descendente" ]
        then
            echo 'Orden descendente'
        
        else
            echo 'Orden no valida'
        fi
    fi

else
    echo 'No has introducido ningún argumento'
fi