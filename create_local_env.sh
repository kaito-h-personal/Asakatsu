#!/bin/bash

#プロジェクト名
export PJ_NAME=My_Laravel_Project

#Mysqlの設定
export MYSQL_DATABASE=sample
export MYSQL_USERNAME=user
export MYSQL_PASSWORD=password

docker-compose up

# プロジェクトのディレクトリに移動
cd ./${PJ_NAME}

# Laravelプロジェクトのmysqlの設定
# 本当はcコマンドを使いたかったが、マニュアル通り動かなかったので妥協...
sed -ie 's/DB_DATABASE=.*$/DB_DATABASE='${MYSQL_DATABASE}'/' .env
sed -ie 's/DB_USERNAME=.*$/DB_USERNAME='${MYSQL_USERNAME}'/' .env
sed -ie 's/DB_PASSWORD=.*$/DB_PASSWORD='${MYSQL_PASSWORD}'/' .env

cd ../
