#!/bin/bash

echo ""
echo "Bringing the stack up"
echo ""

cd ~/docker

docker-compose -f ~/docker/docker-compose.yml up -d

echo ""
echo "Everything should be up and running!"
echo ""