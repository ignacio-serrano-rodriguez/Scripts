#!/bin/bash

echo -e "\nDescripción: actualiza el sistema para los gestores de paquetes (apt) y (apt-get) con los comandos (update) (upgrade) (autoremove)\n"

sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get autoremove -y