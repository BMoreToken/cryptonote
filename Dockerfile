from ubuntu:18.04
MAINTAINER Patrick McGuire (project@bmoretoken.com)
RUN apt update
RUN apt -y upgrade
RUN apt -y install g++ gcc cmake
RUN wget -O boost_1_55_0.tar.gz https://sourceforge.net/projects/boost/files/boost/1.55.0/boost_1_55_0.tar.gz/download
RUN tar xzvf boost_1_55_0.tar.gz
RUN cd boost_1_55_0/
RUN ./bootstrap.sh --prefix=/usr/
RUN ./b2
RUN ./b2 install
RUN git clone https://github.com/BMoreToken/bmorecoin.git ~/bmorecoin; cd ~/bmorecoin; make
