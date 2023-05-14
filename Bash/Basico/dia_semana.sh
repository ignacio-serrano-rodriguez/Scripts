#!/bin/bash
# Indica que interpete de comandos va a usar el usuario

echo "0 (nombre del script): $0"
echo "$ (pid [process id] del script): $$"
echo "# (numero de argumentos): $#"
echo "* (argumentos): $*"
echo "1 (valor argumento 1): $1"

read -p "Introduce un numero (0-7): " numero
echo "Has introducido el numero: $numero"

case $numero in
0|7) echo "Domingo";;
1) echo "Lunes";;
2) echo "Martes";;
3) echo "Miercoles";;
4) echo "Jueves";;
5) echo "Viernes";;
6) echo "Sabado";;
*) echo "El numero introducido no está entre (0-7)";;
esac
