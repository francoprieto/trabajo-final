# Montar contenedores docker

- Requisitos: tener configurado el [entorno](../../README.md)

## Iniciar los contenedores

Dentro del directorio *resources/docker* ejecutar los siguientes comandos:
```bash
chmod +x iniciar.sh # <-Necesario si da error de permiso de ejecución
./iniciar.sh
```
> ### Crear usuario para Defect Dojo
>
> Al ejecutar el script iniciar.sh, preguntará si desea crear un super usuario (usuario administrador) en Defect Dojo. Este proceso es necesario realizar la primera vez que se ejecuta el script, las veces siguientes puede ser omitido.


Al final de la ejecución, se listará los contenedores creados e iniciados

![Ejercicio](../../resources/imgs/docker/00-inicio.png)



## Detener los contenedores
Dentro del directorio *resources/docker* ejecutar los siguientes
comandos:
```bash
chmod +x detener.sh # <-Necesario si da error de permiso de ejecución
./detener.sh
```
> Este proceso elimina los contenedores pero no sus datos (o volúmenes)

Al final de la ejecución, se listará los contenedores en ejecución (debería estar vacía)