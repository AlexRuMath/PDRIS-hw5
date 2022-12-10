#!/bin/bash

name="app-dev"
echo $name

if ! [[ $(docker ps -a --filter="name=$CONTAINER_NAME" --filter "status=exited" | grep -w "$CONTAINER_NAME") ]] then
then
    docker run --publish 3000:3000 --name $name alexrumath/app
else
    docker stop $name
    docker run --publish 3000:3000 --name $name alexrumath/app
fi