# mqtt-server
Petit script pour monter très facilement un service de broker MQTT

zf250517.2244, zf250518.1732

# Buts

Installer très facilement une ou plusieurs instances de broker MQTT


# Problématiques

Quand on veut bien séparer différents services IoT, on a besoin de plusieurs instance broker MQTT.<br>
Le problème c'est que les adresses ip4 sont rares et chères, le plus simpe donc est de 'containériser' les instances MQTT et jouer sur les différents ports.


# Moyens

On va utiliser et si besoin répliquer les instances broker MQTT sous docker.


# Installation

Il suffit juste d'installer Docker et sa suite avec:

```
./install_docker.sh
```

# Utilisation

Pour chaque instances il faut aller dans le dossier de l'instance et faire:

## Pour démarrer l'instance

```
./start.sh
```

## Pour créer un utilisateur MQTT

```
./create_mqtt_user.sh <user_name>
```

## Pour arrêter l'instance

```
./stop.ch
```

## Pour afficher les logs

```
./show_logs.sh
```

## Pour tout effacer ce qui ne tourne pas

```
./purge.sh
```


# Sources

https://github.com/sukesh-ak/setup-mosquitto-with-docker


