#!/bin/sh
#exec /sbin/setuser nobody /var/madsonic/madsonic.sh --home=/config

MADSONIC_HOME=/config
MADSONIC_HOST=0.0.0.0
MADSONIC_PORT=4040
MADSONIC_HTTPS_PORT=4050
MADSONIC_CONTEXT_PATH=/
MADSONIC_INIT_MEMORY=800
MADSONIC_MAX_MEMORY=1200
MADSONIC_DEFAULT_MUSIC_FOLDER=/mnt/user/Music
#JAVA_HOME=/opt/java/jre:/usr/lib/jvm/java-7-openjdk
MADSONIC_USER=nobody
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

/config/madsonic.sh --home=$HOME \
                  --host=$HOST \
                  --port=$PORT \
                  --https-port=$HTTPS_PORT \
                  --max-memory=$MAX_MEMORY \
                  --default-music-folder=$MUSIC_FOLDER 
	
sleep 5
tail -f /config/subsonic_sh.log
