#!/bin/bash

#@ descript:
# This a wrapper to run "goapp serve" on docker.
#
# @usage: serve.sh
#

#@ define:
WK_DIR=$(cd $(dirname $0);pwd)
IMAGE_NAME=koduki/sdk-gae_go

#@ main:
echo "Local server is 'http://"`docker-machine ip`":8080'"
echo ""

mkdir -p home
docker run -it --rm -p 8080:8080 -v ${WK_DIR}/app:/app -v ${WK_DIR}/home:/root $IMAGE_NAME goapp serve --host=0.0.0.0 /app
