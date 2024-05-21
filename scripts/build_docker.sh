#!/bin/bash

set -a
. ./config/app.env
set +a

docker build -t $DOCKER_USERNAME/test-python:latest -f docker/Dockerfile.python .
docker build -t $DOCKER_USERNAME/test-javascript:latest -f docker/Dockerfile.javascript .
docker build -t $DOCKER_USERNAME/test-java:latest -f docker/Dockerfile.java .

docker push $DOCKER_USERNAME/test-python:latest
docker push $DOCKER_USERNAME/test-javascript:latest
docker push $DOCKER_USERNAME/test-java:latest