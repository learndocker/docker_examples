FROM alpine:latest

RUN apk update
RUN apk add bash
RUN rm -rf /var/cache/apk/*

ENV PS1="\h:\w# " PS2=">> "

CMD bash
