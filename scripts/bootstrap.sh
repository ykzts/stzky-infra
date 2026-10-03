#!/bin/bash

set -euo pipefail

docker network create stzky-ingress || true

curl -fsSL https://claude.ai/install.sh | bash
