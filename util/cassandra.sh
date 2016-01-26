# Information Of Package
CASSANDRA_NAME=cassandra
CASSANDRA_VERSION=3.2.1
CASSANDRA_PACKAGE=apache-cassandra-3.2.1-bin.tar.gz
CASSANDRA_LINK=http://www.eu.apache.org/dist/$CASSANDRA_NAME/$CASSANDRA_VERSION/$CASSANDRA_PACKAGE

# Intall cassandra
cd /tmp && \
curl -O -L $CASSANDRA_LINK && \
tar -zxf /tmp/$CASSANDRA_PACKAGE -C /usr/local && \
ln -s /usr/local/apache-$CASSANDRA_NAME-$CASSANDRA_VERSION /usr/local/cassandra && \
rm -rf /tmp/* /var/tmp/*
