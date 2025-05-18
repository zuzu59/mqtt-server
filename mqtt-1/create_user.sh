#!/usr/bin/env bash
#Petit script pour créer un user/password pour le broker MQTT
# zf250517.2244, zf250518.0006

# source: https://github.com/sukesh-ak/setup-mosquitto-with-docker

sudo docker exec -it mqtt-1 mosquitto_passwd -c /mosquitto/config/pwfile %1



