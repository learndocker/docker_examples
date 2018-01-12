## Create a simple web application
* Use your preferred language
  * You should be able to run an embedded web server
* Write the code for a simple web application
  * Try to omit big frameworks
  * Listen on 0.0.0.0
  * Pick a port
  * Add an endpoint `/` that returns `Hello World` (or whatever you want)
* Create a Dockerfile
  * Pick a base image (FROM)
  * Set the working directory (WORKDIR)
  * Install dependencies (RUN)
  * Copy the source code (COPY)
  * Compile it if necessary (RUN)
  * Execute the web app on startup (CMD)
* Add the docker-compose.yml
  * Add the build context (build)
  * Publish the port of the web app (ports)
  * Mount the source code via a bind mount (volumes)
* Use the techniques you learned to iterate over your code
