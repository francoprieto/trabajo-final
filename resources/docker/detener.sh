#!/bin/bash

docker compose down

echo "------------------ Lista de contenedores ------------------"
docker ps --all