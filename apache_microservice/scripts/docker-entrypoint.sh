#!/bin/sh

# Update supervisor
service supervisor start
supervisorctl reread
supervisorctl update

service cron start

apache2ctl -DFOREGROUND