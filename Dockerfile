# ltc-cpuminer - Litecoin CPU Minter for Stratum Pools

FROM zumbrunnen/base
MAINTAINER David Zumbrunnen <zumbrunnen@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -yqq install wget python-dev libssl-dev make gcc
RUN wget -qO- http://sourceforge.net/projects/cpuminer/files/pooler-cpuminer-2.3.2-linux-x86_64.tar.gz/download | tar xzf -

ENTRYPOINT  ["/minerd"]
