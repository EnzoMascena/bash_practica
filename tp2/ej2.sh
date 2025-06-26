#!/bin/bash

#Limpar pantalla
clear
espacio_disponible=$(df -h | grep -w / | awk '{print $4}')
echo "El espacio disponible es:  $espacio_disponible"