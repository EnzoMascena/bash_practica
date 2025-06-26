#!/bin/bash

# Archivo de salida
> perm644

# Iterar sobre todos los archivos del directorio pasado como parámetro
for archivo in "$1"/*; do
    if [[ -f "$archivo" ]]; then
        # Obtener los permisos en formato numérico
        permisos=$(stat -c %a "$archivo")
        
        # Verificar si los permisos son 644
        if [[ "$permisos" -eq 644 ]]; then
            echo "$(basename "$archivo")" >> perm644
        fi
    fi
done

cat perm644