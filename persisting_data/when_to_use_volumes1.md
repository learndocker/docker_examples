## Volumes vs bind mounts
* bind mounts rely on the file system structure of the host
  * You need to manage them
  * The container has access to the files on the Docker host
* Volumes are managed by Docker
  * Independent of the file system structure on the host
  * Easy to migrate and backup
  * Can be managed via the Docker client
  * Can be pre-populated with data from a container
