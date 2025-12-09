FROM ghcr.io/dockhippie/ruby:latest@sha256:af330c0b81685ff0df28dc8ddfd3cef1e728e51eba3cf45e085727928f5d62ef
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
