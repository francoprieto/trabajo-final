#!/bin/bash

# Construimos la imagen para Jenkins
docker build -t myjenkins-blueocean:2.516.3-1 .

# Obtenemos el GID del grupo docker (necesario para compartir el docker.sock)
export DOCKER_GID=$(getent group docker | awk -F: '{print $3}')

docker compose up -d