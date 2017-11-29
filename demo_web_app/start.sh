#!/usr/bin/env bash
if [ "$WAIT_FOR_POSTGRES" == "true" ]
then
  echo Waiting for postgres to start...
  while ! pg_isready -h $POSTGRES_HOST; do sleep 0.5; done
  echo ..done
fi
bundle exec rake db:migrate
exec bundle exec rackup -o 0.0.0.0
