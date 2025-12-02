FROM ghcr.io/dockhippie/ruby:latest@sha256:0922f18fb0146615321fbc66d70459930068b1d8a200d64515887d71adf9174c
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
