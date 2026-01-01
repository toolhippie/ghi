FROM ghcr.io/dockhippie/ruby:latest@sha256:5dbefc214247caf9c6555250e8bd4c30ee16bcaa1ef1ff3c3c2aa50a7fd37fee
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
