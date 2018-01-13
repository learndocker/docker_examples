FROM alpine:latest

RUN mkdir /data \
      && touch /data/secrets \
      && chmod 700 /data/secrets

RUN adduser -u 1000 -D julian
USER julian

COPY evil-script.sh /

CMD ["/evil-script.sh"]
