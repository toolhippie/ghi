FROM ghcr.io/dockhippie/ruby:latest@sha256:1f1b90c36b3abeea109ea5f6b391ad04016cdd42793c9322026643f3e1e92f6c
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
