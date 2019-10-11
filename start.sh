#!/bin/bash
#Petit script pour démarrer le binz
#zf191011.1734

# source: https://hub.docker.com/r/dougw/novnc


#test si l'argument est vide
if [ -z "$1" ]
  then
    echo -e "\nUsage: ./start.sh.sh adresse ip du serveur VNC remote \n\n"
    exit
fi



docker run -e REMOTE_HOST=$1 -e REMOTE_PORT=5900 -p 8081:8081 dougw/novnc

