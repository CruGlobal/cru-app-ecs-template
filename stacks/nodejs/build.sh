#!/usr/bin/env bash
# Builds the Docker image. CI (.github/workflows/build-deploy-ecs.yml)
# runs this; you can run it locally too. Passes the Node version from
# .tool-versions so the image matches your toolchain.

docker buildx build $DOCKER_ARGS \
  --build-arg NODE_VERSION=$(grep nodejs .tool-versions | awk '{ print $NF }' | cut -d'.' -f1) \
  .
