# Dockerfile for https://github.com/aajanki/yle-dl
FROM buildpack-deps:trusty

RUN apt-get update && apt-get install -y \
    rtmpdump \ 
    python \
    python-crypto \
    php5-cli \
    php5-curl \
    php5-mcrypt 

RUN git clone https://github.com/aajanki/yle-dl.git && \
    cd yle-dl && \
    make install

WORKDIR /downloads
ENTRYPOINT ["/usr/local/bin/yle-dl"]
