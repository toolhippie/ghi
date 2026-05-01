FROM ghcr.io/dockhippie/ruby:latest@sha256:bb1a93a3831cc2a6888558e4786ae5d1867ee33ecd737f72ba95df3e4ceb39fb
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
