#!/bin/bash

# 2. Escribir un script que contabilice el número de directorios y archivos que 
# existan en una ruta dada.

numero=$(ls -l $1 | wc -l)
let numero=$numero-1
echo "$numero"