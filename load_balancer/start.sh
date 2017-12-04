#!/usr/bin/env bash

envsubst '$PROXY_PROTOCOL,$PROXY_UPSTREAM' < /etc/nginx/sites-available/default.template > /etc/nginx/sites-available/default
exec nginx -g 'daemon off;'
