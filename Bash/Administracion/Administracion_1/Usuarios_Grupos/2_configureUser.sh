#!/bin/bash

# 2. Crea un script de bash llamado configureUser.sh que:
clear
echo -e "\n[configureUser.sh]\n"

# i. Crea un usuario y le asigne una contraseña
read -p "Introduce el nombre de un nuevo usuario: " usuario
sudo useradd $usuario
echo -e "\nIntroducimos una nueva contraseña para el usuario $usuario"
sudo passwd $usuario

# ii. Crea un nuevo grupo que tenga otro nombre que el usuario nuevo.
echo ''
read -p "Introduce el nombre de un nuevo grupo: " grupo
sudo groupadd $grupo

# iii. Asigna el usuario creado al nuevo grupo.
echo -e "\nIntroducimos el usuario $usuario al grupo $grupo"
sudo usermod $usuario -a -G $grupo

echo -e "\nMostramos la información del usuario creado"
id $usuario
echo ''