# Pasos para instalar y ejecutar jenkins en docker

1. Crear la imagen de Jenkins usando el siguiente comando:

```bash
cd ./resources/jenkins/
docker build -t myjenkins-blueocean:2.516.3-1 .
```

2. Crear y ejecutar el contenedor con Jenkins:

```bash
docker run --name jenkins-blueocean --restart=on-failure --detach --publish 8080:8080 --publish 50000:50000 --volume jenkins-data:/var/jenkins_home --volume /run/user/1000/docker.sock:/var/run/docker.sock --group-add=$(getent group docker | awk -F: '{print $3}') myjenkins-blueocean:2.516.3-1
```

3. Configurar el contenedor Jenkins ingresando a:
http://localhost:8080

