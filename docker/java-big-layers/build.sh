#!/usr/bin/env bash

. ./config

docker build -t "${IMAGE_NAME}:${IMAGE_TAG}-big" -f big.dockerfile .
docker build -t "${IMAGE_NAME}:${IMAGE_TAG}-small" -f small.dockerfile .
docker build -t "${IMAGE_NAME}:${IMAGE_TAG}-multi" -f multi-stage.dockerfile .
