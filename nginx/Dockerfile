FROM debian:buster-slim

ARG NGINX_PKG_TYPE=full
ENV NGINX_PKG=nginx-${NGINX_PKG_TYPE:-full}

RUN apt-get update \
      && apt-get install -y $NGINX_PKG \
      && rm -rf /var/lib/apt/lists/* \
      && rm /var/log/nginx/access.log \
      && rm /var/log/nginx/error.log \
      && ln -s /dev/stdout /var/log/nginx/access.log \
      && ln -s /dev/stderr /var/log/nginx/error.log

COPY ./html/ /var/www/html/

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

