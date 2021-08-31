
rem  funciona: docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=root -d mydocker/mysql:1.0.0
docker run -p 27017:27018 -v f:/docker/mysql/data:/var/lib/mysql --name grupoagni-mysql -d grupoagni/mysql:1.0.0