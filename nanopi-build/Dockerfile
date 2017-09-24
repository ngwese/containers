FROM ubuntu

LABEL maintainer="Greg Wuller <greg@afofo.com>"

RUN apt-get update
RUN apt-get install -y gawk git gnupg flex bison gperf build-essential \
  zip curl libc6-dev libncurses5-dev x11proto-core-dev \
  libx11-dev libreadline6-dev libgl1-mesa-glx \
  libgl1-mesa-dev g++-multilib tofrodos \
  python-markdown libxml2-utils xsltproc zlib1g-dev

RUN apt-get install -y lib32z1 bc

RUN mkdir -pv /build /dist

VOLUME /build
VOLUME /dist

#RUN git clone https://github.com/friendlyarm/h5_lichee.git /build/lichee

CMD ["/bin/bash"]
