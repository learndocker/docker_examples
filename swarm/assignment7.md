## Losing quorum
* Setup 3 manager nodes
* Setup 2 additional worker nodes
* Create a few services
  * So that tasks are running on all nodes
* Shutdown 2 of the managers
  * Can you still interact with the Swarm?
* Turn the 2 nodes back on
  * Will quorum be restored?
* Shutdown the 2 nodes again
* Create a new Swarm with the data from the remaining node
  * Are your services still there?
  * Are your workers still there?
