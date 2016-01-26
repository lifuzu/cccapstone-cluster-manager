# Information Of Package
STORM_NAME=storm
STORM_VERSION=0.10.0
STORM_PACKAGE=apache-storm-0.10.0.tar.gz
STORM_LINK=http://www.us.apache.org/dist/$STORM_NAME/apache-$STORM_NAME-$STORM_VERSION/$STORM_PACKAGE

# Intall storm
cd /tmp && \
curl -O -L $STORM_LINK && \
tar -zxf /tmp/$STORM_PACKAGE -C /usr/local && \
ln -s /usr/local/apache-$STORM_NAME-$STORM_VERSION /usr/local/storm && \
rm -rf /tmp/* /var/tmp/*
