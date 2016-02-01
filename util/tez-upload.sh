#TEZ_NAME=tez
#TEZ_VERSION=0.8.2
export HADOOP_HOME=/usr/local/hadoop
export PATH=$HADOOP_HOME/bin:$PATH
TEZ_HOME=/usr/local/tez
TEZ_JARS=$TEZ_HOME/jars

hadoop fs -rm -f -r /tez
hadoop fs -mkdir /tez
#hadoop fs -copyFromLocal $TEZ_HOME/$TEZ_NAME-$TEZ_VERSION.tar.gz /tez
hadoop fs -put $TEZ_JARS /tez
