## Use the database
* Make sure that your postgres database is good to go
* Install dependencies
  * Language libraries
  * System libraries
    * Debian/Ubuntu: `build-essential`, `postgresql-server-dev-all`
    * Alpine: `build-base`, `postgresql-dev`
    * CentOS: `@Development Tools`, `postgresql-devel`
* Connect to the database
  * Use environment variables for the configuration
* Store requests inside the database instead of a file

### Example SQL statement
```
INSERT INTO requests (ip, path, host, requested_at)
VALUES ('127.21.0.4', '/', '8e358f1ba0db', '2018-01-09 10:38:10 +0000');
```
