#!/bin/bash

set -uo pipefail

# dockerd is started in the background by the docker-in-docker feature and may
# not be ready yet. Never fail the container start because of this script.
if ! timeout 60 sh -c 'until docker info > /dev/null 2>&1; do sleep 1; done'; then
  echo "dockerd is not ready; skipping image prune" >&2
  exit 0
fi

docker image prune --all --force --filter "until=168h" || true
