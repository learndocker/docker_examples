## Integrate your load balancer
* Add a new service definition
  * Call it `lb`
  * Use your load balancer image
    * Or use jfahrer/lb:v3
  * Make sure to assign the PROXY_UPSTREAM environment variable
    * Needs to reference the correct service and port
  * Publish port 80
* Start your services
* Use your browser to verify it works
  * http://localhost
* Scale your web app
  * Stop publishing ports for your web app
