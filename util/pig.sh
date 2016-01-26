# Information Of Package
PIG_NAME=pig
PIG_VERSION=0.15.0
PIG_PACKAGE=pig-0.15.0.tar.gz
PIG_LINK=http://apache.arvixe.com/$PIG_NAME/$PIG_NAME-$PIG_VERSION/$PIG_PACKAGE

# Intall pig
cd /tmp && \
curl -O -L $PIG_LINK && \
tar -zxf /tmp/$PIG_PACKAGE -C /usr/local && \
ln -s /usr/local/$PIG_NAME-$PIG_VERSION /usr/local/pig && \
rm -rf /tmp/* /var/tmp/*
