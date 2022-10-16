FROM node:16.18-alpine3.15

COPY docker-entrypoint.sh /tmp
RUN \
  set -ex; \
  apk add --no-cache \
  shadow \
  su-exec; \
  chmod +x /tmp/docker-entrypoint.sh;

WORKDIR /home/node
ENTRYPOINT [ "/tmp/docker-entrypoint.sh" ]
