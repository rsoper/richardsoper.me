# richardsoper.me Traefik 2.0

Personal site used for developing my own skills.

https://www.richardsoper.me

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

    - Nothing that I am aware of currently

### Usage

    - Create a .env file in the root directory of this repository
    - Create a ghost.env file in the ghost directory
    - Create an acme.json file in traefik/acme directory
    - Change permissions of acme.json to 600. "chmod 600 /PATH/TO/REPO/traefik/acme/acme.json"
    - Navigate to traefik/traefik.yml and update the email address(unless you want me to know about your certs)
    - Create traefik_proxy network with "docker network create traefik_proxy"
    - With all variable created, run the docker-up.sh script or command "docker-compose -f /PATH/TO/DOCKER/docker-compose.yml up -d"
