

## Capistrano 設定関連
- これを参考にしつつ
  https://qiita.com/tkykmw/items/a34441aae142e0e41b65
- Pumaの起動などはこれの Systemd を利用
  https://github.com/seuros/capistrano-puma


## PostgreSQL への接続関連
```
yum install postgresql13 postgresql13-server postgresql13-devel
```
...> `*-devel` を入れようとすると依存関係でエラーなるかも

### Amazon Linux 2 で PostgreSQL > 12 を入れる場合のTips
LLVM系のライブラリが必要になるが、AmazonLinux2 のリポジトリにはない。
独自で追加して上げる必要がある

- やり方
  https://ys3128.hatenadiary.jp/entry/2020/06/15/043810
- gpgkey 作る
  https://github.com/sclorg/centos-release-scl/blob/master/centos-release-scl/RPM-GPG-KEY-CentOS-SIG-SCLo


## bundle install で pg でエラーになったら

### 色々やったら以下コマンドで `pg_config` 指定
```
gem install pg -- --with-pg-config="/usr/pgsql-13/bin/pg_config"
```

