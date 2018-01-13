FROM alpine:latest

RUN mkdir /data \
      && touch /data/secrets \
      && chmod 700 /data/secrets

COPY evil-script.sh /

CMD ["/evil-script.sh"]
