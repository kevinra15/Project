#!/bin/bash
#Kevin Ramos Lopez
#isx47752902
#19/05/2016

#Al executar aquest script s'instalarà el servei kibana

#Instruccions i requisits
#	Executar com a root
#	Disposar de connexió a internet
 
########################################################################

#Import package kibana
rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch

#Create repository
tee /etc/yum.repos.d/kibana.repo <<-'EOF'
[kibana-4.5]
name=Kibana repository for 4.5.x packages
baseurl=http://packages.elastic.co/kibana/4.5/centos
gpgcheck=1
gpgkey=http://packages.elastic.co/GPG-KEY-elasticsearch
enabled=1
EOF

#Install kibana
yum -y install kibana

#Start kibana service
systemctl start kibana

#Exit
exit 0
