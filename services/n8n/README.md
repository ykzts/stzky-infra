# n8n

## 概要

n8n関連サービスのCompose設定です。

## 起動される子サービス

- `n8n`
- `n8n-db` (PostgreSQL)

## 公開ホスト

- `flow.stzky.com` (Caddy経由)

## 公開ポート

- ホストポートの直接公開なし
- Caddyから `n8n:5678` にリバースプロキシ

## ファイル

- Compose定義: `compose.yaml`
