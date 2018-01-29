FROM ruby:2.4.3-alpine

RUN apk add --no-cache \
      build-base \
      postgresql-dev

WORKDIR /tmp
COPY Gemfile* ./
RUN bundle install

WORKDIR /app
COPY . .

CMD ["ruby", "app.rb"]
