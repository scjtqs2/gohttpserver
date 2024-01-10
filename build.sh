#!/bin/bash
#docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
docker buildx create --use --name mydevbuilder
docker buildx build --tag scjtqs/gohttpserver:latest  --platform linux/amd64,linux/arm64,linux/386,linux/arm/v7,linux/arm/v6,linux/ppc64le,linux/s390x --push -f docker/Dockerfile.alpine .
docker buildx rm mydevbuilder