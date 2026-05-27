# Grafana

## 概要

Grafana関連サービスのCompose設定です。

## 起動される子サービス

- `grafana`
- `prometheus`
- `alloy`
- `loki`
- `node-exporter`
- `cadvisor`
- `snmp-exporter`
- `database` (PostgreSQL)
- `redis` (Valkey)

## 公開ホスト

- `graph.stzky.com` (Grafana)
- `prometheus.stzky.com` (Prometheus, Basic認証あり)

## 公開ポート

- ホストポートの直接公開なし
- Caddyから `grafana:3000` と `prometheus:9090` にリバースプロキシ

## ファイル

- Compose定義: `compose.yaml`
