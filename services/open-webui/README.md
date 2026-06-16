# Open WebUI

## 概要

Open WebUI関連サービスのCompose設定です。

## 起動される子サービス

- `open-webui`
- `ovms` (OpenVINO Model Server)
- `db` (PostgreSQL)

## 環境変数

`.env.example` をコピーして `.env` を作成し、各変数の説明に従って値を設定してください。

```bash
cp .env.example .env
```

必須・任意の区別およびデフォルト値は `.env.example` 内のコメントを参照してください。

## 公開ホスト

- `chat.stzky.com` (Caddy経由)

## 公開ポート

- ホストポートの直接公開なし
- Caddyから `open-webui:8080` にリバースプロキシ

## ファイル

- Compose定義: `compose.yaml`
- 環境変数テンプレート: `.env.example`
