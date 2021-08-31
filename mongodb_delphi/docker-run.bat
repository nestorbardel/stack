rem funciona: docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=root -d mydocker/mysql:1.0.0
rem  docker run -ti -v f:/docker/mongodb/data:/data/db --name grupoagni-mongodb grupoagni/mongo:1.0.0 mongo
docker run -v //Mercurio/mongo/data:/data/db -p 27017:27017 --name grupoagni-mongodb grupoagni/mongo:1.0.0