# richardsoper.me Traefik 2.2

Personal site used for developing my own skills.
Tested primarily on Raspberry Pi 4 running Raspbian lite.

https://www.richardsoper.me

### Frontend - Exposed to traefik

    - Portainer
    - Ghost
    - NextCloud
    - WordPress
    - PHPMyAdmin
    - Gitea
    - Grafana

### Tools - Not exposed to traefik

    - mariaDB
    - homeassistant

### Monitoring backend - Not exposed to traefik

    - Prometheus
    - Node Exporter
    - Arm Exporter
    - cAdvisor

### Usage

    - Create a .env file in the root directory of this repository
    - Create a ghost.env file in the ghost directory
    - Create an acme.json file in traefik/acme directory
    - Change permissions of acme.json to 600. "chmod 600 richardsoper.me/traefik/acme/acme.json"
    - Create .htpasswd basic auth file for Traefik dashboard "htpasswd -c richardsoper.me/shared/.htpasswd your_username"
    - Navigate to traefik/traefik.yml and update the email address(unless you want me to know about your certs)
    - Create traefik_proxy network with "docker network create traefik_proxy"
    - With all variable created, run command "docker-compose up -d" from the root directory of this repository
    - For monitoring, run command "docker-compose -f ./monitoring/docker-compose.yml up -d"

### Future work

    - Integrate non-docker services(Pi-hole, etc)
    - Mount NFS volumes(Progress made on swarm branch)
    - Deploy as docker swarm across architectures
