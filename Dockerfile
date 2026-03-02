FROM ghcr.io/dockhippie/ruby:latest@sha256:df68bd2005df8678abed7d383fcc30a5ce975a56a10687a2cbc9e0866ba5a25f
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
