FROM ruby:2.4.3-alpine

WORKDIR /app

RUN gem install sinatra

COPY app.rb .

CMD ["ruby", "app.rb"]
