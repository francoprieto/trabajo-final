#!/bin/bash
cd ./jenkins
# Construimos la imagen para Jenkins
docker build -t myjenkins-blueocean:2.516.3-1 .

cd ../python
docker build -t my-python:1.1.0 .

cd ..

# Obtenemos el GID del grupo docker (necesario para compartir el docker.sock)
export DOCKER_GID=$(getent group docker | awk -F: '{print $3}')

docker compose up -d

# Esperamos para crear el usuario
sleep 2

# Inicializamos la DB de DefectDojo
docker compose exec uwsgi python manage.py migrate --noinput

read -rp "Es la primera vez? Desea generar el superusuario para DefectDojo? (s=sí, n=no.. no por defecto)" gensu
if [ "$gensu" == "s" ]; then
    echo "Generación de administrador en DefectDojo..."
    docker compose exec uwsgi python manage.py createsuperuser
else
    echo "Creación de administrador omitida.."
fi;

sleep 2
echo "------------------ Lista de contenedores ------------------"
docker ps --all