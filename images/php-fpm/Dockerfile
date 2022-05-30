FROM php:8.1-fpm-alpine

RUN apk update

RUN apk add zlib libpng-dev libjpeg-turbo-dev freetype-dev imagemagick-dev gnupg imap-dev krb5-dev openssl-dev libzip-dev icu-dev $PHPIZE_DEPS

RUN docker-php-ext-configure gd --with-freetype --with-jpeg

RUN docker-php-ext-configure imap --with-kerberos --with-imap-ssl

RUN docker-php-ext-install pdo_mysql zip gd pcntl intl bcmath imap

RUN pecl install imagick

RUN docker-php-ext-enable imagick

COPY php/php.ini /usr/local/etc/php/conf.d