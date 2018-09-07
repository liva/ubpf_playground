FROM ubuntu:16.04

RUN sed -i'~' -E "s@http://(..\.)?archive\.ubuntu\.com/ubuntu@http://pf.is.s.u-tokyo.ac.jp/~awamoto/apt-mirror/@g" /etc/apt/sources.list
RUN apt update
RUN apt install -y \
          clang \
	  python3-pip \
	  git
RUN pip3 install nose pyelftools parcon
RUN git clone https://github.com/iovisor/ubpf.git
WORKDIR ubpf
RUN make -C vm
