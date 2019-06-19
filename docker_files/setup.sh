#!/bin/bash
# appのDockerfileからimageを作成
# cacheを使うとDockerfileのRUNが行われないことがある
docker-compose build --no-cache

# imageからコンテナを作成(buildはしない)
docker-compose up --no-build 

#cp -f .env ../${PJ_NAME}/.env
