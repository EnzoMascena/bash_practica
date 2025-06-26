#!/bin/bash

# Crear archivo usuarios con los primeros 3 usuarios reales del sistema
cut -d: -f1 /etc/passwd | head -n 3 > usuarios

# Limpiar o crear archivo perfil.txt
> perfil.txt

# Leer usuarios usando for
for usuario in $(cat usuarios); do
    linea=$(grep "^$usuario:" /etc/passwd)

    if [ -n "$linea" ]; then
        IFS=':' read -r nombre pass uid gid desc home shell <<< "$linea"
        echo "Usuario: $nombre - UID: $uid - GID: $gid - Shell: $shell" >> perfil.txt
    else
        echo "Usuario: $usuario no encontrado en /etc/passwd" >> perfil.txt
    fi
done

# Mostrar en pantalla el contenido de perfil.txt
echo "Contenido del archivo perfil.txt:"
cat perfil.txt
