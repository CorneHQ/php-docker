# PHP Docker

A great development environment for all your PHP projects including MariaDB, PHPMyAdmin, Mailhog and Redis. This repository can also be used for PHP frameworks like CakePHP, Laravel and Symfony.

## Installation
* Copy `.env.example` to `.env` and edit the `.env` file with your settings
* Edit the config/nginx/default.conf with your project root
* Build the docker images with `cd scripts && bash build.sh`
* Create a docker network. The name of the network musts be project name + -network. Example: `docker network create projectname-network`
* Start the containers with `docker-compose up -d`
* Enter the workspace container with `docker exec -it projectname-workspace ash`
* Execute all your commands in the workspace container. For example: composer, node, redis etc.

## Docker commands
**Start all the containers**

`docker-compose up`

**Start all the containers in daemon mode**

`docker-compose up -d`

**Stop all the containers containers**

`docker-compose stop`

**Build the docker images**

`bash scripts/build.sh`

## Ports being used by the containers
| Service    | Port  |
| ---------- | ----- |
| Webserver  | 20080 |
| PHPMyAdmin | 28080 |
| Mailhog    | 28081 |
| Redis      | 26379 |