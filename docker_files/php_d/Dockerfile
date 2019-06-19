FROM php:fpm-alpine

# read env
ARG PJ_NAME

# install zip # この連結は公式推奨
RUN apk update \
 && apk add zip

# install composer
RUN curl -sS https://getcomposer.org/installer | php \
 && mv ./composer.phar /usr/bin/composer

# laravelがredisと接続するために必要なライブラリ
#RUN cd ./$PJ_NAME \
# && composer require predis/predis && pwd

# MySQLにPDOで接続するときにMySQL用のプラグインが必要なので、インストール
RUN docker-php-ext-install pdo_mysql

#CMD ls && echo $PJ_NAME

#CMD cd ./$PJ_NAME \
#  && touch $PJ_NAME.txt
# && composer require predis/predis && pwd
