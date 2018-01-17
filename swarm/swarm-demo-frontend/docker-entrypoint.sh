#!/bin/bash

set +e

if [ ! -z "$POSTGRES_PASSWORD_FILE" ]; then
  echo "Reading password from $POSTGRES_PASSWORD_FILE"
  export POSTGRES_PASSWORD="$(< "${POSTGRES_PASSWORD_FILE}")"
fi

exec "$@"
