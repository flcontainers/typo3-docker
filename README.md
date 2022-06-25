# Typo3 docker image

[![License GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://github.com/MaxWaldorf/typo3-docker/blob/main/LICENSE) [![Docker Pulls](https://img.shields.io/docker/pulls/maxwaldorf/typo3.svg)](https://hub.docker.com/r/maxwaldorf/typo3/) ![Last commit](https://img.shields.io/github/last-commit/MaxWaldorf/typo3-docker/main.svg)

## Supported Systems
`x86_64` `arm64` `armhf`

## Supported tags

### PHP8.1 (apache) [![Docker Image CI](https://github.com/MaxWaldorf/typo3-docker/actions/workflows/docker-image-apache.yml/badge.svg)](https://github.com/MaxWaldorf/typo3-docker/actions/workflows/docker-image-apache.yml)

`latest` — Last stable version of Typo3 with apache

`x` — Major version of Typo3 with apache

`x.x` — Minor  version of Typo3 with apache

`x.x.x` — Fix  version of Typo3 with apache

### PHP8.1 (fpm) [![Docker Image CI](https://github.com/MaxWaldorf/typo3-docker/actions/workflows/docker-image-fpm.yml/badge.svg)](https://github.com/MaxWaldorf/typo3-docker/actions/workflows/docker-image-fpm.yml)

***Note: Requires a frontend (e.g. NGINX)***

`fpm` — Last stable version of Typo3 on php fpm

`x-fpm` — Major version of Typo3 on php fpm

`x.x-fpm` — Minor version of Typo3 on php fpm

`x.x.x-fpm` — Fix version of Typo3 on php fpm

### PHP8.1 (fpm-alpine) [![Docker Image CI](https://github.com/MaxWaldorf/typo3-docker/actions/workflows/docker-image-fpm-alpine.yml/badge.svg)](https://github.com/MaxWaldorf/typo3-docker/actions/workflows/docker-image-fpm-alpine.yml)

***Note: Requires a frontend (e.g. NGINX)***

`fpm-alpine` — Last stable version of Typo3 on php fpm (alpine)

`x-fpm-alpine` — Major version of Typo3 on php fpm (alpine)

`x.x-fpm-alpine` — Minor version of Typo3 on php fpm (alpine)

`x.x.x-fpm-alpine` — Fix version of Typo3 on php fpm (alpine)

## What is Typo3
TYPO3 is a Professional and flexible Content Management System (CMS) based on PHP.

## How to use this image
This image will bring you a production ready Typo3 contaner to meet your requirements.
Different flavors of this container are available:
* PHP with apache
* PHP fpm
* PHP fpm (alpine)

[`maxwaldorf/typo3`](https://hub.docker.com/r/maxwaldorf/typo3/) (apache) image can be used as is:
```shell
docker run \
  -p 8080:80 \
  -v </path/to/html>:/var/www/html \
  maxwaldorf/typo3:latest
```

On the first run, you will start immediatly with the configuration of your Typo3 installation.

_***Note:***_ if you are not using Sqlite3 database, you will need a mariadb or Postgresql database to connect to.

## How these images get updated
You can check the Github repository: [`MaxWaldorf/typo3-docker`](https://github.com/MaxWaldorf/typo3-docker) to review the code.

Images are updated manually on GitHub by setting the versions.json file and running the update.sh script.

## Report bugs and issues
The github [**bug tracker**](https://github.com/MaxWaldorf/typo3-docker/issues) will be exclusively used.

# License
This work is licensed under the General Public License, version 3. More details in [LICENCE](https://github.com/MaxWaldorf/typo3-docker/blob/main/LICENSE) file.
