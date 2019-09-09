cp docker_files/env/laravel.env .env

. .env

docker-compose up -d
docker-compose run --workdir="/var/www/html/${PJ_NAME}" app composer install
