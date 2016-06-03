FROM php:5.6-fpm

RUN apt-get update && \
    apt-get install -y \
      libpng12-dev \
      libjpeg62-turbo-dev \
      libwebp-dev

RUN docker-php-ext-install mysqli && \
    docker-php-ext-install gd

# phpredis support
ENV PHPREDIS_VERSION 2.2.7

RUN curl -L -o /tmp/redis.tar.gz https://github.com/phpredis/phpredis/archive/$PHPREDIS_VERSION.tar.gz && \
    tar xfz /tmp/redis.tar.gz &&  \
    rm -r /tmp/redis.tar.gz && \
    mv phpredis-$PHPREDIS_VERSION /usr/src/php/ext/redis && \
    docker-php-ext-install redis

COPY ./config/php.ini /usr/local/etc/php/

CMD ["php-fpm"]
