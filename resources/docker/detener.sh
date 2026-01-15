#!/bin/bash

docker compose down
sleep 3

echo "------------------ Lista de contenedores ------------------"
docker ps --all