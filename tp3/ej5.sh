#!/bin/bash

d="$1"
m="$2"

echo "Archivos modificados en el mes $m dentro de $d"

find "$d" -type f | while read -r file; do
    mes_mod=$(stat -c %y "$file" | cut -d'-' -f2)

    if [ "$mes_mod" == "$m" ]; then
        echo "$file"
    fi
done

