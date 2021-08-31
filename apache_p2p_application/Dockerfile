FROM grupoagni/apache_delphi_p2p:2.0.0
LABEL maintainer="amadeorubenamado@gmail.com"

COPY conf/apache2/sites-enabled/side.conf /etc/apache2/sites-enabled/000-default.conf
COPY conf/scripts/config.sh /home/scripts/config.sh 
RUN chmod +x /home/scripts/config.sh
RUN pecl install mongodb
RUN docker-php-ext-enable mongodb
RUN pecl install -o -f redis &&  rm -rf /tmp/pear  &&  docker-php-ext-enable redis
RUN apt-get install npm -y
RUN npm i npm@latest -g
RUN apt-get install -y supervisor

COPY conf/supervisor/laravel-app.conf /etc/supervisor/conf.d/

COPY scripts/docker-entrypoint.sh /usr/local/bin/ 
RUN chmod 777 /usr/local/bin/docker-entrypoint.sh \
    && ln -s /usr/local/bin/docker-entrypoint.sh /

EXPOSE 80

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]