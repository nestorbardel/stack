FROM  grupoagni/apache_delphi_p2p:2.0.0
LABEL maintainer="amadeorubenamado@gmail.com"

# COPY conf_microservice/apache2/sites-enabled/side.conf /etc/apache2/sites-enabled/
COPY conf/apache2/sites-enabled/side.conf /etc/apache2/sites-enabled/000-default.conf

RUN apt-get install -y libmcrypt-dev
RUN yes | pecl install mcrypt
RUN docker-php-ext-enable mcrypt
RUN apt-get install -y libcurl4-openssl-dev pkg-config libssl-dev
RUN pecl install mongodb
RUN docker-php-ext-enable mongodb
RUN pecl install -o -f redis &&  rm -rf /tmp/pear  &&  docker-php-ext-enable redis
RUN pecl install xdebug && docker-php-ext-enable xdebug \
# not yet in linux: xdebug.remote_host = host.docker.internal \n\
&& echo "\n\
xdebug.remote_host = 172.17.0.1 \n\
xdebug.default_enable = 1 \n\
xdebug.remote_autostart = 1 \n\
xdebug.remote_connect_back = 0 \n\
xdebug.remote_enable = 1 \n\
xdebug.remote_handler = "dbgp" \n\
xdebug.remote_port = 9009 \n\
xdebug.remote_log = /var/www/html/xdebug.log \n\
" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini


EXPOSE 80

CMD ["apache2ctl","-D","FOREGROUND"]