## Deploy the demo application
* Create an overlay network
* Create a service for jfahrer/swarm-demo-db:v1
  * call it demo-db
  * Reserve 256MB of memory
  * Add constraints, so that the service will only use one node
  * Mount a volume to /var/lib/postgresql/data
  * Set environment variables (--env-file)
    * POSTGRES_USER=demo
    * POSTGRES_PASSWORD=secret
    * POSTGRES_DB=demo
* Create a service for jfahrer/swarm-demo-frontend:v5
  * Set environment variables (--env-file)
    * POSTGRES_USER=demo
    * POSTGRES_PASSWORD=secret
    * POSTGRES_DB=demo
    * POSTGRES_HOST=demo-db
* Create a service for jfahrer/swarm-demo-lb:v1
  * Call it demo-lb
  * Publish port 80
  * Set environment variables (--env)
    * PROXY_UPSTREAM=demo-frontend:8080
* Use your browser to verify that it works
  * http://<ip of swarm node>
  * Test all nodes
* Scale the demo-frontend service to 10 replicas
* Scale the demo-lb to 3 replicas
