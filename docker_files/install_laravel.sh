#!/bin/bash
# appのDockerfileからimageを作成
# cacheを使うとDockerfileのRUNが行われないことがある
docker-compose build --no-cache

# imageからコンテナを作成(起動はしない)
docker-compose up --no-build --no-start 

# appコンテナ内からLaravelインストール
docker-compose run app composer create-project --prefer-dist laravel/laravel ${PJ_NAME}

# Laravelプロジェクトのmysqlの設定
# 本当はsedのcコマンドを使いたかったが、マニュアル通り動かなかったので妥協...
sed -ie 's/DB_DATABASE=.*$/DB_DATABASE='${MYSQL_DATABASE}'/' ../${PJ_NAME}/.env
sed -ie 's/DB_USERNAME=.*$/DB_USERNAME='${MYSQL_USERNAME}'/' ../${PJ_NAME}/.env
sed -ie 's/DB_PASSWORD=.*$/DB_PASSWORD='${MYSQL_PASSWORD}'/' ../${PJ_NAME}/.env
