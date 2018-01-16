#!/usr/bin/env bash
envsubst '$PROXY_PROTOCOL,$PROXY_UPSTREAM' < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf

exec nginx -g 'daemon off;'
