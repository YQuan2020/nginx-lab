#!/usr/bin/bash

docker container run \
  --rm \
  --name nginx \
  --volume "$PWD/html":/usr/share/nginx/html \
  --volume "$PWD/conf":/etc/nginx \
  --volume "$PWD/logs":/var/log/nginx \
  -p 80:80 \
  -d \
  nginx

