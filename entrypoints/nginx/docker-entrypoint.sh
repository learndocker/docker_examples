#!/usr/bin/env bash
mv /etc/nginx/conf.d/default.conf /tmp/default.conf
envsubst < /tmp/default.conf > /etc/nginx/conf.d/default.conf

nginx -t
