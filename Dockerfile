FROM ghcr.io/dockhippie/ruby:latest@sha256:de277bacc030d04bd34bf232f48907c4ee5eb64364d7dcb8eda57e9349fc1b97
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
