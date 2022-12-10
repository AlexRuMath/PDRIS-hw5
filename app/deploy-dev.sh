#!/bin/bash

name="app-dev"
echo $name

if ! docker ps --format '{{.Names}}' | grep -w $name &> /dev/null; then
    docker run --publish 3000:3000 --name $name  alexrumath/app 
fi