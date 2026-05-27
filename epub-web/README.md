# EPUB Web

## 概要

epub-webサービスのCompose設定です。

## 起動される子サービス

- `epub-web`

## 公開ホスト

- `epub.ykzts.com` (Caddy経由)

## 公開ポート

- ホストポートの直接公開なし
- Caddyから `epub-web:8080` にリバースプロキシ

## ファイル

- Compose定義: `compose.yaml`
