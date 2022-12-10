#!/bin/bash

name="app-prod"
echo $name

if ! docker ps --format '{{.Names}}' | grep -w $name &> /dev/null; 
then
    docker run --publish 3001:3000 --name $name alexrumath/app
else
    docker stop $name
    docker run --publish 3001:3000 --name $name alexrumath/app
fi