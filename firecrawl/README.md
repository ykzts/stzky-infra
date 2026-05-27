# Firecrawl

## 概要

Firecrawl関連サービスのCompose設定です。

## 起動される子サービス

- `firecrawl`
- `firecrawl-playwright`
- `firecrawl-redis`
- `firecrawl-rabbitmq`
- `firecrawl-postgres`

## 公開ホスト

- 専用ホスト名の直接公開なし
- `mcp-gateway` から内部利用 (`FIRECRAWL_API_URL` の既定値は `http://firecrawl:3002`)

## 公開ポート

- ホストポートの直接公開なし

注記:
- このディレクトリでは、composeファイル名が `compose.yaml` ではなく `compoase.yaml` です。

## ファイル

- Compose定義: `compoase.yaml`
