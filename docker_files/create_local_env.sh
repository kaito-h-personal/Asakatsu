#!/bin/bash
# cacheを使うとDockerfileのcompose等が行われないことがある
docker-compose build --no-cache
docker-compose up
# install Laravel
docker-compose run app composer create-project --prefer-dist laravel/laravel ${PJ_NAME}

# Laravelプロジェクトのmysqlの設定
# 本当はcコマンドを使いたかったが、マニュアル通り動かなかったので妥協...
sed -ie 's/DB_DATABASE=.*$/DB_DATABASE='${MYSQL_DATABASE}'/' ../${PJ_NAME}/.env
sed -ie 's/DB_USERNAME=.*$/DB_USERNAME='${MYSQL_USERNAME}'/' ../${PJ_NAME}/.env
sed -ie 's/DB_PASSWORD=.*$/DB_PASSWORD='${MYSQL_PASSWORD}'/' ../${PJ_NAME}/.env
