#!/bin/bash
#Kevin Ramos Lopez
#isx47752902
#18/05/2016

#Al executar aquest script s'instalarà el servei logstash

#Instruccions i requisits
#	Executar com a root
#	Disposar de connexió a internet
 
########################################################################

#Import package logstash
rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch

#Create repository
tee /etc/yum.repos.d/logstash.repo <<-'EOF'
[logstash-2.3]
name=Logstash repository for 2.3.x packages
baseurl=http://packages.elastic.co/logstash/2.3/centos
gpgcheck=1
gpgkey=http://packages.elastic.co/GPG-KEY-elasticsearch
enabled=1
EOF

#Install Logstash
yum -y install logstash

#Start logstash service
systemctl start logstash.service

#Exit
exit 0
