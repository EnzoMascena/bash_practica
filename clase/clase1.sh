#Crear un script que reciba un directorio y una palaba como parametro.
#Listar todos los archivos que contengan al mens dos lineas esa palabra.
#la busqqueda debe realizar en todo el arbl del direcotrio recibio

#!/bin/bash

d="$1"


if [ ! -d "$d" ]; then
    echo "Error: '$d' no es un directorio válido"
    exit 1
fi

read -p "Ingresa una palabra" palabra

find $d -typef f -name "$palabra" 