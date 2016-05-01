#!/bin/bash

#@ descript:
# This a wrapper to run "bash" on docker.
#
# @usage: run.sh
#

#@ define:
WK_DIR=$(cd $(dirname $0);pwd)
IMAGE_NAME=koduki/sdk-gae_go

#@ main:
mkdir -p home
docker run -it --rm -p 8080:8080 -v ${WK_DIR}/app:/app -v ${WK_DIR}/home:/root ${IMAGE_NAME} /bin/bash
