#!/usr/bin/env bash
#Petit script pour tout purger  facilement l'instance MQTT
# zf250517.2244, zf250518.1710

# source: https://github.com/sukesh-ak/setup-mosquitto-with-docker

read -p "Etes-vous certain de vouloir tout effacer ?"
read -p "Mais cela va VRAIMENT VRAIMENT tout effacer!"

docker compose stop
docker system prune -a -f --volumes
sudo rm ./data/mosquitto.db
sudo rm ./config/pwfile


