FROM anoopnair/ibm-mq-debian:7.5.0
MAINTAINER Anoop Nair<anoop.nair@railinc.com>

RUN apt-get update -y \
  && apt-get install -y \
    bash \
    bc \
    curl \
    rpm \
    tar \
    vim \
    tree
RUN useradd itrxe01 -G mqm 

ENV TERM=xterm 
ENV PATH=$PATH:/opt/mqm/bin

COPY config.mqsc /etc/mqm/
COPY myConfigrc /tmp/
EXPOSE 1417

