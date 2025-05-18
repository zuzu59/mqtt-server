#!/usr/bin/env bash
#Petit script pour démarrer facilement l'instance MQTT
# zf250517.2244, zf250518.1529

# source: https://github.com/sukesh-ak/setup-mosquitto-with-docker


sudo groupadd -g 1883 mqtt
sudo useradd -u 1883 -g mqtt mqtt
sudo usermod -aG mqtt ubuntu

sudo touch ./config/pwfile
sudo chmod 0700 ./config/pwfile

docker compose up

echo -e "

Noubliez pas de créer un user avec:

./create_user.sh


"

