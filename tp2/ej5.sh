#!/bin/bash

if [ ! -d $1 ]; then
	echo "Debe ingresar un dir como parameto"
	exit
fi
# ya estoy seguro que de trabajo en un directorio

arch=0
dir=0
for item in $1/*; do
	if [ -f "$item" ]; then
		let arch=arch+1
	fi
	if [ -d "$item" ]; then
		let dir=dir+1
	fi
done

echo "resultados"
echo "archivos: $arch"
echo "directorios: $dir"
