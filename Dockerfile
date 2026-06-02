FROM ghcr.io/dockhippie/ruby:latest@sha256:16726e69b497276504d69e56d58b804523857f34739fd060ff55119f934b945e
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
