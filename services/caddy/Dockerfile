FROM caddy:2.11.4-builder@sha256:f2b98918658f949a3c533f2c73bd0806e3f2576ccf8eb182c8b1690c977007ea AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare

FROM caddy:2.11.4@sha256:cfeb0b281bc44a5a51fecde39e9e577c60d863c0b6196e6bbdf58fd00960887f

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
