#!/bin/sh

###################################################################################
# Shell script for starting Madsonic.  See http://madsonic.org.
###################################################################################

HOME=/config
HOST=0.0.0.0
PORT=4040
CONTEXT_PATH=/
MAX_MEMORY=1200

MADSONIC_USER=nobody

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

/usr/bin/madsonic --home=$HOME \
                  --host=$HOST \
                  --port=$PORT \
                  --max-memory=$MAX_MEMORY \
sleep 5
tail -f /config/madsonic_sh.log
