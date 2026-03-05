FROM ghcr.io/dockhippie/ruby:latest@sha256:584548244a0607a67af13b1147c9cb53983d451cd130a5f8c7c61a89ec638b25
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
