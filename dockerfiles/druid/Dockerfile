FROM openjdk:8

ENV DRUID_VERSION 0.18.1
ENV ZOOKEEPER_VERSION 3.6.1

# Get Druid
RUN mkdir -p /tmp \
    && cd /tmp/ \
    && curl -fsLS "https://downloads.apache.org/druid/0.18.1/apache-druid-0.18.1-bin.tar.gz" | tar xvz \
    && mv apache-druid-0.18.1 /opt/druid

WORKDIR /opt/druid/

# Zookeeper
RUN curl -fsLS "https://downloads.apache.org/zookeeper/zookeeper-3.6.1/apache-zookeeper-3.6.1.tar.gz" | tar xvz \
    && mv apache-zookeeper-3.6.1 zk

ADD dockerfiles/druid/common.runtime.properties conf/druid/single-server/micro-quickstart/_common/common.runtime.properties

# Expose ports:
# - 8888: HTTP (router)
# - 8081: HTTP (coordinator)
# - 8082: HTTP (broker)
# - 8083: HTTP (historical)
# - 8090: HTTP (overlord)
# - 2181 2888 3888: ZooKeeper
EXPOSE 8888
EXPOSE 8081
EXPOSE 8082
EXPOSE 8083
EXPOSE 8090
EXPOSE 2181 2888 3888

ENTRYPOINT ./bin/start-micro-quickstart