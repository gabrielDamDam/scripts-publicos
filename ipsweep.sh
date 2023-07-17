#!/bin/bash

##Scripts para pingar IP's de uma subnet especifica

##O Comando GREP filtra todas as comunicações que foram estabilizadas

##Os comandos a partir do CUT são para que apenas o IP seja mostrado
##na resposta

if [ "$1" == "" ]
then
echo "Forgot an IP Address"
echo "Syntax: ./ipsweeps.h 192.168.4"
 
else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | sed 's/.$//' &
done
fi
