# Azure Virtual Network

This terraform configuration creates an Azure Virtual Network on Azure

### Refer below template for deployment:-

<pre>

module "terraform-azurerm-virtualnetwork" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>

### Required Inputs:-

These variables must be set in the module block when using this module.

| Name | Type |

|------|------|
| address_space|  list(string)

| location| string

| resource_group_name| string

| vnet_name| string

| vnet_tags| map(any)




### Optional Inputs:-

These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.

| Name | Type |

|------|------|

| dns_servers| list(string)



### Outputs:-

| Name |

|------|

vnet_id

vnet_name

For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network).
