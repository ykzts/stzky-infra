#!/bin/bash

set -euo pipefail

service_dir="${1:?service directory is required}"

# Use compose.test.yaml if it exists (for test-specific overrides such as
# healthchecks, ports, profiles, or volumes).
if [ -f "${service_dir}/compose.test.yaml" ]; then
  echo "COMPOSE_FILE=compose.yaml:compose.test.yaml" >> "${GITHUB_ENV:?GITHUB_ENV is not set}"
fi

# Use .env.test for Compose variable interpolation if present.
# This is set via COMPOSE_ENV_FILES (symmetric to COMPOSE_FILE) so that
# all subsequent `docker compose` commands in the job inherit it.
if [ -f "${service_dir}/.env.test" ]; then
  echo "COMPOSE_ENV_FILES=.env.test" >> "${GITHUB_ENV:?GITHUB_ENV is not set}"
fi
