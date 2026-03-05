FROM ghcr.io/dockhippie/ruby:latest@sha256:a759fbd186e0278a955095cec8960e4bdebd19dfa74991fdea1c4df3f30373e6
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
