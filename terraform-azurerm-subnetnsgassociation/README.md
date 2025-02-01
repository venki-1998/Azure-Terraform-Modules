# Azure Subnet Network Security Group Association

This terraform configuration creates an Azure Subnet Network Security Group Association

### Refer below template for deployment:-

<pre>

module "terraform-azurerm-subnetnsgassociation" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>

### Required Inputs:-

These variables must be set in the module block when using this module.

| Name | Type |

|------|------|

| nsg_id| string

| subnet_id|string




### Outputs:-

| Name |

|------|

nsgassociation_id

For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_network_security_group_association)
