# Baserow

## 概要

Baserow関連サービスのCompose設定です。

## 起動される子サービス

- `backend`
- `web-frontend`
- `celery`
- `celery-export-worker`
- `celery-beat-worker`
- `db` (PostgreSQL)
- `redis` (Valkey)

## 公開ホスト

- `base.stzky.com` (Caddy経由)

## 公開ポート

- ホストポートの直接公開なし
- Caddyから `baserow_backend:8000` と `baserow_web_frontend:3000` にリバースプロキシ

## ファイル

- Compose定義: `compose.yaml`

