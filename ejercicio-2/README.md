# 2. Ejercicio 2

![Ejercicio](../resources/imgs/ejercicio2-enunciado.png)

## 2.1. Montamos las instancias de Jenkins y Dependency-Track

Seguir los [pasos para montar e iniciar los contenedores](../resources/docker/README.md)

## 2.2. Configuramos Api-Key en dependency-track

- Ingresamos a dependency-track en  http://localhost:8082 con el Usuario: admin, Password: admin y luego realizamos el proceso de cambio de password por defecto

- Ingresamos a la opción "Administration", "Access Management" y luego "Teams"

![Ejercicio](../resources/imgs/2/07-crear-api-key-1.png)

- Hacemos click en "Administrators" y luego en el signo "+" de API KEYS, automáticamente se generará una:

![Ejercicio](../resources/imgs/2/08-crear-api-key-2.png)

> ### ***OBS:*** Es muy importante copiar y guardar esta API-KEY

## 2.3. Obtenemos el API-KEY de Defect Dojo

Ingresamos a Defect Dojo: http://localhost:8083 con las credenciales creadas (ver item 2.1), luego ingresamos al ícono del usuario y luego "API v2 Key"

![Ejercicio](../resources/imgs/2/13-defect-dojo-key.png)

> ### Copiamos el valor correspondiente a: *Your current API key is*

## 2.4. Configuramos las credenciales dependency-track y Defect Dojo en Jenkins

- Ingresamos e inicializamos la instancia de Jenkins http://localhost:8080

- Abrimos la opción "Manage Jenkins" (icono del engranage) y luego "Credentials"

![Ejercicio](../resources/imgs/2/09-jenkins-credentials-1.png)

- Vamos a "System", "Global Credentials (unrestricted)" y luego "+ Add Credentials"

![Ejercicio](../resources/imgs/2/10-jenkins-credentials-2.png)

- El formulario completamos de la siguiente manera:
    - En "Kind" seleccionamos "secret text"
    - En "Secret" completamos con la API-KEY de dependency-track (Paso 2.3)
    - En "ID" completamos con "dependency-track-api-key"
    - Hacemos click en "Create"

![Ejercicio](../resources/imgs/2/11-jenkins-credentials-3.png)

- Repetimos este proceso (item 2.4) para crear credenciales para Defect-Dojo, con el ID "defectdojo-api-key" y en "Secret" completamos con el valor copiado en el item 2.3.

## 2.5. Instalamos el plugin dependency-track en Jenkins

- Abrimos la opción "Manage Jenkins" (icono del engranage), "Plugins",  "Available Plugins" y buscamos "dependency-track". Marcamos e Instalamos:

![Ejercicio](../resources/imgs/2/12-jenkins-plugin.png)

## 2.6. Creamos y configuramos el pipeline

### 2.6.1. Crear un pipeline

Creamos un Item llamado "ejercicio2" de tipo pipeline.
![Ejercicio](../resources/imgs/2/01-crear-pipeline.png)

### 2.6.2. Crear un parámetro para ejecutar o no los Security Gates

- Marcamos la opción "This project is parameterized", luego click en "Add Parameter" y seleccionamos "Boolean Parameter"

![Ejercicio](../resources/imgs/2/15-jenkins-parametro-1.png)

- Completamos los campos de la siguiente manera:

![Ejercicio](../resources/imgs/2/16-jenkins-parametro-2.png)

### 2.6.3. Apuntar a Jenkinsfile
En la sección  "Definition" seleccionamos la opción "Pipeline script from SCM", y allí completamos con 
- "Repository URL" con https://github.com/francoprieto/trabajo-final.git

![Ejercicio](../resources/imgs/2/03-apuntar-jenkinsfile-1.png)

- "Branch Specifier (blank for 'any')" completar con: */main

![Ejercicio](../resources/imgs/2/04-apuntar-jenkinsfile-2.png)

- "Script Path" completar con: ./ejercicio-2/Jenkinsfile

![Ejercicio](../resources/imgs/2/05-apuntar-jenkinsfile-3.png)

## 2.7. Ejecutamos el pipeline

- Al ingresar al Pipeline "ejercicio2" hacemos click en "Build with Parameters"

![Ejercicio](../resources/imgs/2/17-jenkins-ejecutar.png)

> Si marcamos SECURITY_GATE se ejecutarán los security gates con Bandit y Dependency-Track. Si dejamos desmarcado esto se omitirá.

### 2.7.1. Ejemplo de resultado de ejecución sin Security Gates

![Ejercicio](../resources/imgs/2/18-jenkins-ejecucion-sin-gates.png)

### 2.7.2. Ejemplo de resultado de ejecución con Security Gates

![Ejercicio](../resources/imgs/2/19-jenkins-ejecucion-con-gates.png)

Verificamos el "Console Output" y vemos que el Security Gate de Bandit provocó que el pipeline falle:

![Ejercicio](../resources/imgs/2/20-jenkins-ejecucion-con-gates-log.png)


## 2.8. Integración con Dependency-Track

- Ingresamos a Dependency-Track: http://localhost:8082 y vamos al menú "Projects", encontramos a "Pygoat"

![Ejercicio](../resources/imgs/2/21-dt-project.png)

- Entramos a pygoat y luego vamos a la pantalla "Components" visualizamos las dependencias del projecto:

![Ejercicio](../resources/imgs/2/22-dt-project-deps.png)


## 2.9. Integración con DefectDojo

- Ingresamos a DefectDojo: http://localhost:8083 y encontramos que existe "*1 Active Engagement*" y varios Hallazgos (findings):

![Ejercicio](../resources/imgs/2/23-dd-inicio.png)

- Hacemos click en "View Engagement Details" y nos muestra la información del *engagement*:

![Ejercicio](../resources/imgs/2/24-dd-engagement.png)

- Hacemos nuevamente click sobre el nombre del *Engagement* que en este caso es "CI - master" y vemos la información de los análisis de las herramientas utlizadas:

![Ejercicio](../resources/imgs/2/25-dd-test.png)

- Vamos a la pestaña "Findigs" y seleccionamos "View Active Findings" veremos la lista de hallazgos:

![Ejercicio](../resources/imgs/2/26-dd-findings.png)
