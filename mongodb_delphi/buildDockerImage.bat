set VERSION=1.0.0
docker build --build-arg VERSION=$VERSION -t "grupoagni/mongo_delphi:%VERSION%" -f Dockerfile .
