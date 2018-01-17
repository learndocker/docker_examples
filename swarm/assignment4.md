## Make use of configurations
* Replace the image for the db service
  * Use `postgres:9.6-alpine`
  * Keep the environment variables
  * Mount the attached SQL file to `/docker-entrypoint-initdb.d/create_table.sql`
* Make sure that no other service publishes port 80
* Deploy the stack
  * Use a new stack name if you previously deployed it
  * Or delete the volumes from the node
