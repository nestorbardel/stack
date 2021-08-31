#!/bin/bash
docker run -dit --rm --name my-apache2 -p 8080:80 "mydocker/apache:2.0.0"
