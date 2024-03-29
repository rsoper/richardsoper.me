# richardsoper.me Traefik 2.5 with Docker Swarm

![mozilla-obs](https://img.shields.io/mozilla-observatory/grade-score/richardsoper.me?publish)
![Website](https://img.shields.io/website?url=https%3A%2F%2Fwww.richardsoper.me)

Personal site used for developing my own skills.
This is being run on:
- 3x Raspberry Pi 4's
- 2x Raspberry Pi 5's
- 3x x86_64 VM's

https://www.richardsoper.me

### Whats in here

    - Traefik v2.10 configured for Docker and File providers in Swarm mode
    - Authelia authentication middleware
    - NFS data storage configuration 
    - Metrics with Grafana, Prometheus, cAdvisor, Node Exporter, Loki
    - Portainer with agent configuration to monitor/manage all nodes
    - Ghost, Nextcloud, Jellyfin, Sonarr, Radarr, Jackett, and more
    - Valheim game server
    - Uptime Kuma for service uptime alerts
    - Logging containers to Loki
    - Gitlab repository and container registry
    - DDNS updating
    - homepage dashboard
    - synapse
