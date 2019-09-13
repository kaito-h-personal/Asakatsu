# docker-compose用の.envファイル作成
grep -e PJ_NAME \
     -e DB_DATABASE \
     -e DB_USERNAME \
     -e DB_PASSWORD \
     docker_files/env/env_all > .env

. .env
docker-compose up -d

# ライブラリのインストール
docker-compose run --workdir="/var/www/html/${PJ_NAME}" app composer install
