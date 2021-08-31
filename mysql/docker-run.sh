#!/bin/bash
# funciona: docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=root -d mydocker/mysql:1.0.0
docker run --name some-mysql \
    -d \
    mydocker/mysql:1.0.0