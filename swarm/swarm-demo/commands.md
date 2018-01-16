## The commands
```sh
#Make sure we don't have existing resources that would conflict with our commands
docker network ls
docker service ls

# Create the network
docker network create --driver overlay demo-net

# Create the demo-db
docker service create --name demo-db --reserve-memory 256M --constraint node.hostname==node1 \
  --mount src=demo-data,dst=/var/lib/postgresql/data \
  --env-file db.env \
  --network demo-net \
  jfahrer/swarm-demo-db:v1

# Create the frontend
docker service create --name demo-frontend --env-file app.env --network demo-net jfahrer/swarm-demo-frontend:v5

# Create the lb
docker service create --name demo-lb --publish 80:80 --env PROXY_UPSTREAM=demo-frontend:8080 \
  --network demo-net jfahrer/swarm-demo-lb:v1

# Scale the services
docker service update --replicas 10 demo-frontend
docker service update --replicas 3 demo-lb
```
