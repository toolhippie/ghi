FROM ghcr.io/dockhippie/ruby:latest@sha256:564c091d0086a231bee917e3a4fd7b2c5172bc59b7ce522166675e89fced5151
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
