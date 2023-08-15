#!/usr/bin/env bash

. ./config

docker build -t "${IMAGE_NAME}:${IMAGE_TAG}" .
