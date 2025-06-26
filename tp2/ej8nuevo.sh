#!/bin/bash
> perfil.txt 
uid=$(tail -1 /etc/passwd | cut -d ":" -f3) 
gid=$(tail -1 /etc/passwd | cut -d ":" -f4) 
shell=$(tail -1 /etc/passwd | cut -d ":" -f7) 

echo "El uid es: $uid" >> perfil.txt
echo "El uid es: $gid" >> perfil.txt
echo "El uid es: $shell" >> perfil.txt

cat perfil.txt