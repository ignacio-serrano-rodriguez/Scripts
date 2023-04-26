#!/bin/bash

# 1. 1. Añade una tarea al fichero crontab que guarde en un fichero la fecha y hora del
# sistema. Se tiene que repetir cada minuto de los jueves de cada semana.

# Ejecutamos el comando: crontab -e
# Se ejecuta nano para el fichero /var/spool/cron/crontabs/usuaio
# Añadimos la siguiente linea al final del fichero:
    # 