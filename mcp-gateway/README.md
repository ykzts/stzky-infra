# MCP Gateway

## 概要

MCP Gateway関連サービスのCompose設定です。

## 起動される子サービス

- `gateway`
- `mcp-firecrawl`
- `mcp-grafana`

## 公開ホスト

- `mcp.stzky.com` (Caddy経由)

## 公開ポート

- ホストポートの直接公開なし
- Caddyから `gateway:8811` にリバースプロキシ

## ファイル

- Compose定義: `compose.yaml`
