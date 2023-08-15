#!/usr/bin/env bash

. ./config

echo "Listen on http://localhost:8080"
docker run -p 8080:80 --rm -it --name "${IMAGE_TAG}" "${IMAGE_NAME}:${IMAGE_TAG}"
