## Use the load balancer
* Setup an user defined network
  * Connect all containers to this network
* Setup a postgres database
  * Setup a user with a password and a database
* Start the jfahrer/demo_web_app image
  * Name the container `webapp`
  * Setup the connection to postgres via the environment variables
  * Do not forward any ports
* Start our load balancer
  * Set the environment variable PROXY_UPSTREAM to `webapp:9292`
  * Forward port 80 to the containers port 80
* Open a browser and browse `localhost`
