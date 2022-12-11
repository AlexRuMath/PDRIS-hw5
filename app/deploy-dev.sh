#!/bin/bash

name="app-dev"
echo $name

docker stop $name || true && docker rm $name || true
docker run -d --rm --publish 3000:3000 --name $name alexrumath/app
