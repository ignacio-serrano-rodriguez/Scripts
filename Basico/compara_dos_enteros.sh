#!/bin/bash
# Indica que interpete de comandos va a usar el usuario

echo "0 (nombre del script): $0"
echo "# (numero de argumentos): $#"
echo "* (argumentos): $*"
echo "1 (valor argumento 1): $1"
echo "2 (valor argumento 2): $2"

numero1=$1
numero2=$2

if [ $numero1 -gt $numero2 ]
then

    echo "$numero1 es mayor que $numero2"

elif [ $numero1 -lt $numero2 ]
then

    echo "$numero2 es mayor que $numero1"

else

    echo "Son iguales"

fi
