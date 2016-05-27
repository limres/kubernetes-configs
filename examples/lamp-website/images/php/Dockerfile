FROM debian:stable

RUN apt-get update && \
    apt-get install -y php5-fpm php5-mysql php5-memcache php5-curl memcached supervisor mysql-client

COPY etc/supervisord.conf /etc/supervisor/conf.d/
COPY etc/www.conf /etc/php5/fpm/pool.d/
COPY etc/php.ini /etc/php5/fpm/php.ini
COPY etc/php-fpm.conf /etc/php5/fpm/php-fpm.conf

CMD ["/usr/bin/supervisord"]
