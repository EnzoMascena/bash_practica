#!/bin/bash

# Verificar que se haya pasado el nombre de usuario
if [ -z "$1" ]; then
    echo "Uso: $0 nombre_usuario"
    exit 1
fi

NUEVO_USUARIO="$1"

# Rutas de los archivos originales
ARCHIVO_USUARIOS="/home/enzo/Escritorio/facu/SistemasOperativos/practicas/TP1/usuarios"
ARCHIVO_GRUPOS="/home/enzo/Escritorio/facu/SistemasOperativos/practicas/TP1/grupo"

# Obtener el último UID y sumarle 1 (si no hay ninguno, empezar en 1000)
ULTIMO_UID=$(cut -d: -f3 "$ARCHIVO_USUARIOS" | grep -E '^[0-9]+$' | sort -n | tail -n1)
if [ -z "$ULTIMO_UID" ]; then
    UID=1000
else
    UID=$((ULTIMO_UID + 1))
fi

# Obtener el último GID del archivo grupo y sumarle 1 (si no hay ninguno, empezar en 1000)
ULTIMO_GID=$(cut -d: -f3 "$ARCHIVO_GRUPOS" | grep -E '^[0-9]+$' | sort -n | tail -n1)
if [ -z "$ULTIMO_GID" ]; then
    GID=1000
else
    GID=$((ULTIMO_GID + 1))
fi

# Construir la línea simulando el alta del usuario
LINEA="$NUEVO_USUARIO:x:$UID:$GID::/home/$NUEVO_USUARIO:/bin/bash"

# Agregar al archivo usuarios
echo "$LINEA" >> "$ARCHIVO_USUARIOS"

echo "Usuario $NUEVO_USUARIO agregado al archivo usuarios con UID $UID y GID $GID"
