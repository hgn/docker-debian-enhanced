FROM debian:buster
MAINTAINER Hagen Paul Pfeifer <hagen@jauu.net>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update && apt-get -y install wget curl git

# minimize image
RUN apt-get clean
