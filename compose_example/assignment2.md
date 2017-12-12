## Integrate the load balancer
* Add the required environment variable to the .env file
  * Set PROXY_UPSTREAM to `webapp:9292`
* Remove the `web` service definition
* Add a new service definition
  * Call it `lb`
  * Use your load balancer image
    * Or use jfahrer/lb:v2
  * Depend on the service `webapp`
  * Make sure to assign the PROXY_UPSTREAM environment variable
  * Publish port 80
* Stop publishing the `webapp` service
* Start the services using docker-compose
* Use your browser to verify it works
  * http://localhost
