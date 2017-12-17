## Mounting volumes
### Mount a volume containing files
* Create a named volume test-data
* Start a sh in a container running alpine
  * Mount the volume test-data to /data
* Create some files and folders in the volume
  * `touch /data/test.file`
  * `mkdir /data/some_dir`
* Stop the container running alpine
* Start bash shell a container running your nginx image
  * Mount the volume test-data to /var/www/html
* What can you find in the directory /var/www/html?

### Mount a new volume
* Start bash shell in a container running your nginx image
  * Mount a new named or anonymous volume to /var/www/html
* What can you find in the directory /var/www/html?
