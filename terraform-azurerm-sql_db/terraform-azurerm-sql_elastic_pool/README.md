# Azure MSSQL Elastic Pool
This terraform configuration creates an   Azure  MSSQL Elastic Pool on Azure

### Refer below template for deployment:-

<pre>

module "terraform-azurerm-sql_elastic_pool" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| sqlpool_tags | map(any)


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|

| capacity | string

| family | string

| license_type | string

| location | string

| max_capacity | string

| max_size_gb | string

| min_capacity | string

| mssql_server_name | string

| resource_group_name | string

| sku_name | string

| sql_elasticpool_name | string

| tier | string



### Outputs:-


| Name |

|------|

SQLpool_id

SQLpool_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_elasticpool).
