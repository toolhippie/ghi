FROM ghcr.io/dockhippie/ruby:latest@sha256:9423cd30a5fad4f309da5963dcc4fbca577d58ae8c4209ed59d63b736d3624c1
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
