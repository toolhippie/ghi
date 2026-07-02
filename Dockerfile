FROM ghcr.io/dockhippie/ruby:latest@sha256:6bfeeb860559ac849e622586e5cea8feba0b5d2171901fdcca4d65c3241944b0
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
