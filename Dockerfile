FROM ghcr.io/dockhippie/ruby:latest@sha256:27ef15a7aa2097128dbb84f0065772eefe31ed310d32b2f26f637ddcf7336d1a
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
