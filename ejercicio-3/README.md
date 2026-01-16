# 3. Ejercicio 3

![Ejercicio](../resources/imgs/ejercicio3-enunciado-1.png)
![Ejercicio](../resources/imgs/ejercicio3-enunciado-2.png)

## 3.1. Iniciamos el contenedor de Threat Dragon

Ejecutamos los siguientes comandos desde el directorio ejercicio-3:

```bash
chmod +x *-threatdragon.sh # Solo necesario si da error de permisos 

./iniciar-threatdragon.sh
```

## 3.2. Abrimos el modelo

Ingresar al Threat Dragon http://localhost:3000/ , hacemos click en "Login to local session" y seleccionamos la opción "Open an existing threat model"

![Ejercicio](../resources/imgs/3/00-open-modelo.png)

Seleccionamos y abrimos el archivo *Ejercicio3.json*

![Ejercicio](../resources/imgs/3/01-vista-modelo.png)

## 3.2.1. Diagrama de amenazas CIA

Hacemos click en "App Banco - CIA" y se abre el siguiente diagrama:

![Ejercicio](../resources/imgs/3/02-diagrama-cia.png)

> Al hacer click sobre un componente (Ejemplo Backend), podemos visualizar las amenazas relacionadas abajo

## 3.2.2. Diagrama de amenazas STRIDE

Hacemos click en "App Banco - STRIDE" y se abre el siguiente diagrama:

![Ejercicio](../resources/imgs/3/03-diagrama-stride.png)

> Al hacer click sobre un componente (Ejemplo Backend), podemos visualizar las amenazas relacionadas abajo

## 3.2.3. Informe completo

Hacemos click en la opción "Reporte", permite exportar a PDF un reporte con un resumen y el detalle de las amenazas, incluyendo el tipo, descripción y acciones para mitigar (contramedidas):

![Ejercicio](../resources/imgs/3/04-reporte.png)

> Vea el archivo "Reporte-threat-dragon.pdf" para visualizar el resultado.