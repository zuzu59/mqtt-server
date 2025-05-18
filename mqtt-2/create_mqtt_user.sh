#!/usr/bin/env bash
#Petit script pour créer un user/password pour le broker MQTT
# zf250517.2244, zf250518.1743

# source: https://github.com/sukesh-ak/setup-mosquitto-with-docker

#!/bin/bash

# Vérifier si le nombre d'arguments est inférieur à 1
if [ $# -lt 1 ]; then
    echo -e "
Utilisation: ./create_mqtt_user.sh user
"
    exit 1
fi

#docker exec -it mqtt-1 mosquitto_passwd -c /mosquitto/config/pwfile $1
docker exec -it mqtt-2 mosquitto_passwd /mosquitto/config/pwfile $1

./restart.sh



