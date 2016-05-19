FROM kibana:4.5

#Mantenidor del dockerfile
MAINTAINER Kevin

#Files necesaris per al funcionament del kibana
COPY kibana.yml /opt/kibana/config/kibana.yml

#Instalació d'un editor de text
RUN apt-get update
RUN apt-get -y install vim
