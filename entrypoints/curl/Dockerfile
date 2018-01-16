FROM alpine:3.6

RUN apk update \
      && apk add curl \
      && rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/bin/curl"]
