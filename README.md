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

    - Nothing that I am aware of currently

### Usage

    - Create a .env file in the root directory of this repository
    - Create a ghost.env file in the ghost directory
    - Create an acme.json file in traefik/acme directory
    - Change permissions of acme.json to 600. "chmod 600 richardsoper.me/traefik/acme/acme.json"
    - Create .htpasswd basic auth file for Traefik dashboard "htpasswd -c richardsoper.me/shared/.htpasswd your_username"
    - Navigate to traefik/traefik.yml and update the email address(unless you want me to know about your certs)
    - Create traefik_proxy network with "docker network create traefik_proxy"
    - With all variable created, run the docker-up.sh script or command "docker-compose -f richardsoper.me/docker-compose.yml up -d"
