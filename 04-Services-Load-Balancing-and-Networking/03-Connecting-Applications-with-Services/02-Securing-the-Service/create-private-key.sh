#!/bin/bash
#create a public private key pair
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /tmp/nginx.key -out /tmp/nginx.crt -subj "/CN=my-nginx/O=my-nginx"
#convert the keys to base64 encoding
cat /tmp/nginx.crt | base64
cat /tmp/nginx.key | base64
