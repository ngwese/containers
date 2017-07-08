FROM centos:7

LABEL maintainer="Greg Wuller <greg@afofo.com>"

# install core dependencies (epel is needed for pip)
RUN yum update -y \
  #&& yum install -y gcc gcc-c++ make cmake tbb-devel boost-devel OpenEXR-devel python git \
  && yum install -y gcc gcc-c++ make cmake OpenEXR-devel python-devel git \
  && yum install -y epel-release \
  && yum install -y python-pip
  
# clone sources
RUN mkdir -pv /build \
  && git clone https://github.com/PixarAnimationStudios/USD.git /build/USD
  
# build
RUN python /build/USD/build_scripts/build_usd.py --verbose --no-imaging /usr/local
  
# TODO cleanup build packages
