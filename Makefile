# プロジェクト名
export PJ_NAME=My_Laravel_Project
# docker-compose時のプロジェクト名(コンテナ名にセットされる)
export COMPOSE_PROJECT_NAME=${PJ_NAME}

# Mysqlの設定
export MYSQL_DATABASE=sample
export MYSQL_USERNAME=user
export MYSQL_PASSWORD=password

# Makefileはcdを次の行に引き継がないので、&&で同じ行にする必要がある
install:
	cd docker_files && ./install_laravel.sh

up:
	cd docker_files && docker-compose up

upd:
	cd docker_files && docker-compose up -d

start:
	cd docker_files && docker-compose start

stop:
	cd docker_files && docker-compose stop

rm:
	cd docker_files && docker-compose rm

build:
	cd docker_files && docker-compose build
