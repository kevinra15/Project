FROM logstash:2.3

#Mantenidor del dockerfile
MAINTAINER Kevin

#Files necesaris per al funcionament del logstash
COPY first-pipeline.conf /etc/logstash/conf.d/first-pipeline.conf
COPY apache-logs.log /var/log/apache-logs.log
COPY mariadb.log /var/log/mariadb.log

COPY apache-logs.log /var/tmp/apache-suma-logs.log
COPY mariadb.log /var/tmp/mariadb-suma-logs.log

#Instalació d'un editor de text
#RUN apt-get update
#RUN apt-get -y install vim

#Comanda que s'executarà en el contenidor amb PID 1
CMD ["logstash", "agent", "-f", "/etc/logstash/conf.d/first-pipeline.conf"] 


