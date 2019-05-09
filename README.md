# Asakatsu
■ スケジュール
・10:30〜30分程度
・特に日々のノルマはなく個人毎

■ 題材
https://qiita.com/MasahiroHarada/items/2597bd6973a45f92e1e8

■ 環境構築
はじめにDockerによる環境を構築する
※ 構築後、桜庭がレビュー
・ミドルウェア(全て最新バージョン)
  nginx, php(php-fpm)+laravel, mysql, redis
・コンテナOS
  Alpine Linux
(MySQLのみ公式のosで良い)
・ロケール、言語を日本に設定

※ 注意事項
・コードコピペ厳禁
  Webで調べた内容を参考にしていいが全て意味を考えてコードを手で書く
・Laradoc禁止
  Laradocは環境構築にはならない
  流用するなら余分なものを全て排除した状態で構築する事

## gitで管理するか？
- githubはpjが乱立するので**gitbucket**で

## 共有はどうするか？
- 道筋の共有はしてもいい
- ただし質問は明確に

## 方針
- 基本的にチュートリアルに従う([Vue + Vue Router + Vuex + Laravel チュートリアル](https://qiita.com/MasahiroHarada/items/2597bd6973a45f92e1e8))
- 実務に即した形で構築する
    - 本番環境で動くことをイメージする
- mysql, redisなどは本番環境ではマネージドサービスを使う(本番をそこまで意識しなくて良い)
- nginx, phpのコンテナについては本番環境を意識したものを作る
- コンテナOSは一番小さいAlpine Linuxを使う
- ロケール、言語を日本に設定
- チュートリアル内でredisを使う部分は櫻庭さんが指定してくれる

## コツ
- docker-compose.ymlに全ての情報を詰め込まない
- Dockerfileをうまく使う
- 本番・検証ではdocker-compose.ymlで環境変数を投げたり起動したりすることはない

## 参考URL

- [ゼロからはじめるDocker(1) Dockerとは？ \| マイナビニュース](https://news.mynavi.jp/article/docker-1/)
- [Dockerをはじめからていねいに〜インストールとcentos起動・停止〜 - Qiita](https://qiita.com/umeee/items/cdf30e037a0ee66e8d10)
- [Dockerを使ってnginxのWebサーバを構築する - Qiita](https://qiita.com/umeee/items/a2f06a2196fc4d46e054)
- [DockerによるPHP開発環境構築（PHP + MySQL + Nginx） - Qiita](https://qiita.com/sitmk/items/f911be7ffa4f29293fd5)
