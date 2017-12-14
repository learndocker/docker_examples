FROM debian:buster-slim

RUN apt-get update
RUN apt-get install -y nginx
RUN rm /var/log/nginx/access.log && ln -s /dev/stdout /var/log/nginx/access.log
RUN rm /var/log/nginx/error.log && ln -s /dev/stderr /var/log/nginx/error.log

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

