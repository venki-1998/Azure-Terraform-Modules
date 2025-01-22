resource "azurerm_cosmosdb_mongo_collection" "dbcollection" {
  name                = var.mongo_collection_name
  resource_group_name = var.resource_group_name
  account_name        = var.cosmosdb_account_name
  database_name       = var.cosmosdb_mongo_database_name

  default_ttl_seconds = var.ttl_seconds
  shard_key           = var.shard_key 
  throughput          = var.throughput

  index {
    keys   = ["_id"]
    unique = true
  }
}
