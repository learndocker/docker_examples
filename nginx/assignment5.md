## Add a build argument to the nginx image
* Define a build argument to define which package to install
  * `nginx-light`
  * `nginx-full`
  * `nginx-extras`
* Value should either be `light`, `full` or `extras`
* Set the default to `full`
* Make the installed package available in the environment variable `NGINX_PKG`
  * For example `nginx-full`
* Try building and testing the image
* Add a Docker Compose file
  * Add a service for each variant
  * Set the build arguments
  * Tag the image with the package type installed
    * jfahrer/nginx:stretch-light
    * jfahrer/nginx:stretch-full
    * jfahrer/nginx:stretch-extras
  * Build and push all the images

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
