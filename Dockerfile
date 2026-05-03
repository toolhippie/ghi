FROM ghcr.io/dockhippie/ruby:latest@sha256:91e59dbb53a3a842a95400a97fef8f447142073815bc78401a20922488a17eaf
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
