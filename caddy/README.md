# Caddy

## 概要

Caddy関連サービスのCompose設定です。

## 起動される子サービス

- `caddy`

## 公開ホスト

- `stzky.com`
- `www.stzky.com`
- `base.stzky.com`
- `chat.stzky.com`
- `flow.stzky.com`
- `graph.stzky.com`
- `mcp.stzky.com`
- `photos.stzky.com`
- `prometheus.stzky.com`
- `epub.ykzts.com`

## 公開ポート

- `80/tcp`
- `443/tcp`
- `443/udp`

## ファイル

- Compose定義: `compose.yaml`
- テスト用上書き: `compose.test.yaml`
- ルーティング設定: `config/caddy/Caddyfile`
