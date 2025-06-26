#!/bin/bash

for archivos in /home/enzo/Documento/practicas/tp2/*.sh; do
    if [[ -f $archivos ]]; then
        chmod o+x $archivos
        chmod g+w $archivos
    fi
done    

