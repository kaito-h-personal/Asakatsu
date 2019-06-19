FROM php:fpm-alpine

# read env
ARG PJ_NAME

# install zip # この連結は公式推奨
RUN apk update \
 && apk add zip

RUN ls

# install composer
RUN curl -sS https://getcomposer.org/installer | php \
 && mv ./composer.phar /usr/bin/composer

RUN pwd

# laravelがredisと接続するために必要なライブラリ
#RUN cd ./$PJ_NAME && \
#RUN composer require predis/predis && pwd

# MySQLにPDOで接続するときにMySQL用のプラグインが必要なので、インストール
RUN docker-php-ext-install pdo_mysql

RUN pwd

CMD cd ./$PJ_NAME \
 && composer require predis/predis && pwd
