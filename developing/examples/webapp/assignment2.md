# Store requests
* Log HTTP requests that the webapp receives
  * Object / data structure
* Log requests into a file: `/tmp/requests.txt`
  * IP-address of the client
    * Needs to be extracted from the request
  * Path
    * Should be extracted from the request
    * Should always be `/`
  * Hostname of the container
    * Method or function call
    * Via a shell command: `hostname`
  * Timestamp
    * Method or function call
