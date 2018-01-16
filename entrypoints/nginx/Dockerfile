FROM nginx:1.13.8

ENV NGINX_PORT 80

COPY default.conf /etc/nginx/conf.d/default.conf
COPY start.sh /

CMD ["/start.sh"]
