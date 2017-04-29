FROM ubuntu:xenial

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -yqq update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get -yqq update && apt-get install -yqq libboost-system-dev libssl-dev libevent-dev
RUN apt-get -yqq update && apt-get install -yqq libboost-filesystem-dev libboost-program-options-dev libboost-thread-dev

RUN apt-get -yqq update && apt-get install -yqq net-tools
RUN apt-get -yqq update && apt-get install -yqq vim

RUN apt-get -yqq update && apt-get install -yqq software-properties-common
RUN add-apt-repository ppa:bitcoin/bitcoin
RUN apt-get -yqq update && apt-get install -yqq libdb4.8-dev libdb4.8++-dev

COPY bitcoind /usr/bin/bitcoind
COPY bitcoin-cli /usr/bin/bitcoin-cli
COPY bitcoin-tx /usr/bin/bitcoin-tx

RUN mkdir /root/.bitcoin
COPY bitcoin.conf /root/.bitcoin/bitcoin.conf
RUN chmod 0600 /root/.bitcoin/bitcoin.conf

COPY .bash_profile /root/.bash_profile
RUN cat /root/.bash_profile >> /root/.bashrc

ENV DEBIAN_FRONTEND teletype
