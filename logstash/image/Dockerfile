FROM logstash:2.3

#Mantenidor del dockerfile
MAINTAINER Kevin

#Files necesaris per al funcionament del logstash
COPY apache-logs.log /var/tmp/apache-logs.log
COPY first-pipeline.conf /etc/logstash/conf.d/first-pipeline.conf

#Instalació d'un editor de text
RUN apt-get update
RUN apt-get -y install vim

#Comanda que s'executarà en el contenidor amb PID 1
CMD ["logstash", "agent", "-f", "/etc/logstash/conf.d/first-pipeline.conf"]
