#!/bin/bash
#Kevin Ramos Lopez
#isx47752902
#19/05/2016

#Al executar aquest script s'instalarà el servei filebeat

#Instruccions i requisits
#	Executar com a root
#	Disposar de connexió a internet
 
########################################################################

#Import package filebeat
rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch

#Create repository
tee /etc/yum.repos.d/kibana.repo <<-'EOF'
[beats]
name=Elastic Beats Repository
baseurl=https://packages.elastic.co/beats/yum/el/$basearch
enabled=1
gpgkey=https://packages.elastic.co/GPG-KEY-elasticsearch
gpgcheck=1
EOF

#Install filebeat
yum -y install filebeat

#Start filebeat service
systemctl start filebeat

#Exit
exit 0
