FROM mcr.microsoft.com/devcontainers/base:2.1.8-trixie@sha256:e389149057371298eaeb72e736fc2c4dcb79974de222dd471d2e6d675d2f61c4

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
