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
echo -e "$YELLOW ############# Configuration Script ################"
echo -e "$YELLOW ###################################################"
echo -e "$NORMAL"
cd /home/p2p
cp .env.local .env
chdmod 777 .env
composer install
npm install && npm run dev
chmod 777 -R storage	
chmod 777 -R vendor	
chmod 777 -R bootstrap	
php artisan migrate
