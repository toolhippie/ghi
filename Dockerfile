FROM ghcr.io/dockhippie/ruby:latest@sha256:7337198c2e33893159c9747973db814b6f9c16aa8fbf83835a9a0ece3b1d2b8d
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
