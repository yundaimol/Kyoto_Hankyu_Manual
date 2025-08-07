# yadokenHP

統計科学研究室のホームページ

`upload.sh` で必要なファイルの更新は可能（事前に学部のWebサーバに繋げるようにしておく必要あり）．

更新に関するメモは，[how2update.md](./md/how2update.md)に書いてある．

## 便利なメンバーページ

[所属メンバー一覧](./document/data/members/active.yml)

## 動作環境

- node 23.6.1
- yarn 4.6.0
- Vite 6.2.4
- Vue.js 3.5.13
- Vue-router 4.5.0

## サイトの更新

1. アップロードするPCに[dockerをインストール](https://matsuand.github.io/docs.docker.jp.onthefly/get-docker/)してください

2. 以下のコマンドを実行し，パスワードを入力します

```sh
sh scripts/upload/upload_with_docker.sh
```

> Shellの種類によってはパスワードの入力が上手く動作しない場合があります.(Bash / Ubuntu)
> その場合は上記コマンドの’sh’部分を置き換えてください

```bash
# Bash / Ubuntu など
bash scripts/upload/upload_with_docker.sh
```

### miseを使う方法

```bash
# mise -v
mise run setup
mise run upload
```

## セットアップ方法

### Node.js のインストール

ご使用の開発環境に Node.js をインストールしてください（バージョン 14以降推奨）

<https://nodejs.org/ja/download/>

### 依存関係のダウンロード

サイトのビルドに必要な依存関係をインストールします

```bash
yarn install
```

### データを変換

`document/data/*.yml` ファイル内のデータを `src/assets/data/*.json` に変換します

```bash
yarn run doc
```

### 開発用サーバーの起動

<http://localhost:3000/> でサーバーが起動します

```bash
yarn run dev
```

## サイトのビルド方法

vue ファイルたちを js と html ファイルに変換します
サイトを更新する際に必要なコマンドです

### 静的ファイルとして吐き出し

```bash
yarn run build
```

`dist` ディレクトリ内にサーバーで配置する用の静的ファイルが作成されます

## 作成者

[kazuki-komori](https://github.com/kazuki-komori)

## URL変更対応

学部ホームページの都合でURLが <https://stat.cis.doshisha.ac.jp/> に変更されました．

### サーバ上の配置場所

`/lab/` に一式配置すればOK

rootディレクトリからのリダイレクトのための設定ファイルは`root_htaccess/.htaccess`にある．
これをサーバ上のrootディレクトリに配置すればOK

## 最終更新

2024.04.01

更新に関するメモ [how2update.md](./md/how2update.md) を更新

```
