 Nexus Infrastructure

Infraestructura del sistema bancario Nexus. Maneja el despliegue del backend en un clúster de Docker Swarm sobre AWS EC2.

## Instancias EC2

| Rol | IP |
|---|---|
| Manager (Swarm) | 23.20.204.143 |
| Worker (Swarm) | cambiante |
| Frontend | 18.205.142.157 |

## Archivos principales

- `stack.yml` — stack de producción para Docker Swarm (2 réplicas del backend)
- `scripts/init-manager.sh` — inicializa el nodo manager del Swarm
- `scripts/join-worker.sh` — une un worker al Swarm

## CI/CD

El workflow `.github/workflows/deploy.yml` se dispara en cada push a `main` que modifique `stack.yml`. Copia el archivo al manager y ejecuta `docker stack deploy` automáticamente.

## Repositorios

- [nexus_backend](https://github.com/YahirRadilla/nexus_backend)
- [Nexus_Frontend](https://github.com/DavidHG0304/Nexus_Frontend)
- [Nexus_Infrastructure](https://github.com/Omaibarra720/Nexus_Infrastructure)