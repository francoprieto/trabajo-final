# Ejercicio 1

![Ejercicio](../resources/imgs/ejercicio1-enunciado.png)

- [x] Realizar un análisis sobre el proyecto pygoat con Bandit
- [ ] Remediar 3 a 5 vulnerabilidades
- [ ] Buscar información sobre cada vulnerabilidad y su remediación 
- [ ] Mapear con OWASP Top 10 e investigar el CWE al que pertenece

## Análisis de proyecto pygoat con bandit

1. Preparar jenkins (ver "Pasos para instalar y ejecutar jenkins en docker")

2. Se crea un Item llamado "ejercicio1" de tipo pipeline y configurar de la siguiente manera:

2.1. Marcar la opción "GitHub project" y en "Project url" completar con:
https://github.com/francoprieto/trabajo-final.git/

2.2. En la sección  "Definition" seleccionar la opción "Pipeline script from SCM", y allí completar 
- "Repository URL" con https://github.com/francoprieto/trabajo-final.git

- "Branch Specifier (blank for 'any')" completar con: */main

- "Script Path" completar con: ./ejercicio-1/Jenkinsfile

3. Ejecutar el pipeline y verificar el "bandit_report.json" resultante.
