#!/bin/bash

# Asignar el primer argumento correctamente (sin espacio)
d="$1"

# Validar si es un directorio
if [ ! -d "$d" ]; then
    echo "Error: '$d' no es un directorio válido"
    exit 1
fi

find "$d" -type f -name "a*" -printf "%f\n" > name
find "$d" -type f -name "*.txt" -printf "%f\n" > extend
find "$d" -type f -perm 644 -printf "%f\n" > perm
find "$d" -type f -size +1k -printf "%f\n" > tam


echo "Búsqueda completada. Resultados guardados en:"
echo "  name   -> archivos que comienzan con 'a'" 
cat name
echo "  extend -> archivos con extensión .txt"
cat extend
echo "  perm   -> archivos con permisos 644" 
cat perm
echo "  tam    -> archivos con tamaño > 1K" 
cat tam
