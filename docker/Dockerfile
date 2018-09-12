FROM ubuntu:16.04

RUN apt update
RUN apt install -y \
          clang \
	  python3-pip \
	  git
RUN pip3 install nose pyelftools parcon
RUN git clone https://github.com/iovisor/ubpf.git
WORKDIR ubpf
RUN make -C vm
