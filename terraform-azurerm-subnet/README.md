# Azure Subnet

This terraform configuration creates an Azure Subnet on Azure

### Refer below template for deployment:-

<pre>

module "terraform-azurerm-subnet" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>

### Required Inputs:-

These variables must be set in the module block when using this module.

| Name | Type |

|------|------|
| resource_group_name          | string

| subnet_address| list(string)

| subnet_name| string

| vnet_name| string


### Optional Inputs:-

These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.

| Name | Type |

|------|------|

| private_endpoint_network_policies_enabled| bool

| service_endpoints| list(string)


### Outputs:-

| Name |

|------|

subnet_id

subnet_name

For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet)
