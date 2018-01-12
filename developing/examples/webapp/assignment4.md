## Retrieve and list requests
* Get a list of requests
  * Set a limit to 25
  * Sort them by their id descending
* Display the requests
  * Don't worry about styling

### Example SQL statement
```
SELECT ip, path, host, requested_at
FROM requests
ORDER BY id DESC
LIMIT 25;
```
