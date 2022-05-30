DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

cp -r $DIR/../config/php $DIR/../images/php-fpm/php
cp -r $DIR/../config/php $DIR/../images/php-cli/php

docker build -t cornehq/docker-php-fpm $DIR/../images/php-fpm
docker build -t cornehq/docker-php-cli $DIR/../images/php-cli

docker build -t cornehq/docker-application $DIR/../images/application
docker build -t cornehq/docker-workspace $DIR/../images/workspace