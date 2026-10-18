FROM ghcr.io/dockhippie/ruby:latest@sha256:4b2c9d4ea209b5f827deca25a7be965d6b59753567322cef28cdda9e856ba313
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
