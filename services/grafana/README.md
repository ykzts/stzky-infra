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

## 環境変数

`.env.example` をコピーして `.env` を作成し、各変数の説明に従って値を設定してください。

```bash
cp .env.example .env
```

必須・任意の区別およびデフォルト値は `.env.example` 内のコメントを参照してください。

## 公開ホスト

- `graph.stzky.com` (Grafana)
- `prometheus.stzky.com` (Prometheus, Basic認証あり)

## 公開ポート

- ホストポートの直接公開なし
- Caddyから `grafana:3000` と `prometheus:9090` にリバースプロキシ

## SNMP

ルーター (`192.168.100.1`) は 2 つのジョブで取得する。

- `snmp`: `yamaha_rt` モジュール (CPU、メモリ、稼働時間など)。イメージ同梱の `snmp.yml` を使う
- `snmp_if`: `if_traffic` モジュール (インターフェースの通信量、状態、エラー)。60 秒間隔

`if_traffic` は IF-MIB から必要な列だけを取得するモジュールで、`config/snmp-exporter/generator.yml` から生成した `config/snmp-exporter/if_traffic.yml` をイメージ同梱の `snmp.yml` と合わせて読み込む。イメージ同梱の `if_mib` モジュールはインターフェースのテーブル全体を取得するため、このルーターでは 1 回の取得に 30 秒以上かかり、その間 `snmp` ジョブの取得も遅くなる。

`generator.yml` を変更したら、net-snmp の MIB を用意して `if_traffic.yml` を再生成し、`yamlfmt` で整形する。

```bash
cd config/snmp-exporter
mkdir -p mibs
for mib in IF-MIB IANAifType-MIB SNMPv2-SMI SNMPv2-TC SNMPv2-CONF SNMPv2-MIB; do
  curl -fsSL -o "mibs/${mib}.txt" "https://raw.githubusercontent.com/net-snmp/net-snmp/v5.9.4/mibs/${mib}.txt"
done
docker run --rm --user "$(id -u):$(id -g)" -v "${PWD}:/opt" prom/snmp-generator:v0.30.1 generate -m mibs --fail-on-parse-errors
mv snmp.yml if_traffic.yml
rm -r mibs
yamlfmt if_traffic.yml
```

## ファイル

- Compose定義: `compose.yaml`
- 環境変数テンプレート: `.env.example`
- SNMP モジュール定義: `config/snmp-exporter/generator.yml` (生成物: `config/snmp-exporter/if_traffic.yml`)
