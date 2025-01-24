# Azure Logic App Standard


This terraform configuration creates an  Azure Logic App Standard

on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-logicapp" {
  source  = ""
  version = ""
  # insert required variables here

}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| app_service_plan_id | string

| location | string

| logic_app_name | string

| logic_app_tags | map(any)

| rg_name | string

| storage_account_access_key | string

| storage_account_name | string

| virtual_network_subnet_id | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|

| enabled | bool

| https_only | bool

| identity_ids | list

| identity_type | string


### Outputs:-


| Name |

|------|

logicapp_id

logicapp_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/logic_app_standard).
