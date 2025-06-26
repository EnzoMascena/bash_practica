#!/bin/bash

if [ ! -f ../tp1.tar.gz ]; then
	echo "No existe el archivo necesrio"
	exit
fi

mkdir -p nuevo

tar -xf ../tp1.tar.gz -C nuevo

grep -w "ls" /home/enzo/Escritorio/facu/SistemasOperativos/practicas/TP1/hist.txt >> listado.txt

tar -czf listdo.tar.gz listado.txt

cat listado.txt
