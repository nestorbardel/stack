#!/bin/bash
docker build --build-arg VERSION=$VERSION -t "php:7.4-apache_apigateway" -f Dockerfile .

