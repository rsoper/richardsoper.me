# richardsoper.me Traefik 2.1

Personal site used for developing my own skills.

https://www.richardsoper.me

### Branch goals

    - Reduce the number of labels per-container
    - Maintain automatic certs
    - Include non-docker backends

### Frontend

    - Portainer
    - Ghost
    - NextCloud
    - WordPress
    - PHPMyAdmin

### Tools

    - MySQL
    - watchtower

### Broken

    - Gitea and watchtower not integrated yet

### Usage

    - Create a .env file in the root directory of this repository
    - Navigate to traefik/traefik.yml and update the email address(unless you want me to know about your certs)
    - Create traefik_proxy network with "docker network create traefik_proxy"
    - With all variable created, run the docker-up.sh script or command "docker-compose -f /PATH/TO/DOCKER/docker-compose.yml up -d"
