#!/bin/sh
usermod -u 501 -o -d /home/node -m node
usermod -g 20 node
su-exec node "$@"
