#!/bin/bash
# imageからコンテナを作成
docker-compose up -d

# read env.
. .env

if [ ! -d "${PJ_NAME}" ]; then
  echo 'installing Laravel...'
  docker-compose run app composer create-project --prefer-dist laravel/laravel ${PJ_NAME}
fi

# laravelがredisと接続するために必要なライブラリ
# プロジェクトディレクトリ内で行う必要があり、マウント後に実行する必要があったため止むを得ずdocker-compose runで実行
docker-compose run app echo 'installing predis...' && ${PJ_NAME} && composer require predis/predis && cd ../ #appとcdの間に何か挟まないとエラー出る？？？docker-compose runがこちらの思惑通りにコマンドを読めていない？

# Laravelの.envを設定
cp -f ./docker_files/env/laravel.env ./src/${PJ_NAME}/.env

echo 'setup finished.'
