
set VERSION=1.0.0
rem docker login -u amadeorubenamado -p Titarelli123
docker build --build-arg VERSION=$VERSION -t "grupoagni/elastic_search:%VERSION%" -f Dockerfile .

