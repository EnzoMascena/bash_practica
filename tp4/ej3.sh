#!/bin/bash

#ps te muestra los comandos que estan en el sistema
#ps aux: muestra todos los procesos que se usan en el sistema
#el nombre de usuario es la primer columna y el PID e la segunda columna

# 1) Crear archivo "process"
touch process

# 2) Guardar en "process" todos los procesos actuales (ps -aux)
ps -aux > process

# 3) Extraer usuario y PID y guardarlos en "solousu"
#    $1 = USER, $2 = PID en la salida de ps -aux
awk '{print $1, $2}' process > solousu

# 4) Comprimir y empaquetar en proc-usu.tar.gz
tar -czf proc-usu.tar.gz process solousu

echo "Listo! Se generó proc-usu.tar.gz con process y solousu."
