
set VERSION=2.0.0
rem docker login -u amadeorubenamado -p Titarelli123
docker build --build-arg VERSION=$VERSION -t "grupoagni/apache_delphi:%VERSION%" -f Dockerfile .

