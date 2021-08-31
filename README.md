# Stack for Delphi proyect

## Installation

clone from https://github.com/Amadeo/delphi_stack
cd [folder where you clone the code stack]
cd ./apache2.4+php

./buildDockerImage.sh

### Build API GW Image

cd .. 

cd ./apache_apigateway

./buildDockerImage.sh


### Build Microservice-Search Image

cd .. 

cd ./apache_microservice_search

./buildDockerImage.sh


### Build ElasticSearch Image

cd .. 

cd ./elastic_search

./buildDockerImage.sh


### Build MongoDB Image

cd .. 

cd ./mongodb

./buildDockerImage.sh

restore the databases  warehouse_campaignID and hq_datawarehouse inside of the container

mongorestore --gzip --archive=hq_datawarehouse.archive.gz

mongorestore --gzip --archive=ewarehouse_campaignID.archive.gz



### Build MySQL Image

cd .. 

cd ./mysql

./buildDockerImage.sh

restore mysql database inside of the container

mysql -u root -p password < cs_vote.sql



### Build Redis Image

cd .. 

cd ./redis

./buildDockerImage.sh


cd ..



### Build Delphi Web Image

cd .. 

cd ./web

./buildDockerImage.sh

cd ..


### Deploy the Stack

Edit docker-compose.yml with your files locations

./run.sh



## For create local indices

cd ./elasticsearch_indexing/config


### Edit default.json

{
    "elasticsearch": {
        "url":"http://127.0.0.1:",
        "port":"9200",
        "elasticsearchIndices": {
            "COLLECTION": {
              "index":"warehouse_5cd00dc877ed980f69410932.rnc_voter", // modify this line mongo database and collection
              "type":"_doc",
              "collectionName":"rnc_voter" // modify this line with the mongodb collection
            }
        }
    },
    "mongodb": { // check mongodb connection
      "url": "mongodb://",
      "username":"",
      "password":"",
      "server_ip":"137.71.42.119",
      "local_server_ip":"localhost",
      "port":"27017",
      "databaseName":"warehouse_5cd00dc877ed980f69410932"
    }
}
### run 

npm install

node app.js //for create the collections

# stack
# stack
