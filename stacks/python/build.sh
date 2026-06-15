#!/usr/bin/env bash
# Builds the Docker image. CI (.github/workflows/build-deploy-ecs.yml)
# runs this; you can run it locally too. Passes the Python version from
# .tool-versions so the image matches your toolchain.

docker buildx build $DOCKER_ARGS \
  --build-arg PYTHON_VERSION=$(grep python .tool-versions | awk '{ print $NF }' | cut -d'.' -f1-2) \
  .
