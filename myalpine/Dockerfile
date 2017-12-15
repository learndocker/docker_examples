FROM alpine:latest

RUN apk update \
      && apk add bash \
      && rm -rf /var/cache/apk/*

ENV PS1="\h:\w# " PS2=">> "

CMD bash
