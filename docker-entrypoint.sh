#!/bin/sh

set -e

addgroup docker --gid "${DOCKER_GID:-999}"
addgroup jenkins docker
su - $USER

exec "$@"