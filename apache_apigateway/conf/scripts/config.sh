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
cd /home/api-sidekick
composer install
cp .env.local .env
chmod 777 .env
chmod 777 -R storage
chmod 777 -R vendor	
chmod 777 -R bootstrap
php artisan migrate
php artisan fix:passport
php artisan passport:install --force	
php artisan passport:client --password --name="LPGC"
php artisan passport:client --client --name="Mercury"
php artisan passport:client --client --name="Delphi"