FROM ghcr.io/dockhippie/ruby:latest@sha256:efdee047e807f21568f9e7ba803be2dbc263618b568822049e7cdd7b244361c4
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
