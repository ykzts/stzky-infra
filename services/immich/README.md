# Immich

## 概要

Immich関連サービスのCompose設定です。

## 起動される子サービス

- `immich-server`
- `immich-machine-learning`
- `database` (PostgreSQL)
- `redis` (Valkey)

## 環境変数

`.env.example` をコピーして `.env` を作成し、各変数の説明に従って値を設定してください。

```bash
cp .env.example .env
```

必須・任意の区別およびデフォルト値は `.env.example` 内のコメントを参照してください。

## 公開ホスト

- `photos.stzky.com` (Caddy経由)

## 公開ポート

- ホストポートの直接公開なし
- Caddyから `immich-server:2283` にリバースプロキシ

## ファイル

- Compose定義: `compose.yaml`
- 環境変数テンプレート: `.env.example`
- テスト用上書き: `compose.test.yaml`
