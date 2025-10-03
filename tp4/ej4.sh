#!/bin/bash

# Verificar si se pasó un argumento
if [ $# -eq 0 ]; then
    # No se pasó argumento → mostrar todos los procesos
    ps -aux
else
    # Se pasó un argumento
    usuario=$1

    if [ "$usuario" == "root" ]; then
        echo "Error: no se permite mostrar procesos del usuario root."
        exit 1
    else
        # Mostrar procesos del usuario dado
        ps -u "$usuario"
    fi
fi
