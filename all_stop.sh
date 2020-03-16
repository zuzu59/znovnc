#!/bin/bash
#Petit script pour arrêter les 7 instances du binz
#zf200316.2224

# source: https://hub.docker.com/r/dougw/novnc

cd novnc1
./stop.sh

cd ../novnc2
./stop.sh

cd ../novnc3
./stop.sh

cd ../novnc4
./stop.sh

cd ../novnc5
./stop.sh

cd ../novnc6
./stop.sh

cd ../novnc7
./stop.sh


