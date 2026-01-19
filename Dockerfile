FROM ghcr.io/dockhippie/ruby:latest@sha256:4ffd3492732b22e56e03c2faf0dfa2f599e3837e9babbbf4751c0f5a2dde89be
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
