#!/bin/bash

# 10. Escribir un script que actúe como una calculadora. 
# El script debe tener la siguiente funcionalidad:
    # 1) Proporcionar un menú para que el usuario seleccione la operación 
        # matemática (suma, resta, multiplicación, división).
    # 2) Proporcionar una opción para salir del script.
    # 3) El usuario debe poder ingresar dos números.
    # 4) El script debe realizar la operación matemática seleccionada y
        # mostrar el resultado al usuario.
    # 5) Se implementará mediante funciones propias.

function suma 
{
    echo "$(($1)) + $(($2)) = $(($1+$2))"
}

function resta 
{
    echo "$(($1)) - $(($2)) = $(($1-$2))"
}

function multiplicacion 
{
    echo "$(($1)) * $(($2)) = $(($1*$2))"
}

function division 
{
    if [ $(($2)) -eq 0 ]
    then
        echo 'No se puede dividir por 0'
    else
        resultado=$(echo "scale=2; $(($1))/$(($2))" | bc)
        echo "$(($1)) / $(($2)) = $resultado"
    fi
}

clear
opcion=1
until [ $opcion -eq 0 ]
do  
    echo -e "\n[Calculadora]"
    echo -e "Elige una opcion:\n1) Suma\n2) Resta\n3) Multplicacion\n4) Division\n0) Salir"
    read opcion
    echo ''

    if [ $opcion -ne 0 ]
    then
        read -p "Introduce dos numeros a operar: " numero1 numero2
    fi

    case $opcion in
        1) suma numero1 numero2;;
        2) resta numero1 numero2;;
        3) multiplicacion numero1 numero2;;
        4) division numero1 numero2;;
        0) echo "Saliendo de la calculadora";;
        *) echo "Opcion no valida";;
    esac

    echo ''
    read -p "Pulsa intro para continuar "
    clear
done