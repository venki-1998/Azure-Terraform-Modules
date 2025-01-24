
# Azure Mysql Flexible Server


This terraform configuration creates an Azure  Mysql Flexible Server on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-mysqlflexibleserver" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| identity_ids | list
| identity_type |  string

| iops | number

| key_vault_key_id | string

| location | string

| login | string

| mysql_tags | map(any)

| mysql_version | string

| mysqlflexible_server_name | map(any)

| password | string

| pdnszone_id | string

| resource_group_name | string

| retention_days | number

| size_gb | number

| sku | string

| subne_id | string

| zone | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|

| high_availability | map(any)

| zone | string


### Outputs:-


| Name |

|------|

mysql_flexible_id

mysql_flexible_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mysql_flexible_server).
