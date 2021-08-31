FROM grupoagni/apache_delphi_p2p:2.0.0
LABEL maintainer="amadeorubenamado@gmail.com"

COPY conf/apache2/sites-enabled/side.conf /etc/apache2/sites-enabled/
COPY conf/apache2/sites-enabled/max_var.ini /usr/local/etc/php/conf.d/docker-php-ext-max_var.ini

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN pecl install mongodb
RUN docker-php-ext-enable mongodb
RUN pecl install -o -f redis &&  rm -rf /tmp/pear  &&  docker-php-ext-enable redis

EXPOSE 80

CMD ["apache2ctl","-D","FOREGROUND"]