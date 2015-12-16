FROM       mini/base
MAINTAINER Luis Lavena <luislavena@gmail.com>

ENV MEMCACHED_VERSION 1.4.24-r0

RUN apk-install memcached=$MEMCACHED_VERSION

ADD ./scripts/start.sh /start.sh

EXPOSE 11211

CMD ["/start.sh"]
