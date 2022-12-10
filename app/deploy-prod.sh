#!/bin/bash

name="app-prod"
echo $name

docker run --rm --publish 3001:3000 --name $name alexrumath/app
