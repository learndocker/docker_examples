FROM ruby:2.4.3-alpine

RUN apk --no-cache add build-base postgresql-dev

WORKDIR /tmp
COPY Gemfile* ./
RUN bundle install

WORKDIR /app
COPY . .

EXPOSE 8080

CMD ["/usr/local/bin/bundle", "exec", "ruby", "app.rb"]
