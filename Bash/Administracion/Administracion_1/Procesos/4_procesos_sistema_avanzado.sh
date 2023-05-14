#!/bin/bash

# 4. Muestra el PID, PPID, uso de la memoria, tiempo de CPU y el nombre del
# proceso de cada proceso.

# PID (pid)
# PPID (ppid)
# uso memoria (size)
# tiempo CPU (pcpu)
# nombre 

clear
echo -e "Se ha ejecutado el comando (ps -eo pid,ppid,size,pcpu,cmd)\n"
ps -eo pid,ppid,size,pcpu,cmd

echo ''
read -p "Pulsa intro para continuar "
clear