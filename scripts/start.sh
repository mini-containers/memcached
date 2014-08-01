#!/bin/sh

start() {
	local MEMORY=${MEMCACHED_MEMORY:-64}

	# launch memcached as background process
	memcached -u nobody -m $MEMORY &

	# capture it's PID
	local PID=$!

	# re-raise INT/TERM signal as SIGINT to memcached
	trap "kill -s SIGINT $PID && exit $?" SIGINT SIGTERM

	wait
}

start
