# znovnc
Petits serveur NoVNC dans un container Docker

zf200312.1918

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

```
x11vnc -loop
```

Le **-loop** c'est pour quand il se déconnecte !

Pour pouvoir se connecter en même temps à plusieurs dessus, partage d'écran, il faut faire:

```
x11vnc -loop -shared
```

Et si on veut vite se mettre un petit mot de passe quand même:

```
x11vnc -loop -shared -passwd toto123
```


## et les tunnels SSH anti Coronavirus ?

```
ssh -R 8082:localhost:8081 zuzu@siipc6.epfl.ch
siipc6:~ zuzu$
ssh -g -L 8081:localhost:8082 zuzu@localhost
```


