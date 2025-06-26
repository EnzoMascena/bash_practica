#!/bin/bash

# Leer el archivo /etc/passwd línea por línea
while read line; do
    echo "$line"
done < /etc/passwd
