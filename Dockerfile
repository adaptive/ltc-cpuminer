# ltc-cpuminer - Litecoin CPU Minter for Stratum Pools

FROM zumbrunnen/base
MAINTAINER David Zumbrunnen <zumbrunnen@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get -qq update
RUN apt-get -yqq upgrade
RUN apt-get -yqq install supervisor

RUN apt-get -yqq install wget python-dev make gcc
ADD supervisor.conf /etc/supervisor/conf.d/proxy_mining.conf
ADD start_proxy /opt/start_proxy
ADD start_minerd /opt/start_minerd
ADD install /opt/install
RUN /opt/install

# Default config for minerd and proxy
# Override them to meet your needs upon running the image (e.g. "-e MINING_USER=...")
ENV POOL_HOST world.wemineltc.com
ENV POOL_PORT 3334
ENV NUM_THREADS 4
ENV MINING_USER user
ENV MINING_PASSWORD pass
ENV MINING_URL http://127.0.0.1:8332

CMD ["/usr/bin/supervisord"]
