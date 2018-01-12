FROM ruby:2.4.3-alpine

WORKDIR /app

RUN apk update && apk add build-base postgresql-dev
RUN gem install sinatra pg

COPY app.rb .

CMD ["ruby", "app.rb"]
