#!/usr/bin/env bash

. ./config

docker build -t "${IMAGE_NAME}:${IMAGE_TAG}-big" -f big.dockerfile ${1} .
docker build -t "${IMAGE_NAME}:${IMAGE_TAG}-small" -f small.dockerfile ${1} .
docker build -t "${IMAGE_NAME}:${IMAGE_TAG}-multi" -f multi-stage.dockerfile ${1} .
