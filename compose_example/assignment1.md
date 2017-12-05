## Integrate the demo_web_app
* Create the `app.env` file
  * With the environment variables to configure the `jfahrer/demo_web_app`
* Add a new service definition `webapp` to the compose file
  * Use `jfahrer/demo_web_app:latest`
  * Use the app.env file
  * Publish port 9292
* Start the services using docker-compose
  * Start the database first
  * The web app second
* Use your browser to verify it works
  * http://localhost:9292
