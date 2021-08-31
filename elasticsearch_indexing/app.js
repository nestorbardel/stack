var indexer = require('./indexer.js');

var config = require ('config');

var indexname = config.elasticsearch.elasticsearchIndices.COLLECTION.index;
var indextype = config.elasticsearch.elasticsearchIndices.COLLECTION.type;
var tableName = config.elasticsearch.elasticsearchIndices.COLLECTION.collectionName;

indexer.IndexMongodbData(indexname,indextype,tableName); //Inserting bulk data into Elasticsearch, Kibana from mongodb
// indexer.DeleteMappings(indexname);  //Deleting bulk data from Elasticsearch, Kibana from mongodb

