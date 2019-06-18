FROM php:fpm-alpine

#read env
ARG PJ_NAME

#install zip
RUN apk update && \
    apk add zip

RUN echo $PJ_NAME

#install composer
RUN curl -sS https://getcomposer.org/installer | php && \
    mv ./composer.phar /usr/bin/composer && \
    pwd

#install Laravel #コンテナを立ち上げた後(マウント後)に実行するよう変更
#RUN composer create-project --prefer-dist laravel/laravel ${PJ_NAME}

#laravelがredisと接続するために必要なライブラリ
RUN cd ./$PJ_NAME && \
    composer require predis/predis && pwd

#MySQLにPDOで接続するときにMySQL用のプラグインが必要なので、インストール
RUN docker-php-ext-install pdo_mysql

RUN pwd
