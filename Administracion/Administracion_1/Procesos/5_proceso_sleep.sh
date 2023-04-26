#!/bin/bash

# 5. Crea un script que se ejecute indefinidamente usando sleep.

clear
echo -e "Se ha ejecutado el comando (jobs) para verificar que no hay ningun proceso en segundo plano en terminal"
jobs

echo ''
read -p "Pulsa intro para continuar "

echo -e "\nEjecutamos el comando (sleep 9999 &) para crear un proceso en segundo plano en el terminal"
jobs
sleep 9999 &

echo ''
read -p "Pulsa intro para continuar "

echo -e "\nEjecutamos el comando (jobs) para verificar que existe este proceso en segundo plano\n"
jobs

echo ''
read -p "Pulsa intro para continuar "

# a. Comprueba el uso de la memoria del proceso.
echo -e "\nEjecutamos el comando (ps -o size -C sleep) para comprobar la memoria del proceso\n"
ps -o size -C sleep

echo ''
read -p "Pulsa intro para continuar "

# b. Comprueba el uso de la CPU del proceso.
echo -e "\nEjecutamos el comando (ps -o pcpu -C sleep) para comprobar el uso de cpu del proceso\n"
ps -o pcpu -C sleep

echo ''
read -p "Pulsa intro para continuar "

# c. Muestra los procesos padres del proceso (con dos comandos distintos).
# d. Muestra, si los hay, los procesos hijos del proceso.
echo -e "\nEjecutamos el comando (pstree -p -s PID1) para mostrar el arbol de padres e hijos del proceso sleep\n"
pid1=$(pidof sleep)
pstree -p -s $pid1

echo ''
read -p "Pulsa intro para continuar "

# e. Para el proceso y llévalo a segundo plano.
# f. Lanza otro proceso en segundo plano (gedit, por ejemplo).
echo -e "\nEjecutamos el comando (gedit &) para crear otro proceso en segundo plano"
jobs
gedit &

echo ''
read -p "Pulsa intro para continuar "

# g. Muestra los procesos que se encuentran en segundo plano.
echo -e "\nEjecutamos el comando (jobs) para verificar que existen ambos procesos en segundo plano\n"
jobs

echo ''
read -p "Pulsa intro para continuar "

# h. Lleva a primer plano el proceso inicial.
# i. Termina el proceso
echo -e "\nMatamos a ambos procesos mediante el comando (kill PID1 PID2)"
pid2=$(pidof gedit)
kill $pid1 $pid2

echo ''
read -p "Pulsa intro para continuar "

echo -e "\nEjecutamos el comando (jobs) para verificar que ya no existe ningun proceso en segundo plano"
jobs

echo ''
read -p "Pulsa intro para continuar "