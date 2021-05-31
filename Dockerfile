#Base Image.
FROM ubuntu:18.04

#Install googletest.
RUN apt-get update \
 && apt-get install -y \
    cmake \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* \
 && git clone https://github.com/google/googletest.git \
 && mkdir googletest/build \
 && cd googletest/build \
 && cmake .. \
 && make \
 && make install
 && cd ../../ \
 && rm -rf googletest
