## Trabajo final Curso de Seguridad Informática

### Información del entorno:
- Linux Debian 13 - Linux kernel 6.18.3

- Docker

```bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh
```
Fuente: https://docs.docker.com/engine/install/debian/

 - Docker en modo rootless (sin privilegio root)
```bash
sudo systemctl disable --now docker.service docker.socket
sudo rm /var/run/docker.sock

dockerd-rootless-setuptool.sh install

sudo systemctl enable docker
sudo systemctl start docker
```
Fuente: https://docs.docker.com/engine/security/rootless/



