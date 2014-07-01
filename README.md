#docker Madsonic

Currently using the Madsonic 5.1 beta, build II
http://forum.madsonic.org/viewtopic.php?f=17&t=1074

## Volumes:

#### `/config`

Home directory for madsonic.  Your logs and databases will be stored here.


## Docker run command:

docker run -d -p 4040:4040 --net=host -v /mnt:/mnt -v /path/to/config/data:/config -v /etc/localtime:/etc/localtime:ro --name=madsonic botez/docker-madsonic

