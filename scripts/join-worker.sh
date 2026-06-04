#!/bin/bash

# join-worker.sh — Une un nodo worker al Swarm
# Ejecutar en cada servidor worker (EC2)
# Reemplaza TOKEN y MANAGER_IP antes de correr

set -e

# Obtén estos valores corriendo en el manager:
# docker swarm join-token worker
SWARM_TOKEN="TOKEN_AQUI"
MANAGER_IP="MANAGER_IP_AQUI"
MANAGER_PORT="2377"

echo ">>> Uniendo al Swarm en ${MANAGER_IP}:${MANAGER_PORT}..."

docker swarm join \
  --token "${SWARM_TOKEN}" \
  "${MANAGER_IP}:${MANAGER_PORT}"

echo "Worker unido correctamente."
