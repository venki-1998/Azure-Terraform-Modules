# Azure Postgresql Flexible Server

This terraform configuration creates an Azure  Postgresql Flexible Server on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-postgreflexible" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| dns_zone_id | string
| high_availability |  map(object({}))

| identity_id | list

| identity_type | string

| key_id | string

| location | string

| password | string

| postgre_server_name | string

| postgre_tags | map(any)

| postgre_version | string

| resource_group_name | string

| retention_days | string

| sku | string

| storage_mb | number

| subnet_id | string

| username | string

| zone | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|


### Outputs:-


| Name |

|------|

postgreout_id

postgreout_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/postgresql_flexible_server_configuration).
