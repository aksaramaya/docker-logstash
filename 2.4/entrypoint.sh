#!/bin/sh
set -e
export PATH=$PATH:/opt/logstash/bin
# Add logstash as command if needed
if [ "${1:0:1}" = '-' ]; then
	set -- logstash "$@"
fi

# Run as user "logstash" if the command is "logstash"
if [ "$1" = 'logstash' ]; then
	set -- logstash "$@"
fi

sh -c "$@"
