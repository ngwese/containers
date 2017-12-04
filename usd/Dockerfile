# build stage
#FROM centos:7 as builder
FROM afofo/vfx2018-builder as builder

# install core dependencies (epel is needed for pip)
#RUN yum update -y \
  #&& yum install -y gcc gcc-c++ make cmake tbb-devel boost-devel OpenEXR-devel python git \
  #&& yum install -y gcc gcc-c++ make cmake OpenEXR-devel python-devel git \
  #&& yum install -y epel-release \
  #&& yum install -y python-pip

# change default shell to login shell so /etc/profile.d/* is sourced so we pick
# up the bits to enable scl packages
SHELL ["bash", "-l", "-c"]
  
# clone source s
RUN mkdir -pv /build
RUN git clone https://github.com/PixarAnimationStudios/USD.git /build/USD
  
# build
# https://gitlab.kitware.com/cmake/cmake/issues/16609
RUN python /build/USD/build_scripts/build_usd.py --verbose --no-imaging /usr/local
  
# cleanup build packages
RUN rm -rf /usr/local/build && rm -rf /usr/local/src
RUN rm -rf /usr/local/include/*

# release stage
FROM centos:7

LABEL maintainer="Greg Wuller <greg@afofo.com>"

COPY --from=builder /usr/local/ /usr/local/
ENV PYTHONPATH=/usr/local/lib/python

CMD ["bash"]
