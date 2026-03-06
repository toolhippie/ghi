FROM ghcr.io/dockhippie/ruby:latest@sha256:d46fc145936a012705fde4243d803dc23533d2f499670b1f1e8bfbcec54b5766
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
