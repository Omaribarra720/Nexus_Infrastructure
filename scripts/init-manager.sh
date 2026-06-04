#!/bin/bash

# init-manager.sh — Inicializa el nodo manager del Swarm
# Ejecutar UNA SOLA VEZ en el servidor manager (EC2)

set -e

echo ">>> Iniciando Docker Swarm..."
docker swarm init

echo ">>> Creando red overlay nexus-network..."
docker network create \
  --driver overlay \
  nexus-network

echo ""
echo "Manager listo."
echo ""
echo "Para unir workers, ejecuta en cada uno:"
docker swarm join-token worker
