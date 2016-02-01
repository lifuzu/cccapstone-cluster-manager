

hadoop fs -rm -f -r /tez


# Information Of Package
TEZ_NAME=tez
TEZ_VERSION=0.8.2
# Variable should be exported
TEZ_HOME=/usr/local/tez

# Intall tez
rm -fr /usr/local/$TEZ_NAME-$TEZ_VERSION && \
rm -fr $TEZ_HOME

