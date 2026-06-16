# stzky-infra

山岸和利の個人宅に配置しているサーバーで動かすための、セルフホストサービス向けのDocker Compose設定ファイル集です。

## 概要

このリポジトリには、簡単にデプロイ・メンテナンスできるように設計された、様々なセルフホストサービス向けのDocker Compose設定ファイルが含まれています。

## サービス

各サービスの詳細は、各ディレクトリ配下のREADMEを参照してください。

- [Baserow](services/baserow/README.md)
- [Caddy](services/caddy/README.md)
- [EPUB Web](services/epub-web/README.md)
- [Firecrawl](services/firecrawl/README.md)
- [Grafana](services/grafana/README.md)
- [Homepage](services/homepage/README.md)
- [Immich](services/immich/README.md)
- [MCP Gateway](services/mcp-gateway/README.md)
- [n8n](services/n8n/README.md)
- [Open WebUI](services/open-webui/README.md)
- [Roon Server](services/roonserver/README.md)

## 使い方

### 前提条件

- Docker
- Docker Compose

### デプロイ

各サービスは次のようなコマンドで個別にデプロイできます。

```bash
cd <サービスディレクトリ>
docker compose up -d
```

例えば、Grafanaをデプロイする場合は次のようにします。

```bash
cd services/grafana
docker compose up -d
```

### 設定

環境変数が必要なサービスでは、各サービスディレクトリの `.env.example` をコピーして `.env` を作成し、必要な変数を設定してください。

```bash
cd <サービスディレクトリ>
cp .env.example .env
```

必須・任意の区別およびデフォルト値は、各 `.env.example` 内のコメントとサービス README の「環境変数」セクションを参照してください。

### サービスの停止

サービスを停止するには次のようなコマンドを実行します。

```bash
cd <サービスディレクトリ>
docker compose down
```

## 開発

開発に関する情報は[CONTRIBUTING.md](CONTRIBUTING.md)を参照してください。

## ライセンス

このプロジェクトはMITライセンスの下でライセンスされています。詳細は[LICENSE](LICENSE)ファイルを参照してください。

## 著者

Yamagishi Kazutoshi
