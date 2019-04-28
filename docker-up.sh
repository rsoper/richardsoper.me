#!/bin/bash

echo ""
echo "Bringing the stack up"
echo ""

docker-compose -f ~/docker/docker-compose.yml up -d

echo ""
echo "Correcting Ghost DB configuration"
echo ""

docker cp ~/docker/config.production.json ghost:/var/lib/ghost/config.production.json
docker restart ghost

echo ""
echo "Ghost should be up and running from the proper DB"
echo ""
echo "Everything should be up and running!"
echo ""