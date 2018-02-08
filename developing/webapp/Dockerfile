FROM ruby:2.4.3-alpine

WORKDIR /app

RUN apk add --no-cache \
      build-base \
      postgresql-dev

COPY . .

RUN bundle install

CMD ["ruby", "app.rb"]
