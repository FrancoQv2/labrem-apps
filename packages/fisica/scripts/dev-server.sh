#!/bin/bash

# sudo chmod 777 scripts/dev-server.sh
# ./scripts/dev-server.sh

IMAGE_NAME=dev-server
CONTAINER_NAME=dev-server
NETWORK_NAME=labrem-net

docker rm -f $CONTAINER_NAME
docker rmi $IMAGE_NAME

docker build -f server/Dockerfile.dev -t $IMAGE_NAME server

docker run -ti --name $CONTAINER_NAME -v $(pwd)/server:/usr/src/server -p 3031:3000 --network $NETWORK_NAME $IMAGE_NAME

# docker build -f server/Dockerfile.dev -t dev-server:latest server
# docker run -ti --name dev-teleco -v $(pwd)/server:/usr/src/server -p 3030:3000 --network labrem-net dev-server:latest


# Fisica
# cd labrem/fisica
# docker build -f server/Dockerfile.dev -t dev-fisica:latest server
# docker run -ti --name dev-fisica -v $(pwd)/server:/usr/src/server -p 3032:3000 --network labrem-net dev-fisica:latest