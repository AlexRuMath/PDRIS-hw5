#!/bin/bash

name="app-prod"
echo $name

docker stop $name || true && docker rm $name || true
docker run -d --rm --publish 3001:3000 --name $name alexrumath/app
