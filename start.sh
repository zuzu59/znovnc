#!/bin/bash
#Petit script pour démarrer le binz
#zf200312.1753

# source: https://hub.docker.com/r/dougw/novnc


#test si l'argument est vide
if [ -z "$1" ]
  then
    echo -e "

Usage: ./start.sh.sh adresse_ip_serveur_VNC port_serveur_VNC

Exemple:

./start.sh 192.168.0.115 5900

Après avec un browser:

http://localhost:8081/vnc.html


"

    exit
fi



docker run -e REMOTE_HOST=$1 -e REMOTE_PORT=$2 -p 8081:8081 dougw/novnc
