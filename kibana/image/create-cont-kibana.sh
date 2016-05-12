#!/bin/bash
#Kevin Ramos Lopez
#isx47752902
#11/05/2016

########################################################################

#Al executar aquest script es creara el contenidor docker de elasticsearch

#Instruccions i requisits
 #Executar en el directori on está el dockerfile
 #Tenir instalada una versió actual i funcional de docker
 #Disposar de connexió a internet
 #Permisos rwx per el directori /usr/share/elasticsearch/plugins/
 
########################################################################

nameContainer="cont-kibana"
nameImage='image-kibana'

#Create docker image
docker build --tag "$nameImage" --quiet  . 

#Create container
docker rm --force $nameContainer
docker create --link=cont-elastic:hostElast --name $nameContainer "$nameImage"

#Start container for development
docker start --attach $nameContainer

exit 0
