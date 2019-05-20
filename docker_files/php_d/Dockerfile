ARG project_name='my-laravel-app-1'

FROM php:fpm-alpine

#install zip
RUN apk update
RUN apk add zip

#install composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv ./composer.phar /usr/bin/composer

#install Laravel
RUN composer create-project --prefer-dist laravel/laravel ${project_name}
