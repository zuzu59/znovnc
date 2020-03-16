#!/bin/bash
#Petit script pour démarrer les 7 instances du binz
#zf200316.2218

# source: https://hub.docker.com/r/dougw/novnc

cd novnc1
./start.sh

cd ../novnc2
./start.sh

cd ../novnc3
./start.sh

cd ../novnc4
./start.sh

cd ../novnc5
./start.sh

cd ../novnc6
./start.sh

cd ../novnc7
./start.sh


