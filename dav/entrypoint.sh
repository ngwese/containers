#!/usr/bin/dumb-init /bin/sh
set -e

exec /usr/sbin/apachectl -DFOREGROUND
