## Optimize the nginx Dockerfile
* Minimize the layers
* Check the size and number of layers of the image in its current state
* Change to Dockerfile so that there is only one RUN instruction
  * Chain all the commands together
  * Split them up into multiple lines
* Add a command to clean up files that get created by `apt-get update`
  * To the existing RUN instruction
  * `rm -rf /var/lib/apt/lists/*`
* Remove the ADD instruction
* Build the image with the new Dockerfile
* Check the size and number of layers of the image in its new state
