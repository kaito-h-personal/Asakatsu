#プロジェクト名
export PJ_NAME=My_Laravel_Project

#Mysqlの設定
export MYSQL_DATABASE=sample
export MYSQL_USERNAME=user
export MYSQL_PASSWORD=password

create:
	echo 'hajimaridai.'

up:
	docker-compose up

start:
	docker-compose start
