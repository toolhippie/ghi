FROM ghcr.io/dockhippie/ruby:latest@sha256:fdeebfeddd0fe7f26744fbb1df0fbdc3311bc1abe8d77390eca20d903bc103e0
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
