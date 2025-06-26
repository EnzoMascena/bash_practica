#!bin/bash

# $# devuelve la cantidad de parametros
# $1 a $9 los primeros parametros
# $arroba array con todos los parrametros

if [ ! -d $ ]; then
	echo "Debe ingresar un directorio como parametro"
	exit
fi

cant_dir=0;
cant_arch=0;

for i in $1/*; do
	if [ -d $i ]; then
		let $cant_dir=$cant_dir+1
	fi
	if [ -f $i ]; then
		let $cant_arch ++
	fi
done

echo "la canidad de directorios $cant_dir"
echo "La cantidad de archivos  $cant_arch"
