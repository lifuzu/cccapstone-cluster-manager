# Information Of Package
TEZ_NAME=tez
TEZ_VERSION=0.8.2
TEZ_PACKAGE=tez-0.8.2.tar.gz
TEZ_MINI_PACKAGE=tez-0.8.2-minimal.tar.gz
TEZ_LINK=https://s3-us-west-2.amazonaws.com/dists.weimed/$TEZ_NAME/$TEZ_VERSION/$TEZ_PACKAGE
TEZ_MINI_LINK=https://s3-us-west-2.amazonaws.com/dists.weimed/$TEZ_NAME/$TEZ_VERSION/$TEZ_MINI_PACKAGE

# Variable should be exported
TEZ_HOME=/usr/local/tez
TEZ_JARS=$TEZ_HOME/jars

# prerequired
apt-get install -y protobuf-compiler

# Intall tez
cd /tmp && \
curl -O -L $TEZ_LINK && \
mkdir -p /usr/local/$TEZ_NAME-$TEZ_VERSION && \
cp /tmp/$TEZ_PACKAGE /usr/local/$TEZ_NAME-$TEZ_VERSION && \
ln -s /usr/local/$TEZ_NAME-$TEZ_VERSION $TEZ_HOME

cd /tmp && \
curl -O -L $TEZ_MINI_LINK && \
mkdir -p $TEZ_JARS && \
tar -xvzf /tmp/$TEZ_MINI_PACKAGE -C $TEZ_JARS && \
rm -rf /tmp/* /var/tmp/*
