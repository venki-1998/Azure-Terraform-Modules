output "mongo_collection" {
value = azurerm_cosmosdb_mongo_collection.dbcollection[*].name
}

output "mongo_collection_id" {
value = azurerm_cosmosdb_mongo_collection.dbcollection[*].id
}
