#!/bin/bash
# appのDockerfileからimageを作成
# cacheを使うとDockerfileのRUNが行われないことがある //最後に消す
docker-compose build --no-cache

# imageからコンテナを作成(buildはしない)
docker-compose up --no-build 

# Laravelの.envを設定
#cp -f .env ../${PJ_NAME}/.env

. .env
//ifexists
#docker-compose run app composer create-project --prefer-dist laravel/laravel ${PJ_NAME}

docker-compose run app require predis/predis
