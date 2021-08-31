#!/bin/bash
VERSION=1.0.0

docker build --build-arg VERSION=$VERSION -t "grupoagni/redis:$VERSION" -f Dockerfile .
