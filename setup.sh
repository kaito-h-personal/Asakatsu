#!/bin/bash
# imageからコンテナを作成
docker-compose up -d

# read env.
. .env

# './setup.sh --install-pj'でlaravelプロジェクトをインストール
if [ "$1" = "--install-pj" ]; then
  echo 'installing Laravel...'
  docker-compose run app composer create-project --prefer-dist laravel/laravel=5.8.24 ${PJ_NAME}
fi

# laravelがredisと接続するために必要なライブラリ
# プロジェクトディレクトリ内で行う必要があり、マウント後に実行する必要があったため止むを得ずdocker-compose runで実行
echo 'installing predis...'
docker-compose run --workdir="/var/www/html/${PJ_NAME}" app composer require predis/predis #appとcdの間に何か挟まないとエラー出る？？？docker-compose runがこちらの思惑通りにコマンドを読めていない？

# Laravelの.envを設定
cp -f ./docker_files/env/laravel.env ./src/${PJ_NAME}/.env

echo 'setup finished.'
