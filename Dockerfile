FROM ghcr.io/dockhippie/ruby:latest@sha256:28a862bbe98ebe206a81aae52e058bf071b3607192994d6a2ad00073b10eb51b
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
