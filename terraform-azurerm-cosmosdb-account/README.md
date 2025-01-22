# Azure CosmosDB Account


This terraform configuration creates an Azure CosmosDB Account on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-cosmosdb-account" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| backup_enabled | bool

| backup_interval | map(any)

| backup_redundancy | string

| backup_retention | string

| consistency_level | list(string)

| cosmosdb_account_name | string

| cosmosdb_tags | map(any)

| enable_automatic_failover | bool

| enable_free_tier | bool

| enable_multiple_write_locations | bool

| geo_locations | map(any)

| is_virtual_network_filter_enabled | bool

| key_vault_key_id | string

| kind | string

| location | string

| max_interval_in_seconds | string

| max_staleness_prefix | string

| mongo_server_version | string

| offer_type | string

| resource_group_name | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|

| capabilities | string


### Outputs:-


| Name |

|------|

cosmosdb_id

cosmosdb_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cosmosdb_account)
