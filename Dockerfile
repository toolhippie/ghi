FROM ghcr.io/dockhippie/ruby:latest@sha256:d2a2844c402503de908c1f2e4660a00baa34797cc24203ffb008ab1b29f86fdb
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
