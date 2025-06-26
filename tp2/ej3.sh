#!/bin/bash

#declaro las variables que sea igual a los caracteres

v1=$(wc -l < ej1.sh | cut -d" " -f1)
v2=$(wc -l < ej2.sh | cut -d" " -f1)

# gt: Grather then
# lt: less than
# eq: equal
# ge: Great or equal
# le: less or qual

if [ $v1 -gt $v2 ]; then
	echo "El archivo ej1 tiene mas lineas"
elif [ $v1 -lt $v2 ]; then
	echo "El archivo ej2 tiene mas lineas"
else
	echo "Ambo archivo tienen el mimo numero de lineas"
fi 
