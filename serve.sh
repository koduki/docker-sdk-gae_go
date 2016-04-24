#!/bin/bash

WK_DIR=$(cd $(dirname $0);pwd)
IMAGE_NAME=koduki/dev-docker-gcp 

mkdir -p home
docker run -it --rm -p 8080:8080 -v ${WK_DIR}/app:/app -v ${WK_DIR}/home:/root $IMAGE_NAME goapp serve --host=0.0.0.0 /app
