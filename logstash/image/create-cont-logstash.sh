#!/bin/bash
#Kevin Ramos Lopez
#isx47752902
#11/05/2016
########################################################################

#Al executar aquest script es creara el contenidor docker de logstash

#Instruccions i requisits
 #Executar en el directori on está el dockerfile
 #Tenir instalada una versió actual i funcional de docker
 #Disposar de connexió a internet
 
########################################################################

nameContainer="cont-logstash"

#Delete image with the same name

#Create docker image
docker build . > /dev/null

#Check image
docker images | grep "logstash.*2.3  " > /dev/null
if [ $? -ne 0 ]
then
	echo "Error: Image not created"
	exit 1
fi

#Create container
docker create --name $nameContainer logstash:2.3 > /dev/null

#Check container
docker ps -a | grep "$nameContainer" > /dev/null
if [ $? -ne 0 ]
then
	echo "Error: Container $nameContainer not created"
	exit 2
fi

#Succesfully
echo "Completed"
exit 0
