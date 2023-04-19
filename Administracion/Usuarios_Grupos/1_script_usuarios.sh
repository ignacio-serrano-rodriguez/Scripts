#!/bin/bash

# 1. Usuarios:

echo -e "\nMostramos el directorio /home para comprobar que solo tenemos el usuario por defecto"
ls -l /home

# a. Crea el usuario user1, asígnale contraseña y directorio de trabajo por
# defecto.
sudo useradd -m user1
echo -e "\nSe ha creado el usuario (user1) con directorio de trabajo por defecto\n\nMostramos el directorio \home"
ls -l /home
echo -e "\nIntroducimos una nueva contraseña para el usuario user1"
sudo passwd user1

# b. Crea el usuario user2, asígnale contraseña y directorio de trabajo por
# defecto.
sudo useradd -m user2
echo -e "\nSe ha creado el usuario (user2) con directorio de trabajo por defecto\n\nMostramos el directorio \home"
ls -l /home
echo -e "\nIntroducimos una nueva contraseña para el usuario user2"
sudo passwd user2

# c. Comprueba que los usuarios se han creado correctamente sin iniciar
# sesión.

# d. Comprueba que la contraseña de los nuevos usuarios está encriptada.

# e. Cambia el directorio de trabajo de user1 por /home/paco.

# f. Cambia el directorio de trabajo de user2 por /home/paco, ¿es posible?

# Si es posible, vuelve a cambiar el directorio de trabajo de user2 al suyo
# original.

# g. Crea un nuevo grupo con GID 1111. Usando grep comprueba que el
# nombre del nuevo grupo es único.

# h. Asigna el nuevo grupo a los usuarios user1 y user2 como grupo por
# defecto.


# i. Cambia el nombre del nuevo grupo.


# j. Comprueba que el nombre ha cambiado también en la configuración de
# los usuarios user1 y user2.


# k. Elimina el nuevo grupo, ¿es posible?


# l. Elimina user1, de tal forma que se borre su directorio de trabajo.


# m. Elimina user2, borrando su directorio de trabajo.


# n. Finalmente, elimina el nuevo grupo.

sudo userdel -r user1
sudo userdel -r user2