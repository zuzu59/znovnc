#!/bin/bash
#Petit script pour démarrer tout le binz
#zf200315.1927

#pour installer Docker et Docker compose sur une machine Ubuntu c'est ici:
#https://github.com/zuzu59/docker_demo

docker network create frontend

docker-compose up
exit 


docker-compose up -d
sleep 10
docker-compose exec wordpress0 /root/restore/chown_restore.sh
docker-compose logs -f


echo -e "

pour voir les logs en continu:
docker-compose logs -f

pour voir qu'est-ce qui tourne:
docker-compose ps

pour 'entrer' dans un 'service':
docker-compose exec nom_service /bin/bash
docker-compose exec wordpress0 /bin/bash
docker-compose exec db /bin/bash

pour arrêter:
docker-compose stop

pour redémarrer après un 'stop':
docker-compose start

pour enlever les container mais pas les datas:
docker-compose down

pour enlever les container ET aussi les datas:
docker-compose down -v --remove-orphans


"



