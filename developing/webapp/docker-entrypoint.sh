#!/bin/bash
if [ ! -z $WAIT_FOR_POSTGRES ]
then
  echo Waiting for postgres to start...
  while ! pg_isready -h $POSTGRES_HOST > /dev/null; do
    sleep 0.5
  done
  echo '... done'
fi
"$@"
