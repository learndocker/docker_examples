FROM alpine:3.6 AS repo

WORKDIR /app

RUN apk add --no-cache git

ARG GITHUB_TOKEN
RUN git clone https://${GITHUB_TOKEN}@github.com/jfahrer/secretrepo.git

FROM alpine:3.6

WORKDIR /app
COPY --from=repo /app/* /app/
