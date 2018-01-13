FROM alpine:latest

ARG MYSHELL=bash
ENV MYSHELL=$MYSHELL

RUN apk update \
      && apk add $MYSHELL \
      && rm -rf /var/cache/apk/*

ENV PS1="\h:\w# " PS2=">> "

CMD ["sh", "-c", "$MYSHELL"]
