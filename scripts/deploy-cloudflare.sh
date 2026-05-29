#!/bin/bash
set -euo pipefail

# 対象ディレクトリ（account/zones両対応）
STACK_DIR=${1:-infra/terraform/cloudflare/live/prod/account}
BACKEND_CONFIG="backend.hcl"

# Terraform初期化・plan・apply
terraform -chdir="$STACK_DIR" init -backend-config="$BACKEND_CONFIG"
terraform -chdir="$STACK_DIR" plan -out=tfplan
terraform -chdir="$STACK_DIR" apply tfplan
