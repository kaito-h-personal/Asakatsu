FROM php:fpm-alpine

# read env
ARG PJ_NAME

RUN : "# install zip # この連結は公式推奨" \
 && apk update \
 && apk add zip \
 \
 && : "# install composer" \
 && curl -sS https://getcomposer.org/installer | php \
 && mv ./composer.phar /usr/bin/composer \
 \
 && : "# MySQLにPDOで接続するときにMySQL用のプラグインが必要なので、インストール" \
 && docker-php-ext-install pdo_mysql
