#!/bin/bash

#@ descript:
# This a wrapper to run "appcfg.py update" on docker.
#
# @usage: deploy.sh APP_NAME VERSION
#

#@ define:
APP_NAME=${1} #@ --name, your application name.
VERSION=${2} #@ --version, your application version.
WK_DIR=$(cd $(dirname $0);pwd)
IMAGE_NAME=koduki/sdk-gae_go

#@ main:
mkdir -p home
docker run --rm -v ${WK_DIR}/app:/app -v ${WK_DIR}/home:/root $IMAGE_NAME appcfg.py --noauth_local_webserver -A $APP_NAME -V $VERSION update /app/
