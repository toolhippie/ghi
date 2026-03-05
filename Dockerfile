FROM ghcr.io/dockhippie/ruby:latest@sha256:132d6a964ff5ad873de60500b6f2056fc11e1903f367bc9b1828fbeca203a9bb
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
