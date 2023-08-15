#!/usr/bin/env bash

export IMAGE_NAME=zcloudws/zcloud-br-workshop-2023-08

docker push "${IMAGE_NAME}:html-static"
docker push "${IMAGE_NAME}:java-big-layers-big"
docker push "${IMAGE_NAME}:java-big-layers-small"
docker push "${IMAGE_NAME}:java-big-layers-multi"
