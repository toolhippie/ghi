FROM webhippie/ruby:latest

LABEL maintainer="Thomas Boerger <thomas@webhippie.de>" \
  org.label-schema.name="Ghi" \
  org.label-schema.vendor="Thomas Boerger" \
  org.label-schema.schema-version="1.0"

ENTRYPOINT ["/usr/bin/ghi"]

RUN apk update && \
  apk upgrade && \
  gem install ghi
