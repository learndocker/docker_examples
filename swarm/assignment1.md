## Deploy a demo application
* Create an overlay network
* Create a service for jfahrer/swarm-demo-frontend:v4
  * Call it demo-frontend
  * Attach the service to the overlay network
* Create a service for jfahrer/swarm-demo-lb:v1
  * Call it demo-lb
  * Attach the service to the overlay network
  * Publish port 80
  * Set environment variables (--env)
    * PROXY_UPSTREAM=demo-frontend:8080
* Use your browser to verify that it works
  * http://localhost
* Scale the demo-frontend service to 5 replicas
* Update the demo-frontend service to use jfahrer/swarm-demo-frontend:v3
  * rollback
