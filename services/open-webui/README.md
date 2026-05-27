# Open WebUI

## 概要

Open WebUI関連サービスのCompose設定です。

## 起動される子サービス

- `open-webui`
- `ovms` (OpenVINO Model Server)
- `db` (PostgreSQL)

## 公開ホスト

- `chat.stzky.com` (Caddy経由)

## 公開ポート

- ホストポートの直接公開なし
- Caddyから `open-webui:8080` にリバースプロキシ

## ファイル

- Compose定義: `compose.yaml`
