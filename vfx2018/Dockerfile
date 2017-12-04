FROM centos:7 as builder

# https://www.softwarecollections.org/en/scls/rhscl/devtoolset-6/
RUN yum install centos-release-scl -y \
  && yum-config-manager --enable rhel-server-rhscl-7-rpms \
  && yum install devtoolset-6 -y \
  && yum install rh-git29 -y \
  && yum install python-devel -y \
  && yum install cmake -y

# TODO: figure out how to leverage the 'python27' scl package
#   (unable to get USD's cmake setup to find scl python install...)

# https://access.redhat.com/solutions/527703
COPY ./enable-*.sh /etc/profile.d/

CMD ["bash"]

  
