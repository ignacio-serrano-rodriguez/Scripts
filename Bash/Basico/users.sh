#!/bin/bash

echo -e "\nDescripción: muestra usuario, UID y GID del archivo /etc/passwd Se ordenan por UID numericamente de menor a mayor\n"

cut -d ':' -f 1,3,4 /etc/passwd | sort -t ':' -k 2 -n