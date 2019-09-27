FROM php:7.3.7-fpm-alpine3.10

ARG TZ='Asia/Tokyo'

ENV LANG ja_JP.UTF-8

RUN apk update \
 && apk add zip tzdata \
 && \
 : "composerインストール" \
 && curl -sS https://getcomposer.org/installer | php \
 && mv ./composer.phar /usr/bin/composer \
 && \
 : "MySQLにPDOで接続するときにMySQL用のプラグインが必要" \
 && docker-php-ext-install pdo_mysql \
 && \
 : "timezone設定" \
 && cp /usr/share/zoneinfo/${TZ} /etc/localtime \
 && apk del tzdata
