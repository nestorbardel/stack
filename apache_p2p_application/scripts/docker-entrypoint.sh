#!/bin/sh

# Update supervisor
service supervisor start
supervisorctl reread
supervisorctl update

apache2ctl -DFOREGROUND