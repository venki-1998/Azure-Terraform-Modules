resource "azurerm_cosmosdb_mongo_database" "mongodb" {
  name                = var.mongo_database_name
  resource_group_name = var.resource_group_name
  account_name        = var.account_name
  throughput          = var.throughput
}
