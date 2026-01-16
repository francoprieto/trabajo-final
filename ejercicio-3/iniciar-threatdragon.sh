#!/bin/bash

docker pull owasp/threat-dragon:v2.5.0

docker run -d --name "threat-dragon" -v $(pwd)/entorno-threatdragon:/app/.env -p 3000:3000 owasp/threat-dragon:v2.5.0