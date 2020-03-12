# znovnc
Petits serveur NoVNC dans un container Docker

zf200312.1805

## Utilisation
NoVNC permet de se connecter en VNC sur une machine distante sans devoir installer un client VNC. On utilise pour cela simplement le browser.<br>
C'est aussi très pratique pour passer le flux VNC via un port HTTP ou HTTPS, pour les prestataires Internet qui filtrent le réseau !<br>

Il suffit simplement de faire:

```
./start.sh.sh adresse_ip_serveur_VNC port_serveur_VNC
```

Exemple:
```
./start.sh 192.168.0.115 5900
```

Après avec un browser:

http://localhost:8081/vnc.html

Si on veut faire tourner le container docker en tâche de fond, il faut ajouter '-d' dans la commande *docker run* !

## Goodies
Si on veut rapidement partager son écran via VNC sous Linux, il suffit juste d'installer **x11vnc** et de lancer à la volée. Pas besoin de mot de passe ;-)



