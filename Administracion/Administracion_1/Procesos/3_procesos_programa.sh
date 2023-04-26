#!/bin/bash

# 3. Listar los procesos que están ejecutando un determinado programa.

clear
if [ $# -gt 0 ]
then
    echo -e "Se ha ejecutado el comando (ps -C $1)\n"
    ps -C $1  
else
    echo 'No has introducido ningun argumento'
fi

echo ''
read -p "Pulsa intro para continuar "
clear