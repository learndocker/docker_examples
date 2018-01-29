#!/bin/sh
if [ ! -z "$LOGGLY_TOKEN_FILE" ]; then
  echo "Reading password from $LOGGLY_TOKEN_FILE"
  export LOGGLY_TOKEN=`cat "${LOGGLY_TOKEN_FILE}"`
fi

exec fluentd -c /fluentd/etc/${FLUENTD_CONF} -p /fluentd/plugins $FLUENTD_OPT
