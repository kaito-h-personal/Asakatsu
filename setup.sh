#!/bin/bash
# appのDockerfileからimageを作成
# cacheを使うとDockerfileのRUNが行われないことがある //最後に消す
#docker-compose build --no-cache

# imageからコンテナを作成
docker-compose up -d

# read env.
. .env

if [ ! -d "${PJ_NAME}" ]; then
  echo 'Laravelをインストールします'
  docker-compose run app composer create-project --prefer-dist laravel/laravel ${PJ_NAME}
fi

# laravelがredisと接続するために必要なライブラリ
docker-compose run app cd ./${PJ_NAME} && composer require predis/predis

# Laravelの.envを設定
cp -f ./docker_files/laravel.env ./${PJ_NAME}/.env

echo 'setup finished'
