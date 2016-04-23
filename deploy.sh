#!/bin/bash

WK_DIR=$(cd $(dirname $0);pwd)

APP_NAME=$1
VERSION=$2

IMAGE_NAME=koduki/dev-docker-gcp 

mkdir -p home
docker run --rm -v ${WK_DIR}/app:/app -v ${WK_DIR}/home:/root $IMAGE_NAME appcfg.py --noauth_local_webserver -A $APP_NAME -V $VERSION update /app/
