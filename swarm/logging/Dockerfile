FROM fluent/fluentd:v1.1.0

RUN gem install fluent-plugin-loggly

COPY config/docker.conf /fluentd/etc/docker.conf
COPY start-fluentd.sh /

ENV FLUENTD_CONF=docker.conf

CMD ["/start-fluentd.sh"]
