# Azure CosmosDB Mongo Collection


This terraform configuration creates an Azure CosmosDB Mongo Collection on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-cosmosdb-mongo-collection" {
  source  = ""
  version = ""
  # insert required variables here

}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| cosmosdb_account_name | string

| cosmosdb_mongo_database_name | string

| mongo_collection_name | string

| resource_group_name | string
| nic_tags  | map(any)


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|

| shard_key | string

| throughput | string

| ttl_seconds | string


### Outputs:-


| Name |

|------|

mongo_collection

mongo_collection_id


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cosmosdb_mongo_collection).
