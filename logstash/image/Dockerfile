FROM logstash:2.3

#Mantenidor del dockerfile
MAINTAINER Kevin

#Creació del dir d'on llegirà els logs
RUN mkdir /var/log/proba

#Files necesaris per al funcionament del logstash
COPY first-pipeline.conf /etc/logstash/conf.d/first-pipeline.conf
#COPY apache-logs.log /var/log/proba/apache-logs.log
#COPY mariadb.log /var/log/proba/mariadb.log

#Instalació d'un editor de text
#RUN apt-get update
#RUN apt-get -y install vim

#Comanda que s'executarà en el contenidor amb PID 1
CMD ["logstash", "agent", "-f", "/etc/logstash/conf.d/first-pipeline.conf"] 


