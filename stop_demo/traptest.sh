#!/usr/bin/env bash
trap "echo Received SIGTERM > /dev/stderr" SIGTERM
trap "echo Received SIGINT  > /dev/stderr" SIGINT
trap "echo Received SIGHUP  > /dev/stderr" SIGHUP
trap "echo Received SIGQUIT > /dev/stderr" SIGQUIT
echo "Started with PID $$"

while :     # This is the same as "while true".
do
  sleep 0.1 # This script is not really doing anything.
  wait
done
