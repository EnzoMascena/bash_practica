#!/bin/bash

while true; do
    echo "1. Borrar un fichero"
    echo "2. Visualizar fichero"
    echo "3. Copiar archivo al directorio actual"
    echo "4. Salir..."
    read -p "Elija una opción [1-4]: " op
    
    case "$op" in
        1)
            read -p "Ingrese la ruta del fichero a borrar: " file
            if [ -f "$file" ]; then 
                rm "$file"
                echo "Archivo eliminado correctamente."
            else 
                echo "El archivo no existe."
            fi
            ;;
        2)
            read -p "Ingrese la ruta del fichero a visualizar: " file
            if [ -f "$file" ]; then
                cat "$file"
            else
                echo "El archivo no existe."
            fi
            ;;
        3)
            read -p "Ingrese la ruta del archivo a copiar: " file
            if [ -f "$file" ]; then
                cp "$file" .
                echo "Archivo copiado en el directorio actual."
            else
                echo "El archivo no existe."
            fi
            ;;
        4)
            echo "Saliendo..."
            break
            ;;
        *)
            echo "Opción inválida. Intente de nuevo."
            ;;
    esac
    echo "" # Espacio en blanco para separar iteraciones
done
