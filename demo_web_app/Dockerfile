FROM ruby:2.4.2

RUN apt-get update && apt-get install -y postgresql-client

WORKDIR /tmp
COPY Gemfile* ./
RUN bundle install

WORKDIR /app
COPY . .

ENV POSTGRES_HOST=localhost POSTGRES_DB=web_app POSTGRES_USER=web_app POSTGRES_PASSWORD=
ARG WAIT_FOR_POSTGRES=false
ENV WAIT_FOR_POSTGRES=$WAIT_FOR_POSTGRES
EXPOSE 9292

CMD ["./start.sh"]
