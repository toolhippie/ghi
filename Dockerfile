FROM ghcr.io/dockhippie/ruby:latest@sha256:4b7833e576684e40f4c8f3a483c2f77e184f649c11ad6091884c646d6cb22c95
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
