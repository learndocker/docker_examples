FROM ruby:2.4.3-alpine

WORKDIR /tmp
COPY Gemfile* ./
RUN bundle install

WORKDIR /app
COPY . .

EXPOSE 8080

CMD ["/usr/local/bin/bundle", "exec", "ruby", "app.rb"]
