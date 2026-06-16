# Roon Server

## 概要

Roon Server関連サービスのCompose設定です。

`network_mode: host` で動作し、音楽ライブラリとバックアップ用のホストパスが必須です。CIテストの対象外です（ハードウェア・ホスト依存）。

## 起動される子サービス

- `roonserver`
- `alloy`

## 必須環境変数

`.env` ファイルに以下を設定してください。

- `ROON_SERVER_MUSIC_DIR`: 音楽ライブラリのホスト上のパス（コンテナ内 `/Music` にマウント）
- `ROON_SERVER_BACKUP_DIR`: Roonバックアップのホスト上のパス（コンテナ内 `/RoonBackups` にマウント）

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