# Immich

## 概要

Immich関連サービスのCompose設定です。

## 起動される子サービス

- `immich-server`
- `immich-machine-learning`
- `database` (PostgreSQL)
- `redis` (Valkey)

## 公開ホスト

- `photos.stzky.com` (Caddy経由)

## 公開ポート

- ホストポートの直接公開なし
- Caddyから `immich-server:2283` にリバースプロキシ

## ファイル

- Compose定義: `compose.yaml`
- テスト用上書き: `compose.test.yaml`
