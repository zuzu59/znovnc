#!/bin/bash
#Petit script pour démarrer le binz
#zf191011.1724

# source: https://hub.docker.com/r/dougw/novnc

docker run -e REMOTE_HOST=128.178.1.196 -e REMOTE_PORT=5900 -p 8081:8081 dougw/novnc

