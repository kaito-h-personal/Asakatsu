#プロジェクト名
export PJ_NAME=My_Laravel_Project

#Mysqlの設定
export MYSQL_DATABASE=sample
export MYSQL_USERNAME=user
export MYSQL_PASSWORD=password

cd docker_files

create:
	./create_local_env.sh
	cd ../

up:
	docker-compose up
	cd ../

upd:
	docker-compose up -d
	cd ../

start:
	docker-compose start
	cd ../

stop:
	docker-compose stop
	cd ../
