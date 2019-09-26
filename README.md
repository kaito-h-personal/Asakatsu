# Asakatsu
## 実行
- 前提条件 以下が導入済みである事
  - docker / docker-compose
- 実行コマンド
  - 全て**gitリポジトリのルートディレクトリで行う**こと
  - git clone後
    - `./init.sh`
  - それ以降
    - `docker-compose up`でフォアグラウンド構築起動
    - `docker-compose upd`でバックグラウンド構築起動
    - `docker-compose start`でサービス起動
    - `docker-compose stop`でサービス停止
    - `docker-compose rm`でサービス停止してコンテナ削除
## プログラムコード
- `/src/`配下がappコンテナにマウントされている
