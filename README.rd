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
