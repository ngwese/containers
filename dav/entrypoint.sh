#!/usr/bin/dumb-init /bin/sh
set -e

# clean out stale state left if container is stopped and restarted
rm -f /run/apache2/*

exec /usr/sbin/apachectl -DFOREGROUND
