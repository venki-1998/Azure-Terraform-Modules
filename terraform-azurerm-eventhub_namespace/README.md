
# Azure EventHub Namespace


This terraform configuration creates an Azure EventHub Namespace on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-eventhub_namespace" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| eventhub_tags | map(any)

| location | string

| namespace_name | string

| rg_name | string

| sku | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|

| capacity | string

| identity_ids | list

| local_authentication_enabled | bool

| public_enabled | string

| type | string

| user_assigned_identity_id | string

| zone_redundant | string



### Outputs:-


| Name |

|------|

eventhub_namespace_id

eventhub_namespace_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/eventhub_namespace).
