#!/bin/bash
# appのDockerfileからimageを作成
# cacheを使うとDockerfileのRUNが行われないことがある
docker-compose build --no-cache

# imageからコンテナを作成(起動はしない)(buildもしない)
docker-compose up --no-build --no-start 

# appコンテナ内からLaravelインストール
docker-compose run app composer create-project --prefer-dist laravel/laravel ${PJ_NAME}

# Laravelプロジェクトのmysqlの設定
mysql_env_key=('DB_DATABASE' 'DB_USERNAME' 'DB_PASSWORD')
mysql_env_value=(${MYSQL_DATABASE} ${MYSQL_USERNAME} ${MYSQL_PASSWORD})

for ((i = 0; i < ${#mysql_env_key[@]}; i++)){
    sed -ie 's/'${mysql_env_key[i]}'=.*$/'${mysql_env_key[i]}'='${mysql_env_value[i]}'/' ../${PJ_NAME}/.env
}
# 連想配列の方がスマートだが、bashをアップデートしないと連想配列を定義できない
# 無理やりbashをアップデートさせることはできるが、かなり手間なので素直に配列を２つ用意した方が早い
# C言語風のforループの方が良いと判断した

# 以下没
## 本当はsedのcコマンドを使いたかったが、マニュアル通り動かなかったので妥協...
## (後方一致がなくなるだけなのでそこまで変わらない。もっといい方法があるかも)
## ''で囲まれているので、改行の際にエスケープは不要
#sed -ie 's/DB_DATABASE=.*$/DB_DATABASE='${MYSQL_DATABASE}'/;
#         s/DB_USERNAME=.*$/DB_USERNAME='${MYSQL_USERNAME}'/;
#         s/DB_PASSWORD=.*$/DB_PASSWORD='${MYSQL_PASSWORD}'/' ../${PJ_NAME}/.env
