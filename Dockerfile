FROM ubuntu:latest
MAINTAINER Glen Strummer "vglen@mpls.io"

RUN apt-get update
RUN apt-get -y upgrade

ENV DEBIAN_FRONTEND noninteractive

# Install NTP
RUN apt-get install -y \
    ntp

# Add NTP configuration file
ADD ntp.conf /etc/ntp.conf


ENV UPDATED 03-11-2016


EXPOSE 123

CMD ["/usr/sbin/ntpd", "-n"]