#!/bin/bash
#Kevin Ramos Lopez
#isx47752902
#11/05/2016

# Al executar aquest script es creara el contenidor docker de elasticsearch

#I nstruccions i requisits
#	- Executar en el directori on está el dockerfile
#	- Tenir instalada una versió actual i funcional de docker
#	- Disposar de connexió a internet
 
########################################################################

nameContainer="cont-kibana"
nameImage='image-kibana'

#Create docker image
docker build \
	--tag "$nameImage" \
	--quiet  . 

#Delete old container
docker rm --force $nameContainer

#Create container
docker create \
	--link=cont-elastic:hostElast \
	--name $nameContainer "$nameImage"

#Exit
exit 0
