FROM ghcr.io/dockhippie/ruby:latest@sha256:89b848ff13e786cd173ba5786ea97b3deb9911a4222f589a0ed422024a77973e
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
