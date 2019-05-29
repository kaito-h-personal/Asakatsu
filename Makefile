#プロジェクト名
export PJ_NAME=My_Laravel_Project

#Mysqlの設定
export MYSQL_DATABASE=sample
export MYSQL_USERNAME=user
export MYSQL_PASSWORD=password

# (cd ~; ~ )でカレントディレクトリを変えずに、ディレクトリを移動して実行できる
create:
	(cd docker_files; ./create_local_env.sh)

up:
	(cd docker_files; docker-compose up;)

upd:
	(cd docker_files; docker-compose up -d;)

start:
	(cd docker_files; docker-compose start;)

stop:
	(cd docker_files; docker-compose stop;)
