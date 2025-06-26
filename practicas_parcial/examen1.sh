#realizar un script que recorra por directorio y pase por parametro
#cuente la cantidad de archivos que tienen la palabra "bash"
#y a los que no tengan esa palabra enviar el nombre a un archivo llamado nobash

#!/bin/bash

directorio=$1

# Validar si se pasó un directorio como parámetro
if [[ ! -d $directorio ]]; then
    echo "Debe ingresar un directorio válido como parámetro."
    exit 1
fi

archivo_bash=0
> nobash.txt  # Limpiar el archivo nobash.txt

# Recorrer los archivos en el directorio
for archivo in "$directorio"/*; do
    if [[ -f "$archivo" ]]; then
        if grep -q "bash" "$archivo"; then
            ((archivo_bash++))  # Forma moderna y segura de incrementar
        else
            echo "$(basename "$archivo")" >> nobash.txt
        fi
    fi
done

echo "La cantidad de archivos que contienen la palabra 'bash' en el directorio '$directorio' es: $archivo_bash"
echo "Los archivos que no contienen la palabra 'bash' son:"
cat nobash.txt
