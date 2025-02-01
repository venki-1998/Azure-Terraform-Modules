
# Azure Network Security Group


This terraform configuration creates an Azure Network Security Group on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-networksecuritygroup" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| location | string

| nsg_name | string

| nsg_rules | map(object({}))

| nsg_tags | map(any)

| resource_group_name | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|

| default_nsg_rules | map(object({}))

| subent_ip | list(string)


### Outputs:-


| Name |

|------|

nsg_id

nsg_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group).
