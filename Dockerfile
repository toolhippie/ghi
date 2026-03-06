FROM ghcr.io/dockhippie/ruby:latest@sha256:aad2c59fdf9a0660cc5f0980e9cd5d17c255a3781f36d877635ce1e08b43f581
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
