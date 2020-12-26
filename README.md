# richardsoper.me Traefik 2.2 with Docker Swarm

![mozilla-obs](https://img.shields.io/mozilla-observatory/grade-score/richardsoper.me?publish)
![site-status](https://img.shields.io/website?url=https%3A%2F%2Frichardsoper.me)

Personal site used for developing my own skills.
This is being run on two raspberry pi 4's with Ubuntu 20.04 Server LTS

https://www.richardsoper.me

### Work being done on this branch

    - Deploy applications using swarm. 
    - Data mounting occurs with NFS because local bind mount storage isnt an option for swarm.

### What is working
    
    - Traefik with LetsEncrypt cert generation via CloudFlare
    - Portainer with agent configuration
    - Bookstack
    - Non-containerized config like Pihole, Home Assistant
    - PHPmyadmin - It partially works, but currently cannot connect to databases. 
    - mariaDB - Only one instance of each DB should be run. They are not configured for clustering. 

### To-do

    - Ghost
    - NextCloud
    - WordPress
    - Gitea
    - Grafana
    - Prometheus
    - Node Exporter
    - Arm Exporter
    - cAdvisor
    - Promtail
    - Loki

### How to use it

Instructions are a work in progress. With the complexities of clustering services I will be experimenting with a lot of changes and restructuring the project. Will likely have a script to run for easier start up. 