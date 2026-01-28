#!/usr/bin/env bash

docker buildx build $DOCKER_ARGS \
  --build-arg RUBY_VERSION=$(grep ruby .tool-versions|awk '{ print $NF }') \
  .
