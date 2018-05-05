FROM alpine@sha256:7b848083f93822dd21b0a2f14a110bd99f6efb4b838d499df6d04a49d0debf8b

ARG MYSHELL
ENV CUSTOMSHELL=${MYSHELL:+true}
ENV MYSHELL=${MYSHELL:-bash}
ENV PKG=${MYSHELL}_x86

RUN apk update \
      && apk add $MYSHELL \
      && rm -rf /var/cache/apk/*

ENV PS1="\h:\w# " PS2=">> "

CMD ["sh", "-c", "$MYSHELL"]
