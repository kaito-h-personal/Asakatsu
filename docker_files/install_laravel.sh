#!/bin/bash
# appのDockerfileからimageを作成
# cacheを使うとDockerfileのRUNが行われないことがある
docker-compose build --no-cache

# imageからコンテナを作成(起動はしない)(buildもしない)
docker-compose up --no-build --no-start 

# appコンテナ内からLaravelインストール
docker-compose run app composer create-project --prefer-dist laravel/laravel ${PJ_NAME}

cp -f .env ../${PJ_NAME}/.env
