FROM ghcr.io/dockhippie/ruby:latest@sha256:a7c808056cf65cc75bc5d7a01ef597134853b3e6a454716df776a59966026da3
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
