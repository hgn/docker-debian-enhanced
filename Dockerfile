FROM debian:buster
MAINTAINER Hagen Paul Pfeifer <hagen@jauu.net>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update && apt-get -y install wget curl git

# minimize image
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*
RUN rm -rf /tmp/*
RUN rm -rf /var/tmp/*
RUN rm -rf /usr/share/man/??
RUN rm -rf /usr/share/man/??_*

