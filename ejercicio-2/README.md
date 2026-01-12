# 2. Ejercicio 2

![Ejercicio](../resources/imgs/ejercicio2-enunciado.png)

## 2.1. Montamos una instancia de Jenkins

Seguir los "pasos de para instalar y ejecutar jenkins en docker".

## 2.2. Crear y configurar el pipeline

### 2.2.1. Crear un pipeline

Creamos un Item llamado "ejercicio2" de tipo pipeline.
![Ejercicio](../resources/imgs/2/01-crear-pipeline.png)

### 2.2.2. Apuntar a proyecto github
Marcamos la opción "GitHub project" y en "Project url" completamos con:
https://github.com/francoprieto/trabajo-final.git/

![Ejercicio](../resources/imgs/2/02-apuntar-github.png)

### 2.2.3. Apuntar a Jenkinsfile
En la sección  "Definition" seleccionamos la opción "Pipeline script from SCM", y allí completamos con 
- "Repository URL" con https://github.com/francoprieto/trabajo-final.git

![Ejercicio](../resources/imgs/2/03-apuntar-jenkinsfile-1.png)

- "Branch Specifier (blank for 'any')" completar con: */main

![Ejercicio](../resources/imgs/2/04-apuntar-jenkinsfile-2.png)

- "Script Path" completar con: ./ejercicio-2/Jenkinsfile

![Ejercicio](../resources/imgs/2/05-apuntar-jenkinsfile-3.png)


3. Ejecutar el pipeline y verificar el "bandit_report.json" resultante.
