FROM ghcr.io/dockhippie/ruby:latest@sha256:b001411bfccee5cba840a72fa2a7aa7e548ca34aa40a37fcbd506721a7b20350
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
