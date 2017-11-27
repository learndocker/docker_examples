## Access volumes from multiple containers
* Create a named volume
* Start an alpine container
  * Execute a shell
  * Mount the volume to /data
  * Create a file in /data (`touch /data/test.file`)
* Start a second alpine container
  * Execute a shell
  * Mount the SAME volume
