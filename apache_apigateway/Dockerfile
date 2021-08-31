FROM grupoagni/apache_delphi_p2p:2.0.0
LABEL maintainer="amadeorubenamado@gmail.com"

# COPY conf_apigatway/apache2/sites-enabled/side.conf /etc/apache2/sites-enabled/
COPY conf/apache2/sites-enabled/side.conf /etc/apache2/sites-enabled/000-default.conf
COPY conf/scripts/config.sh /home/scripts/config.sh 
RUN chmod +x /home/scripts/config.sh
RUN apt-get install -y libmcrypt-dev
RUN yes | pecl install mcrypt
RUN docker-php-ext-enable mcrypt
RUN apt-get install -y libcurl4-openssl-dev pkg-config libssl-dev
RUN pecl install mongodb
RUN docker-php-ext-enable mongodb
RUN pecl install -o -f redis &&  rm -rf /tmp/pear  &&  docker-php-ext-enable redis

EXPOSE 80

CMD ["apache2ctl","-D","FOREGROUND"]
