FROM php:7.3.7-fpm-alpine3.10

ARG TZ='Asia/Tokyo'

ENV LANG ja_JP.UTF-8

RUN apk update \
 && apk add zip tzdata \
 && \
 : "MySQLにPDOで接続するときにMySQL用のプラグインが必要" \
 && docker-php-ext-install pdo_mysql \
 && \
 : "set timezones" \
 && cp /usr/share/zoneinfo/${TZ} /etc/localtime \
 && apk del tzdata
