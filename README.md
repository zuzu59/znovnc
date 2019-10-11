# znovnc
Petits tests de NoVNC dans un container Docker

## Utilisation
NoVNC permet de faire VNC sans devoir installer un client VNC, on utilise pour cela simplement le browser.<br>
C'est aussi très pratique pour passer le flux VNC via un port HTTP ou HTTPS, pour les prestataires internet qui filtrent le réseau !<br>

Il suffit simplement de faire:
```
./start.sh adrs_ip_serveur_vnc_remote
```

Après on se connecte avec son serveur sur:
```
ad_ip:8081
```

Si on veut faire tourner le container docker en tâche de fond, il faut ajouter '-d' dans la commande *docker run* !


zf191011.1735
