TEZ

$ wget http://mirrors.gigenet.com/apache/tez/0.7.0/apache-tez-0.7.0-src.tar.gz

$ tar zxvf apache-tez-0.7.0-src.tar.gz
$ cd apache-tez-0.7.0-src/
$ mvn clean package -DskipTests=true -Dmaven.javadoc.skip=true

$ hadoop fs -mkdir -p /apps/tez
$ hadoop fs -put tez-dist/target/tez-0.7.0.tar.gz /apps/tez

$ vi /usr/local/hadoop/etc/hadoop/tez-site.xml
```
<configuration>
  <property>
   <name>tez.lib.uris</name>
   <value>${fs.default.name}/apps/tez/tez-0.7.0.tar.gz</value>
  </property>
</configuration>
```
```
$ cd /usr/local/hadoop/share
$ sudo mkdir tez
$ sudo tar zxvf /tmp/tez-0.7.0.tar.gz -C tez
```
```
$ vi /usr/local/hadoop/etc/hadoop/hadoop-env.sh
```
```
export TEZ_JARS=$HADOOP_HOME/share/tez
export TEZ_CONF_DIR=$HADOOP_HOME/etc/hadoop
export HADOOP_CLASSPATH=$TEZ_CONF_DIR:$TEZ_JARS/*:$TEZ_JARS/lib/*:$HADOOP_CLASSPATH
```
# restart hadoop
