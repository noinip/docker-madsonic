FROM phusion/baseimage:0.9.11
MAINTAINER botez <troyolson1@gmail.com>
ENV DEBIAN_FRONTEND noninteractive

# Set correct environment variables
ENV HOME /root

# Use baseimage-docker's init system
CMD ["/sbin/my_init"]

# Fix a Debianism of the nobody's uid being 65534
RUN usermod -u 99 nobody
RUN usermod -g 100 nobody

RUN apt-get update -q

# install dependencies for madsonic
RUN apt-get install -qy openjdk-7-jre unzip
RUN apt-get clean

# install madsonic
ADD http://madsonic.org/download/5.1/20140322_madsonic-5.1.4046.beta1.deb /tmp/madsonic.deb
RUN dpkg -i /tmp/madsonic.deb && rm /tmp/madsonic.deb

RUN chown -R nobody:users /var/madsonic

EXPOSE 4040
EXPOSE 4050


VOLUME /config
# install 64-bit binaries for ffmpeg/lame/etc
RUN mkdir -p /config/transcode
ADD http://madsonic.org/download/transcode/20140411_madsonic-transcode_latest_x64.zip /tmp/transcode.zip
RUN unzip /tmp/transcode.zip -d /tmp
RUN mv /tmp/linux/* /config/transcode/

# Add Madsonic to runit
RUN mkdir /etc/service/madsonic
ADD madsonic.sh /etc/service/madsonic/run
RUN chmod +x /etc/service/madsonic/run

