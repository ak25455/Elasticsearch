pidfile=`ps auxww |grep logstash|grep java|awk '{print $2}'`
echo $pidfile
kill -TERM $pidfile

java -jar /opt/logstash/logstash.jar agent -v -l /var/log/lstash.log -f /opt/logstash/conf/$1 -- web &
