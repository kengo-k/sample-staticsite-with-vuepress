#!/bin/sh
docker run \
  -it \
  --rm \
  --name sample-staticsite-with-vuepress \
  -v "${PWD}/:/home/node" \
  sample-staticsite-with-vuepress:v1.0.0 ash
