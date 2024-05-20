#!/bin/bash
docker build -t myregistry/test-python:latest -f docker/Dockerfile.python .
docker build -t myregistry/test-javascript:latest -f docker/Dockerfile.javascript .
docker build -t myregistry/test-java:latest -f docker/Dockerfile.java .
