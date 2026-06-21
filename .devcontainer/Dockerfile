FROM mcr.microsoft.com/devcontainers/base:2.1.10-trixie@sha256:b60cd6e70901c42c23dc312b8e0cf2c704cad3acf65c55739ff1ef33a30166d2

RUN apt-get update && apt-get install -y apache2-utils && rm -rf /var/lib/apt/lists/*

# renovate: datasource=github-releases depName=yamlfmt packageName=google/yamlfmt
ARG YAMLFMT_VERSION=0.21.0

RUN \
  if [ "${YAMLFMT_VERSION}" != "none" ]; then \
    curl -fsSLo yamlfmt.tar.gz "https://github.com/google/yamlfmt/releases/download/v${YAMLFMT_VERSION}/yamlfmt_${YAMLFMT_VERSION}_Linux_x86_64.tar.gz" \
    && tar -xzf yamlfmt.tar.gz yamlfmt \
    && install yamlfmt /usr/local/bin/yamlfmt \
    && rm -f yamlfmt yamlfmt.tar.gz; \
  fi
