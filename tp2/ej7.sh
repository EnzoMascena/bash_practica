#!/bin/bash

for item in $1/*.txt; do
    if [[ -f "$item" ]]; then
        chmod o+w "$item"
        echo $(basename "$item") >> archivosModificados
    fi
done
