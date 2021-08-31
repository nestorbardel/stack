#!/bin/bash
VERSION=2.0.0
docker build --build-arg VERSION=$VERSION -t "grupoagni/apache_delphi_application:$VERSION" -f Dockerfile .