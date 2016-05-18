FROM logstash:2.3

MAINTAINER Kevin

COPY apache-logs.log /var/tmp/apache-logs.log
COPY first-pipeline.conf /etc/logstash/conf.d/first-pipeline.conf

CMD logstash -f /etc/logstash/conf.d/first-pipeline.conf 
