#!/bin/bash

docker-compose up

# Laravelプロジェクトのmysqlの設定
# 本当はcコマンドを使いたかったが、マニュアル通り動かなかったので妥協...
sed -ie 's/DB_DATABASE=.*$/DB_DATABASE='${MYSQL_DATABASE}'/' ../${PJ_NAME}.env
sed -ie 's/DB_USERNAME=.*$/DB_USERNAME='${MYSQL_USERNAME}'/' ../${PJ_NAME}.env
sed -ie 's/DB_PASSWORD=.*$/DB_PASSWORD='${MYSQL_PASSWORD}'/' ../${PJ_NAME}.env
