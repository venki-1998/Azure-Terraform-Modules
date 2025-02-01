# Azure MSSQL Server

This terraform configuration creates an Azure MSSQL Server on Azure

### Refer below template for deployment:-

<pre>

module "terraform-azurerm-sql-server" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| identityid | string

| key_id | string

| location | string

| mssql_server_name | string

| mssqlserver_tags | map(any)

| resource_group_name | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|

| administrator_login | string

| administrator_login_password | string

| identity_type | string

| public_enabled | bool

| sqlsvr_version | string

| tls_version | string


### Outputs:-


| Name |

|------|

mssql_server_id

mssql_server_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_server).
