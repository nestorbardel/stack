
rem  Siempre hay que levantar el servicio de red
rem docker network create -d overlay --attachable=true rproxy
docker stack deploy -c docker-compose.yml delphi_stack_redis
