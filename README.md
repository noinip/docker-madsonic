#docker Madsonic

Currently using the Madsonic 5.1 beta2, build 4800
http://forum.madsonic.org/viewtopic.php?f=34&t=1134

/config
Home directory for madsonic.  Your logs and databases will be stored here.

environment variables (use -e ENV_VAR_NAME=value to change)
HOME=/config
HOST=0.0.0.0
PORT=4040
CONTEXT_PATH=/
MAX_MEMORY=1200

## Docker run command:

docker run -d -p 4040:4040 --net=host -v /mnt:/mnt -v /path/to/config/data:/config -v /etc/localtime:/etc/localtime:ro --name=madsonic botez/docker-madsonic

