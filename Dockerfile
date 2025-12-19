FROM ghcr.io/dockhippie/ruby:latest@sha256:b49d8593c930b627232d694fab4a91f7fcd071b3d9b373b2c96b69305b823d3f
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
