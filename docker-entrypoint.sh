#!/bin/sh

set -e

if ! getent group docker | grep -q "\bjenkins\b"
then
    addgroup docker --gid "${DOCKER_GID:-999}"
    addgroup jenkins docker
fi

exec su-exec jenkins "/usr/local/bin/jenkins.sh"
