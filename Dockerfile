FROM ghcr.io/dockhippie/ruby:latest@sha256:d02cb54261cf9551bcc72f96f53ced9b235e681580455f383d56619a107cca42
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
