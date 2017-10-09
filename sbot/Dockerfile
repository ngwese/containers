FROM node:8

ENV NPM_CONFIG_LOGLEVEL warn
ENV NODE_ENV production
ENV SBOT_PUB_HOST pub.afofo.com

RUN apt-get update
RUN apt-get install -y autotools-dev automake libsodium-dev 

#RUN npm install --unsafe-perm -g sodium-native
#RUN npm install --unsafe-perm -g leveldown
RUN npm install --unsafe-perm -g scuttlebot

RUN apt-get remove -y autotools-dev automake

COPY run-sbot.sh /

RUN mkdir -pv /sbot/data && \
  chown -Rv node:node /sbot/data && \
  ln -s /sbot/data /root/.ssb
VOLUME /sbot/data

# Running as node creates problems accessing the data in the volume since it is
# mounted as root :( and the underlying uid/gid don't and typically won't match
# the uid/gid of the 'node' user in this container 

#USER node
#WORKDIR /home/node

EXPOSE 8007 8008

CMD /run-sbot.sh
