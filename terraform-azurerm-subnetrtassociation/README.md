
# Azure Subnet Network Route Table Association

This terraform configuration creates an Azure Subnet Network Route Table Association

### Refer below template for deployment:-

<pre>

module "terraform-azurerm-subnetrtassociation" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>

### Required Inputs:-

These variables must be set in the module block when using this module.

| Name | Type |

|------|------|

| rt_id| string

| subnet_id |string




### Outputs:-

| Name |

|------|

associationout_id

For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_route_table_association)
