variable "mongo_collection_name" {
  type = string
  description = "(Required) Specifies the name of the Cosmos DB Mongo Collection. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  type = string
  description = "(Required) The name of the resource group in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created."
}

variable "cosmosdb_account_name" {
  type = string
  description = "(Required) The name of the Cosmos DB Account in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created."
}

variable "cosmosdb_mongo_database_name" {
   type = string
   description = "(Required) The name of the Cosmos DB Mongo Database in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created."
}

variable "ttl_seconds" {
    type = string
    default = null
    nullable = true
    description = "(Optional) The default Time To Live in seconds. If the value is -1, items are not automatically expired."
}

variable "shard_key" {
  type = string
  default = null
  nullable = true
  description = "(Optional) The name of the key to partition on for sharding. There must not be any other unique index keys. Changing this forces a new resource to be created."
}

variable "throughput" {
   type = string
   default = null
   nullable = true
   description = " (Optional) The throughput of the MongoDB collection (RU/s). Must be set in increments of 100. The minimum value is 400. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply."
}
