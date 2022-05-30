FROM cornehq/docker-php-cli:latest

RUN apk add vim nodejs npm git mysql-client

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /application

CMD ["tail", "-f", "/dev/null"]