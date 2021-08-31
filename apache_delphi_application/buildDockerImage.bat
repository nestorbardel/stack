set VERSION=2.0.0.delphi
docker build --build-arg VERSION=$VERSION -t "grupoagni/apache:%VERSION%" -f Dockerfile .
