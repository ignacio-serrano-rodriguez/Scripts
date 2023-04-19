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
echo -e "\nHacemos uso del fichero (/etc/passwd) para comprobar que se han creado ambos usuarios"
cat /etc/passwd | grep 'user1'
cat /etc/passwd | grep 'user2'

# d. Comprueba que la contraseña de los nuevos usuarios está encriptada.
echo -e "\nHacemos uso del fichero (/etc/shadow) con permisos de administrador para comprobar que las contraseñas están encriptadas"
sudo cat /etc/shadow | grep 'user1'
sudo cat /etc/shadow | grep 'user2'

# e. Cambia el directorio de trabajo de user1 por /home/paco.
echo -e "\nAplicamos el comando (usermod -md [nuevaRuta] [usuario]) con permisos de administrador para cambiar el directoriod e trabajo del usuario user1"
sudo usermod -md /home/paco user1
echo -e "\nMostramos el directorio \home para verificar los cambios realizados"
ls -l /home

# f. Cambia el directorio de trabajo de user2 por /home/paco, ¿es posible?
echo -e "\nRealizamos lo mismo para el usuario user2"
sudo usermod -md /home/paco user2
echo -e "\nNo se realiza el cambio ya que este directorio de usuario ya existe\n\nMostramos el directorio \home para verificar que no se realizado ningún cambio"
ls -l /home

# Si es posible, vuelve a cambiar el directorio de trabajo de user2 al suyo
# original.
echo -e "\nAsignamos de nuevo el usuario user2 a su directorio de usuario original"
sudo usermod -md /home/user2 user2
echo -e "\nNo se realiza el cambio porque el directorio de trabajo del usuario user2 no cambió en ningún momento\n\nMostramos el directorio \home para verificar que no se realizado ningún cambio"
ls -l /home

# g. Crea un nuevo grupo con GID 1111. Usando grep comprueba que el
# nombre del nuevo grupo es único.
echo -e "\nCreamos un nuevo grupo con GID 1111"
sudo groupadd nuevoGrupo -g 1111
echo -e "\nHacemos uso del fichero (/etc/group) comprobar que el grupo creado existe"
sudo cat /etc/group | grep '1111'

# h. Asigna el nuevo grupo a los usuarios user1 y user2 como grupo por
# defecto.
echo -e "\nComprobamos el GID por defecto de los usuarios creados mediante el comando (id)"
id user1
id user2
echo -e "\nModificamos el grupo por defecto de ambos usuarios con permisos de administrador con el comando (usermod -g)"
sudo usermod user1 -g nuevoGrupo
sudo usermod user2 -g nuevoGrupo
echo -e "\nComprobamos los cambios realizados mediante el comando (id)"
id user1
id user2

# i. Cambia el nombre del nuevo grupo.
echo -e "\nCambiamos el nombre del nuevo grupo creado"
sudo groupmod -n "grupoConNuevoNombre" "nuevoGrupo"
echo -e "\nHacemos uso del fichero (/etc/group) para comprobar el cambio realizado"
sudo cat /etc/group | grep '1111'

# j. Comprueba que el nombre ha cambiado también en la configuración de
# los usuarios user1 y user2.
echo -e "\nComprobamos los cambios realizados en los usuarios con el comando (id)"
id user1
id user2

# k. Elimina el nuevo grupo, ¿es posible?
echo -e "\nEliminamos el grupo con el GID 1111"
sudo groupdel grupoConNuevoNombre
echo -e "\nNo podemos porque es el grupo primario de un usuario existente"

# l. Elimina user1, de tal forma que se borre su directorio de trabajo.
echo -e "\nEliminamos el usuario user1 con permisos de administrador junto con su directorio de trabajo con el comando (userdel -r)"
sudo userdel -r user1

# m. Elimina user2, borrando su directorio de trabajo.
echo -e "\nRealizamos el mismo procedimiento para el usuario user2"
sudo userdel -r user2

# n. Finalmente, elimina el nuevo grupo.
echo -e "\nBorramos el nuevo grupo creado"
sudo groupdel grupoConNuevoNombre

echo -e "\nBorramos los grupos user1 y user2 ya que son residuos al haber cambiado los grupos por defecto"
sudo groupdel user1
sudo groupdel user2

echo -e "\nMostramos el directorio (/home) y los archivos (etc/passwd) y (etc/groups) para comprobar que todo se ha eliminado"
ls -l /home
cat /etc/passwd | grep 'user1'
cat /etc/passwd | grep 'user2'
sudo cat /etc/group | grep '1111'