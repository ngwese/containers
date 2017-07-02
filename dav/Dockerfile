# dav
#
# VERSION      0.1.0

FROM alpine:3.6

LABEL maintainer="Greg Wuller <greg@afofo.com>"

RUN apk --no-cache add apache2=2.4.25-r1 apache2-utils=2.4.25-r1 apache2-webdav=2.4.25-r1 apache2-ssl=2.4.25-r1 dumb-init \
  && mkdir -pv /run/apache2 \
  && rm -rf /var/www/localhost/cgi-bin \
  && rm -f  /var/www/localhost/htdocs/index.html \
  && ln -sf /dev/stdout /var/www/logs/access.log \
  && ln -sf /dev/stderr /var/www/logs/error.log

# copy over apache configuration
COPY root /

# prepare /dav directory used by webdav.conf
RUN mkdir -p /dav/data && \
    mkdir -p /dav/secret && \
    mkdir -p /dav/var && \
    chown -R apache:apache /dav

VOLUME /dav/data
VOLUME /dav/secret

#COPY secret/dav.passwd /dav/secret/dav.passwd
#COPY secret/server.crt secret/server.csr secret/server.key /dav/secret/

EXPOSE 443

COPY run.sh /usr/local/bin/run.sh

CMD ["run.sh"]
