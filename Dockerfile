FROM ubuntu:latest
MAINTAINER Anthony Monthe <amonthe@cloudspectator.com>

ENV VERSION 4.3.1

RUN apt update
RUN apt install -y wget

WORKDIR /src/geekbench4/
RUN wget http://cdn.geekbench.com/Geekbench-${VERSION}-Linux.tar.gz -O geekbench.tar.gz
RUN tar -xzf geekbench.tar.gz
RUN ln -s /src/geekbench4/Geekbench-${VERSION}-Linux/geekbench4 /bin/geekbench4

CMD geekbench4
