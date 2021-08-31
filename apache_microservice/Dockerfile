FROM  grupoagni/apache_delphi_p2p:2.0.0
LABEL maintainer="amadeorubenamado@gmail.com"

COPY conf/apache2/sites-enabled/side.conf /etc/apache2/sites-enabled/000-default.conf
COPY conf/scripts/config.sh /home/scripts/config.sh 
RUN chmod +x /home/scripts/config.sh
RUN apt-get install -y libmcrypt-dev
RUN yes | pecl install mcrypt
RUN docker-php-ext-enable mcrypt
RUN apt-get install -y libcurl4-openssl-dev pkg-config libssl-dev
RUN pecl install mongodb
RUN docker-php-ext-enable mongodb
RUN pecl install -o -f redis \
	&&  rm -rf /tmp/pear  \
	&&  docker-php-ext-enable redis \
	&& apt-get install -y supervisor \
	&& apt-get install -y cron

COPY conf/supervisor/laravel-app.conf /etc/supervisor/conf.d/

COPY scripts/docker-entrypoint.sh /usr/local/bin/ 
RUN chmod 777 /usr/local/bin/docker-entrypoint.sh \
    && ln -s /usr/local/bin/docker-entrypoint.sh /

COPY conf/cron/sms_send /etc/cron.d/
RUN chmod 0644 /etc/cron.d/sms_send \
	&& crontab /etc/cron.d/sms_send

EXPOSE 80

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]