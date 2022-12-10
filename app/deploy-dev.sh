#!/bin/bash

name="app-dev"
echo $name

docker run --rm --publish 3000:3000 --name $name alexrumath/app
