## Running nginx read only
* Use your nginx image
* Run the nginx container with the read-only flag
* Use a tmpfs where needed

## The Dockerfile
```
FROM debian:buster-slim

RUN apt-get update \
      && apt-get install -y nginx \
      && rm -rf /var/lib/apt/lists/* \
      && rm /var/log/nginx/access.log \
      && rm /var/log/nginx/error.log \
      && ln -s /dev/stdout /var/log/nginx/access.log \
      && ln -s /dev/stderr /var/log/nginx/error.log

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
```
