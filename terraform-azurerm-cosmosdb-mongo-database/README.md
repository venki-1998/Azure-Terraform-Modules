# Azure CosmosDB Mongo Database


This terraform configuration creates an Azure CosmosDB Mongo Database on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-cosmosdb-mongo-database" {
  source  = ""
  version = ""
  # insert required variables here

}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| account_name | string

| mongo_database_name | string

| resource_group_name | string

| throughput | string


### Outputs:-


| Name |

|------|

mongodb_id

mongodb_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cosmosdb_mongo_database).
