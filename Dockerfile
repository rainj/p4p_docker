#p4p
#
#VERSION 0.0.1

FROM ubuntu:14.04
MAINTAINER Rain Jiang <rain.listener.i@outlook.com>

LABEL Description="This image is used to start a p4p process to make a local cache of the perforce repository" Version="1.0"

RUN apt-get update && apt-get install -y wget
RUN wget -q http://package.perforce.com/perforce.pubkey -O - | apt-key add - 
RUN echo "deb http://package.perforce.com/apt/ubuntu trusty release" > /etc/apt/sources.list.d/perforce.sources.list
RUN apt-get update && apt-get install -y perforce-proxy

VOLUME /data

EXPOSE 1667

ENV P4PCACHE /data
ENV P4TARGET localhost:1666
ENV P4PORT 1667

EXPOSE ${P4PORT}

ENTRYPOINT ["p4p"]

