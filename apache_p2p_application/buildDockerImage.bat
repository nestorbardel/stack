
set VERSION=2.0.0
docker build --build-arg VERSION=$VERSION -t "php:7.4-apache_application" -f Dockerfile .

