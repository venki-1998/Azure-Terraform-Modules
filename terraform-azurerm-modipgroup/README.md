

# Azure Ip Group


This terraform configuration creates an Azure Ip Group on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-modipgroup" {
  source  = ""
  version = "
  # insert required variables here

}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| ip_group_cidr_range | list(string)

| ip_group_name | string

| rg_location | string

| rg_name | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|


### Outputs:-


| Name |

|------|


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/ip_group).
