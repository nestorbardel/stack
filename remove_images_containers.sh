#!/bin/bash
RED="\033[31m"
NORMAL="\033[0;39m"
echo -e "$RED ############# remove images and containers #############"
echo -e "$RED ########################################"
echo -e "$NORMAL"
docker rm $(docker ps -a -q) --force
docker rmi $(docker images -a -q) --force