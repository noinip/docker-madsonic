#docker Madonic

## Volumes:

#### `/config`

Home directory for madsonic.  Your logs and databases will be stored here.

## Docker run command:

docker run -d -p 4040:4040 --net=host -v /mnt:/mnt -v /path/to/config/data:/config -v /etc/localtime:/etc/localtime:ro --name=madsonic botez/docker-madsonic

