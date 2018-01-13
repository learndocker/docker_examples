FROM alpine:latest

ARG MYSHELL
ENV CUSTOMSHELL=${MYSHELL:+true}
ENV MYSHELL=${MYSHELL:-bash}
ENV PKG=${MYSHELL}_x86

RUN apk update \
      && apk add $MYSHELL \
      && rm -rf /var/cache/apk/*

ENV PS1="\h:\w# " PS2=">> "

CMD ["sh", "-c", "$MYSHELL"]
