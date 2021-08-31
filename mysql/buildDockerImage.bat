set VERSION=1.0.0
docker build --build-arg VERSION=$VERSION -t "grupoagni/mysql:%VERSION%" -f Dockerfile .
