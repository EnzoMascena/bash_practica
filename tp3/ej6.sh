#!/bin/bash 

d="$1"

echo "Archivos modificados los ultimos 30 minutos"
find "$d" -type f -mmin -30

echo "Archivos accedidos los ultimos 60 minutos"
find "$d" -type f -amin -60

echo "Archivos modificados los ultimos 5 dias"
find "$d" -type f -mtime -5

echo "Archivos modifciados hace mas de 10 dias"
find "$d" -type f -mtime +10