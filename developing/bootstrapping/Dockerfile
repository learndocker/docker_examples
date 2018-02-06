FROM ruby:2.4.3-alpine

RUN apk add --no-cache build-base \
      && gem install rails

WORKDIR /app

ENTRYPOINT ["/usr/local/bundle/bin/rails"]
