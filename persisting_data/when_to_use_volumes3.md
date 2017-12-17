## Named vs anonymous volumes
### Named Volume
* You care about the data long-term
  * A database
  * Other services that persist data
* You need to easily identify the volume
  * Reuse them
  * For backups
  * Migrate them

### Anonymous Volume
* You don't care about the data long-term
  * Testing
* When you need to share data between containers
  * using --volumes-from
