# Homepage

## 概要

HomepageサービスのCompose設定です。

## 起動される子サービス

- `homepage`

## 公開ホスト

- `stzky.com` (Caddy経由)

## 公開ポート

- ホストポートの直接公開なし
- Caddyから `homepage:3000` にリバースプロキシ

## ファイル

- Compose定義: `compose.yaml`
- 設定: `config/homepage/`
