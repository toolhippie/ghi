FROM ghcr.io/dockhippie/ruby:latest@sha256:c1966cdc96a3d607def50f54540555d1119053e84f24ee46c31d797d8d704b45
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
