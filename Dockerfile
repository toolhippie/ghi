FROM ghcr.io/dockhippie/ruby:latest@sha256:e15709e6fb90d62c0c94bb8f4f52bf8e752a3638d6c91d5206dfae560cc794ae
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
