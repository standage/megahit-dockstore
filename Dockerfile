FROM ubuntu:16.04
MAINTAINER Daniel Standage <daniel.standage@gmail.com>

RUN apt-get update && apt-get install -y build-essential zlib1g-dev python-dev wget
RUN wget https://github.com/voutcn/megahit/archive/v1.1.1.tar.gz
RUN tar -xzf v1.1.1.tar.gz
RUN cd megahit-1.1.1/ && make -j 2 && cp megahit* /usr/local/bin/ && cd -
CMD bash
