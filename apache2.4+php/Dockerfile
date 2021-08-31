FROM php:7.4-apache
LABEL maintainer="amadeorubenamado@gmail.com"

RUN apt-get update
RUN apt-get install -y libcurl4-openssl-dev pkg-config libssl-dev
RUN apt-get install -y curl vim 
RUN apt install -y wget unzip
RUN apt install -y git

COPY ./resource/composer.sh /root
RUN chmod +x /root/composer.sh
RUN /root/composer.sh
RUN a2enmod rewrite

COPY ./public-html/ /var/www/html/
