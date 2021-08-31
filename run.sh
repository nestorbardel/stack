#!/bin/bash
# Siempre hay que levantar el servicio de red
docker network create -d overlay --attachable=true rproxy
docker stack deploy -c docker-compose.yml delphi_p2p_stack
