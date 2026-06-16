# Roon Server

## 概要

Roon Server関連サービスのCompose設定です。

`network_mode: host` で動作し、音楽ライブラリとバックアップ用のホストパスが必須です。CIテストの対象外です（ハードウェア・ホスト依存）。

## 起動される子サービス

- `roonserver`
- `alloy`

## 環境変数

`.env.example` をコピーして `.env` を作成し、各変数の説明に従って値を設定してください。

```bash
cp .env.example .env
```

必須・任意の区別およびデフォルト値は `.env.example` 内のコメントを参照してください。

## 公開ホスト

- 専用ホスト名の直接公開なし
- Caddy経由のリバースプロキシなし

## 公開ポート

- `roonserver` は `network_mode: host` のため、Roon Serverがホスト上で直接ポートを公開（Roon Remote / RAAT 等）
- `alloy` は `stzky-ingress` ネットワーク上で動作し、ホストポートの直接公開なし

## ファイル

- Compose定義: `compose.yaml`
- Alloy設定: `config/alloy/`
- 環境変数テンプレート: `.env.example`
