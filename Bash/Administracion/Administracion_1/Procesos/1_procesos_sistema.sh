#!/bin/bash

# 1. Muestra todos los procesos en ejecución en el sistema.

clear
opcion=1
until [ $opcion -eq 0 ]
do  
    echo -e "\n[Procesos Sistema]"
    echo -e "Elige una opcion:\n1) (pstree) -> arbol de procesos del sistema\n2) (pstree -p) -> pstree con subprocesos y PID\n3) (ps aux) -> todos los procesos ejecutandose en el sistema\n4) (ps -e) -> ps aux con otro formato\n0) Salir"
    read opcion
    echo ''

    case $opcion in
        1) pstree;;
        2) pstree -p;;
        3) ps aux;;
        4) ps -e;;
        0) echo "Saliendo del script";;
        *) echo "Opcion no valida";;
    esac

    echo ''
    read -p "Pulsa intro para continuar "
    clear
done