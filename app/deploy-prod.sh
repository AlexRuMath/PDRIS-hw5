#!/bin/bash

name = "app-prod"

if ! docker ps --format '{{.Names}}' | grep -w $name &> /dev/null; then
    docker run --name $name -p 3000:3000 alexrumath/app 
fi