
# Azure Network Interface


This terraform configuration creates an Azure Network Interface on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-networkinterface" {
  source             = ""
  version            = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|
| location  | string
| nic_name  | string
| rg_name   | string

| subnet_id | string
| nic_tags  | map(any)


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|
| ipconfig           | string
| private_ip         | string

| private_ip_address | string


### Outputs:-


| Name |

|------|

ip_add

nic_id

nic_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface).
