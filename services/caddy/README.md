# Caddy

## 概要

Caddy関連サービスのCompose設定です。

## 起動される子サービス

- `caddy`

## 環境変数

`.env.example` をコピーして `.env` を作成し、各変数の説明に従って値を設定してください。

```bash
cp .env.example .env
```

必須・任意の区別およびデフォルト値は `.env.example` 内のコメントを参照してください。

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
- 環境変数テンプレート: `.env.example`
- テスト用上書き: `compose.test.yaml`
- ルーティング設定: `config/caddy/Caddyfile`
