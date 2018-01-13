#!/bin/sh
echo This script runs as `whoami`
echo Trying to gain access to sensitive information in /data/secrets
cat /data/secrets > /dev/null && echo "Successfully opened the file! Posting stolen secrets on social media platforms..."

