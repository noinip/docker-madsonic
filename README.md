#docker Madsonic

Currently using the Madsonic 5.1 Techdemo build
http://forum.madsonic.org/viewtopic.php?f=17&t=1043

## Volumes:

#### `/config`

Home directory for madsonic.  Your logs and databases will be stored here.

Also, you need to create a /config/transcode directory and place the files from the "linux" directory of this zip there:
http://madsonic.org/download/transcode/20140411_madsonic-transcode_latest_x64.zip

## Docker run command:

docker run -d -p 4040:4040 --net=host -v /mnt:/mnt -v /path/to/config/data:/config -v /etc/localtime:/etc/localtime:ro --name=madsonic botez/docker-madsonic

