
# Azure MSSQL Database
This terraform configuration creates an   Azure MSSQL Database on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-sql_db" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| elastic_pool_id | string

| server_id | string

| sqldb_tags | map(any)

| rg_name | string

| subdomain | string

| tags | map(any)


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|

| create_mode | string

| max_size_gb | string

| read_scale | string

| sku_name | string

| sql_database_name | string

| zone_redundant | string



### Outputs:-


| Name |

|------|

SQLdb_id

SQLdb_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_database).
