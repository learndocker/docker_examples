FROM ruby:2.4.3-alpine

RUN apk add --no-cache \
      build-base

WORKDIR /tmp

COPY Gemfile* ./
RUN bundle install

WORKDIR /app

ENV PATH=./bin:$PATH

CMD ["client"]
