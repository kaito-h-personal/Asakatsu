FROM php:7.3.7-fpm-alpine3.10

# read env
ARG PJ_NAME

RUN apk update \
 && apk add zip \
 && \
 : "install composer" \
 && curl -sS https://getcomposer.org/installer | php \
 && mv ./composer.phar /usr/bin/composer \
 && \
 : "MySQLにPDOで接続するときにMySQL用のプラグインが必要" \
 && docker-php-ext-install pdo_mysql
