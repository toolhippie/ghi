FROM ghcr.io/dockhippie/ruby:latest@sha256:3fc687b072420ad91fcd483a7d85772bfbc05d6823c83e4628772ea9e356d0ca
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
