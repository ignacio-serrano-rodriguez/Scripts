#!/bin/bash

# 3. Escribir un script que reciba un argumento y compruebe en el directorio actual 
# si existe un archivo o directorio que se llame igual y muestre su contenido.

existe=0

for i in $(ls)
do
    if [ $i = $1 ]
    then
        existe=1
    fi
done

if [ $existe = 1 ]
then
    echo 'Ese archivo o fichero SI existe en el directorio actual'
else
    echo 'Ese archivo o fichero NO existe en el directorio actual'
fi