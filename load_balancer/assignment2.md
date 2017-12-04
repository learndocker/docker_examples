## Scaling the application
### Current setup
* File db.env
```
POSTGRES_DB=web_app_db
POSTGRES_USER=app
POSTGRES_PASSWORD=secret
```

* File app.env
```
POSTGRES_DB=web_app_db
POSTGRES_USER=app
POSTGRES_PASSWORD=secret
POSTGRES_HOST=pg
```

```
docker network create mynet

docker container run --network mynet --env-file db.env -v pgdata:/var/lib/postgresql/data -d --name pg postgres:9.6.6-alpine

docker container run --network mynet --env-file app.env -d --name webapp jfahrer/demo_web_app:latest

docker container run --network mynet -e PROXY_UPSTREAM=webapp:9292 -d -p 80:80 --name lb jfahrer/lb:latest
```

### Use network aliases
* Run the demo_web_app without a name
* Assign the network alias `webapp`
* Run multiple instances (5-10)
* Browse localhost


