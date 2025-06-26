#!bin/bash

{
    echo "path=$PATH"
    echo "home=$HOME"
    echo "logname=$LOGNAME"
    echo "hostname=$HOSTANEME"
} | sort > var.txt

cat var.txt
