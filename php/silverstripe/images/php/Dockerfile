FROM php:5.6-fpm

RUN apt-get update && \
    apt-get install -y \
      libpng12-dev \
      libjpeg62-turbo-dev \
      libwebp-dev

run docker-php-ext-install mysqli && \
    docker-php-ext-install gd

COPY ./conf/php.ini /usr/local/etc/php/

CMD ["php-fpm"]
