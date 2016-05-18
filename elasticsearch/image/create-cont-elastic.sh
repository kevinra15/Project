#!/bin/bash
# Kevin Ramos Lopez
# isx47752902
# 11/05/2016

# En executar aquest script es creara la imatge i el contenidor
# docker de elasticsearch

#Instruccions i requisits
#	- Executar en el directori on está el Dockerfile
#	- Tenir instalada una versió actual i funcional de docker
#	- Disposar de connexió a Internet
 
########################################################################

nameImage='image-elastic'
nameContainer="cont-elastic"

#Create docker image
docker build --tag "$nameImage" --quiet  . 

#Create container
docker rm --force $nameContainer
docker create --name $nameContainer "$nameImage"

#Exit
exit 0
