FROM ghcr.io/dockhippie/ruby:latest@sha256:6a546867dab0ebaabeed9add0245e50fe8a18dc6d0633c97d0decbad4fc92189
ENTRYPOINT [""]

# renovate: datasource=rubygems depName=ghi
ENV GHI_VERSION=1.2.0

RUN apk update && \
  apk upgrade && \
  gem install ghi:${GHI_VERSION} && \
  rm -rf /var/cache/apk/*
