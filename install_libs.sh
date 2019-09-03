. .env

docker-compose up -d
docker-compose run --workdir="/var/www/html/${PJ_NAME}" app composer install
