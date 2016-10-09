FROM java:8-jdk-alpine
MAINTAINER ibnu yahya <anak10thn@gmail.com>

ENV LANG=C.UTF-8 LC_ALL=C
ENV SRC="."
ENV WORK="/opt"

WORKDIR $WORK
COPY $SRC/entrypoint.sh /entrypoint.sh

RUN cd /opt; \
    apk update; \
    apk add openssl bash; \
    wget -t 10 -c https://download.elastic.co/logstash/logstash/logstash-2.4.0.tar.gz; \
    tar vxf logstash-2.4.0.tar.gz; \
    rm logstash-2.4.0.tar.gz; \
    mv logstash-2.4.0 logstash; \
    adduser -s /bin/sh -S am; \
    chown am -R /opt/logstash;

EXPOSE 9200
WORKDIR $WORK
USER am

ENTRYPOINT ["/entrypoint.sh"]
CMD ["-e", ""]
