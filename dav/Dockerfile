# dav
#
# VERSION      0.1.0

FROM alpine:3.6

MAINTAINER Greg Wuller <greg@afofo.com>

RUN apk --no-cache add apache2=2.4.25-r1 apache2-utils=2.4.25-r1 apache2-webdav=2.4.25-r1 dumb-init && \
  mkdir -pv /run/apache2

# copy over apache configuration
COPY root /

# prepare /dav directory used by webdav.conf
RUN mkdir -p /dav/data && \
    mkdir -p /dav/config && \
    mkdir -p /dav/var && \
    chown -R apache:apache /dav

VOLUME /dav/data

COPY dav.passwd /dav/config/dav.passwd

EXPOSE 80 443

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

CMD ["entrypoint.sh"]
