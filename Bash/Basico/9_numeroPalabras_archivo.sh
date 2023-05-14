#!/bin/bash

# 9. Escribir un script que reciba un archivo de texto como argumento y 
# luego cuente la cantidad de palabras en el archivo.

if [ -e $1 ]
then
    cat $1 | wc -w
else
    echo 'No existe el fichero pasado como argumento'
fi