FROM php:fpm-alpine

#read env
ARG PJ_NAME

#install zip
RUN apk update
RUN apk add zip

#install composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv ./composer.phar /usr/bin/composer

#install Laravel #コンテナを立ち上げた後(マウント後)に実行するよう変更
#RUN composer create-project --prefer-dist laravel/laravel ${PJ_NAME}
