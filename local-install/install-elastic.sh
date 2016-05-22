#!/bin/bash
#Kevin Ramos Lopez
#isx47752902
#18/05/2016

#Al executar aquest script s'instalarà el servei elasticsearch

#Instruccions i requisits
#	Executar com a root
#	Disposar de connexió a internet
 
########################################################################

#Import package elasticsearch
rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch

#Create repository
tee /etc/yum.repos.d/elasticsearch.repo <<-'EOF'
[elasticsearch-2.x]
name=Elasticsearch repository for 2.x packages
baseurl=https://packages.elastic.co/elasticsearch/2.x/centos
gpgcheck=1
gpgkey=https://packages.elastic.co/GPG-KEY-elasticsearch
enabled=1
EOF

#Install elasticsearch
yum -y install elasticsearch

#Start elasticsearch service
systemctl start elasticsearch

#Install plugin head
/usr/share/elasticsearch/bin/plugin install mobz/elasticsearch-head

#Exit
exit 0

