# Information Of Package
SPARK_NAME=spark
SPARK_VERSION=1.6.0
SPARK_PACKAGE=spark-1.6.0.tgz
SPARK_LINK=http://www.us.apache.org/dist/$SPARK_NAME/$SPARK_NAME-$SPARK_VERSION/$SPARK_PACKAGE

# Intall spark
cd /tmp && \
curl -O -L $SPARK_LINK && \
tar -zxf /tmp/$SPARK_PACKAGE -C /usr/local && \
ln -s /usr/local/$SPARK_NAME-$SPARK_VERSION /usr/local/spark && \
rm -rf /tmp/* /var/tmp/*
