#!/bin/bash
#Kevin Ramos Lopez
#isx47752902
#17/05/2016

#Al executar aquest script farem start dels contenidors indicats

#Instruccions i requisits
#	Tenir instalada una versió actual i funcional de docker
#	Disposar de connexió a internet
 
########################################################################

nameContLog="cont-logstash"
nameContElast="cont-elastic"
nameContKiba="cont-kibana"

#Start Containers
docker start $nameContElast 
docker start $nameContLog 
docker start $nameContKiba

#Comrpovar
docker ps

#Exit
exit 0
