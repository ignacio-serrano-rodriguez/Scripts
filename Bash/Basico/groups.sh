#!/bin/bash

echo -e "\nDescripción: muestra usuario, GID (identificador grupo) y grupos a los que pertenece del archivo /etc/group Se ordenan por GID numericamente de menor a mayor\n"

cut -d ':' -f 1,3,4 /etc/group | sort -t ':' -k 2 -n