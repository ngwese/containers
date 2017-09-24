FROM centos:7

LABEL maintainer="Greg Wuller <greg@afofo.com>"

# install core dependencies (epel is needed for pip)
RUN yum update -y \
  && yum install -y gcc gcc-c++ make cmake cvs libuuid-devel 
  
# clone sources
#COPY AAF-src-1.1.6.tar.gz /
RUN mkdir -pv /build \
  && cd /build \
  && cvs -z3 -d:pserver:anonymous@aaf.cvs.sourceforge.net:/cvsroot/aaf co -P AAF

# build
#RUN python /build/USD/build_scripts/build_usd.py --verbose --no-imaging /usr/local
RUN cd /build/AAF \
  && make install

# TODO cleanup build packages
