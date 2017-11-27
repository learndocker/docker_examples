## Base image (FROM)
debian:buster-slim

## Run the following commands (RUN)
apt-get update
apt-get install -y nginx

## Startup command (CMD)
nginx -g 'daemon off;'

## Build the image
* Tag it with <docker_id>/nginx:latest
* Push it to Docker Hub

## Verify the image works
* Start a container
* Expose port 80
* Use a browser

## Stop the container
docker container kill <CONTAINER NAME>
docker container ls
