FROM ghcr.io/dockhippie/ruby:latest@sha256:ac5c8095092a0df73497790d3b294a6e4d021cb61039852b78963d62631c5acf
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
