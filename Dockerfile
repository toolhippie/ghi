FROM ghcr.io/dockhippie/ruby:latest@sha256:27e7b8e2ddfbf9bef78aa8238d4246e94966acdbc8f416518bb539060edf65cb
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
