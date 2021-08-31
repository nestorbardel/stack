#!/bin/bash
BLACK="\033[30m"
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
PINK="\033[35m"
CYAN="\033[36m"
WHITE="\033[37m"
NORMAL="\033[0;39m"
echo -e "$NORMAL"
echo -e "$YELLOW######### apache2.4+php #########"
echo -e "$YELLOW#################################"
echo -e "$NORMAL"
sleep 2
cd ./apache2.4+php
./buildDockerImage.sh
echo -e "$NORMAL"
echo -e "$YELLOW######### api gateway  ##########"
echo -e "$YELLOW#################################"
echo -e "$NORMAL"
sleep 2
cd ../apache_apigateway
./buildDockerImage.sh
echo -e "$NORMAL"
echo -e "$YELLOW###########  Delphi   ###########"
echo -e "$YELLOW#################################"
echo -e "$NORMAL"
sleep 2
cd ../apache_delphi_application
./buildDockerImage.sh
echo -e "$NORMAL"
echo -e "$YELLOW####### Microservice Search  #########"
echo -e "$YELLOW######################################"
echo -e "$NORMAL"
sleep 2
cd ../apache_microservice_search
./buildDockerImage.sh
echo -e "$NORMAL"
echo -e "$YELLOW########## microservice  p2p##########"
echo -e "$YELLOW######################################"
echo -e "$NORMAL"
sleep 2
cd ../apache_microservice
./buildDockerImage.sh
echo -e "$NORMAL"
echo -e "$YELLOW########## p2p_application ###########"
echo -e "$YELLOW######################################"
echo -e "$NORMAL"
sleep 2
cd ../apache_p2p_application
./buildDockerImage.sh
echo -e "$NORMAL"
echo -e "$YELLOW##########    mongodb      ###########"
echo -e "$YELLOW######################################"
echo -e "$NORMAL"
sleep 2
cd ../mongodb_delphi
./buildDockerImage.sh
echo -e "$NORMAL"
echo -e "$YELLOW########   elastic search  ##########"
echo -e "$YELLOW######################################"
echo -e "$NORMAL"
sleep 2
cd ../elastic_search
./buildDockerImage.sh
echo -e "$NORMAL"
echo -e "$YELLOW########    mysql     ########"
echo -e "$YELLOW##############################"
echo -e "$NORMAL"
sleep 2
cd ../mysql
./buildDockerImage.sh
echo -e "$NORMAL"
echo -e "$YELLOW########    redis      ########"
echo -e "$YELLOW################################"
echo -e "$NORMAL"

cd ../redis
./buildDockerImage.sh
echo -e "$YELLOW######## End of Script #########"
