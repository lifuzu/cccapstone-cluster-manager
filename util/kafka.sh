# Information Of Package
KAFKA_NAME=kafka
KAFKA_VERSION=${KAFKA_NAME}_2.11-0.9.0.0
KAFKA_PACKAGE=${KAFKA_VERSION}.tgz
KAFKA_LINK=http://www.eu.apache.org/dist/kafka/0.9.0.0/$KAFKA_PACKAGE

echo $KAFKA_LINK
# Kafka
cd /tmp && \
curl -O -L $KAFKA_LINK && \
tar -zxf /tmp/$KAFKA_PACKAGE -C /usr/local && \
ln -s /usr/local/$KAFKA_VERSION /usr/local/$KAFKA_NAME && \
rm -rf /tmp/* /var/tmp/*

